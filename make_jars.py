#!/bin/env python3

import sys
import os
import argparse
import glob
import enum
import pathlib
import shutil
import subprocess
import logging


logger = logging.getLogger(__name__)


class BuildEnv:

    class PathType(enum.Enum):
        FILE = "file"
        SYM = "symlink"
        DIR = "directory"

    class Error(Exception):
        pass
    
    @staticmethod
    def subprocess_call(cmd):
        logger.debug(f"Launching subprocess {cmd}")
        ret = subprocess.run(cmd)
        logger.debug(f"Subprocess returned with code {ret.returncode}")

    @staticmethod
    def expand_wildcards(wildcards):
        if not isinstance(wildcards, list):
            wildcards = list(wildcards)
        res = list()
        for wildcard in wildcards:
            wildcard_res = glob.glob(wildcard)
            res += wildcard_res
            logger.debug(f"Expanded {wildcard} into {wildcard_res}")
        return res

    def __init__(self):
        # krakatau symlink
        self.KRAKATAU = "krakatau"
        # spiral knights installation symlink
        self.SPIRAL = "spiral_shared"

        self.JDK = "jdk"
        self.JDK_JAR = os.path.join(JDK, "bin", "jar")
        self.KRAKATAU_ASSEMBLE = os.path.join(KRAKATAU, "assemble.py")

        self.DISCOVER_DIR = "."
        self.BUILD_DIR = "build"
        self.DEPLOY_DIR = os.path.join(SPIRAL, "code-mods")

    def check(self):
        self.__check_path(self.DEPLOY_DIR, PathType.DIR)
        self.__check_path(self.JDK_JAR, PathType.FILE)
        self.__check_path(self.KRAKATAU_ASSEMBLE, PathType.FILE)
        logger.debug("Path check succeeded")

    def __check_path(self, path, path_type):
        match path_type:
            case PathType.FILE:
                check_func = os.path.isfile
            case PathType.SYMLINK:
                check_func = os.path.islink
            case PathType.DIR:
                check_func = os.path.isdir

        if not check_func(path):
            raise Error(f"Path {path} is not a {path_type}")

    def compile_krakatau_sources(self, dir_out, sources):
        sources = expand_wildcards(sources)
        __compile_krakatau_sources(dir_out, sources)

    def __compile_krakatau_sources(self, dir_out, sources):
        cmd_base = [KRAKATAU_ASSEMBLE, "-out", dir_out]
        for source in sources:
            subprocess_call(cmd_base + [source])

    def make_jar(self, filename, contents):
        contents = expand_wildcards(contents)
        ___make_jar(filename, contents)

    def ___make_jar(self, filename, contents):
        cmd_base = [self.JDK_JAR, "-cf", filename]
        cmd_contents = list()
        for jar_entry in contents:
            entry_dir, entry_file = os.path.split(jar_entry)
            cmd_contents += ["-C", entry_dir, entry_file]
        subprocess_call(cmd_base + cmd_contents)


class JarBlueprint:
    def __init__(self, name, mod_dir, build_env):
        self._name = name
        self._mod_dir = mod_dir
        self._build_env = build_env
        self._gather_dirs = [os.path.join(mod_dir, "bin", "*")]

    def make_jar(self):
        build_dir = os.path.join(self._build_env.BUILD_DIR, self._name)
        build_dir = pathlib.Path(build_dir)
        if build_dir.exists():
            logger.debug(f"Directory {build_dir} exists, removing it")
            shutil.rmtree(build_dir)
        build_dir.mkdir(parents=True, exist_ok=True)
        logger.debug(f"Successfully created build path {build_dir}")

        krakatau_src_dir = os.path.join(self._mod_dir, "krakatau")
        if os.path.isdir(krakatau_src_dir):
            krakatau_sources = os.path.join(krakatau_src_dir, "*")
            krakatau_dst_dir = build_dir
            self._build_env.compile_krakatau_sources(krakatau_dst_dir, krakatau_sources)
            self._gather_dirs.append( os.path.join(krakatau_dst_dir, "*") )

        dst_file = os.path.join(self._build_env.DEPLOY_DIR, f"{self._name}.jar")
        logger.debug(f"Gathered directories for {self._name} are {self._gather_dirs}")
        self._build_env.make_jar(dst_file, self._gather_dirs)
        logger.info(f"Successfully created mod {self._name}, file: {dst_file}")


class JarTargets:

    class Error(Exception):
        pass

    def __init__(self, build_env):
        self._blueprints = dict()
        self.__discover_mods(self._blueprints, build_env.DISCOVER_DIR, build_env)
        self._build_env = build_env

    def get_targets_list(self):
        return list(self._blueprints.keys()) + ["all"]

    def make_target(self, blueprints):
        if blueprints == "all":
            blueprints = self._blueprints.keys()
        elif not isinstance(blueprints, list):
            blueprints = list(blueprints)
        __make_targets(blueprints)

    def __make_targets(self, targets):
        for target in targets:
            blueprint = self._blueprints.get(target)
            if not blueprint:
                raise Error(f"Target {target} not found")
            logger.debug(f"Building target {target}")
            blueprint.make_jar()

    def __discover_mods(self, dest_dict, discover_dir, build_env):
        discover_dir = os.path.join(discover_dir, "*", "spiral")
        symlink_owners = BuildEnv.expand_wildcards(discover_dir)
        for symlink_owner in symlink_owners:
            mod_dir = os.path.split(symlink_owner)[0]
            mod_name = os.path.split(mod_dir)[1].lower()
            logger.debug(f"Discovered mod {mod_name} in {mod_dir}")
            dest_dict[mod_name] = JarBlueprint(mod_name, mod_dir, build_env)


def main(argv):
    parser = argparse.ArgumentParser(description="A script for building code mods from compiled Eclipse classes and Krakatau sources")
    parser.add_argument("-l", "--list", action="store_true", description="list available build targets")
    parser.add_argument("-v", "--verbose", action="store_true", description="output more info while building mods")
    parser.add_argument("target", type=str, default="all", description="name of a mod to build")
    args = parser.parse_args(argv)

    try:
        if args.verbose:
            logger.setLevel(logging.DEBUG)
        else:
            logger.setLevel(logging.INFO)
        build_env = BuildEnv()
        build_env.check()
        targets = JarTargets(build_env)

        if args.list:
            targets_list = " ".join( targets.get_targets_list() )
            logger.info(f"Available build targets are: {targets_list}")
        else:
            targets.make_target(args.target)
        
        logger.info(f"Successfully built target {args.target}")
    except Exception as e:
        logger.error(f"An error occurred: {str(e)}")

if __file__ == "__main__":
    sys.exit( main(sys.argv) )
