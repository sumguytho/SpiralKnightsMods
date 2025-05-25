import os, glob, subprocess, platform, argparse
import shlex


def symlink_abspath(symlink, throw=True):
    if not os.path.islink(symlink):
        if not throw:
            return None
        raise Exception(f"File {symlink} either doesn't exist or isn't a symlink")
    return os.readlink(symlink)


def make_installation_jre_path(spiral_path, is_windows):
    vm_dirname = "java" + "_vm" * is_windows
    jre_path = os.path.join(spiral_path, vm_dirname)
    if not is_windows and os.path.islink(jre_path):
        jre_path = os.readlink(jre_path)
    if not os.path.isdir(jre_path):
        raise Exception(f"Directory {jre_path} doesn't exist and there is no jre symlink")
    return jre_path


def make_jre_path(spiral_path, is_windows):
    jre_path = symlink_abspath("jre", False)
    if not jre_path:
        return make_installation_jre_path(spiral_path, is_windows)
    return jre_path


def make_spiral_path():
    spiral_path = symlink_abspath("spiral_shared", False)
    if not spiral_path:
        return os.getcwd()
    return spiral_path


def make_classpath(code_dir, mods_dir, sep):
    # it feels like the order actually matters
    jars = [
        "config.jar",
        "projectx-config.jar",
        "projectx-pcode.jar",
        "lwjgl.jar",
        "lwjgl_util.jar",
        "jinput.jar",
        "jutils.jar",
        "jshortcut.jar",
        "commons-beanutils.jar",
        "commons-digester.jar",
        "commons-logging.jar",
    ]
    spiral_mods = glob.glob( os.path.join(mods_dir, "*.jar") )
    classpath = spiral_mods + [ os.path.join(code_dir, jar) for jar in jars ]
    return sep.join( classpath )


def make_extra_opts(spiral_path, use_jdwp, use_hotspot_opts, memspec):
    spiral_native = os.path.join(spiral_path, 'native')
    spiral_rsrc = os.path.join(spiral_path, 'rsrc')
    spiral_path = os.path.join(spiral_path, '.')
    opts = [
        f"-Dcom.threerings.getdown=true",
        f"-Djava.library.path={spiral_native}",
        f"-Dorg.lwjgl.util.NoChecks=true",
        f"-Dsun.java2d.d3d=false",
        f"-Dappdir={spiral_path}",
        f"-Dresource_dir={spiral_rsrc}",
        f"-Xmx{memspec}",
    ]
    if use_hotspot_opts:
        opts += [
            "-XX:+AggressiveOpts",
            "-XX:SoftRefLRUPolicyMSPerMB=10",
        ]
    if use_jdwp:
        opts.append("-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=localhost:8083")
    return opts


def win_rm_io_prefix(path):
    return path.replace("\\\\?\\", "")


def main():
    parser = argparse.ArgumentParser(prog="cmd_launch", description="a utility script that launches Spiral Knights with code mods bypassing getdown")
    parser.add_argument("--use-jdwp", action="store_true", default=False, help="start JVM with a JDWP agent that listens on localhost:8083 (remote debugging)")
    parser.add_argument("--hotspot-options", action="store_true", default=False, help="use -XX JVM options (heavily relies on JVM implementation)")
    parser.add_argument("--dry-run", action="store_true", default=False, help="print a list of strings that are going to be passed to subprocess and exit")
    parser.add_argument("--extra-args", default="", help="additional arguments to be passed to launch string")
    parser.add_argument("--memspec", default="2G", help="maximum memory allowed for JVM, passed to -Xmx directly, 2G by default")

    args = parser.parse_args()

    # worst case scenario but i'm not giving up, i came prepared, dammit
    is_windows = platform.system() == "Windows"
    pathspec_sep = ";" if is_windows else ":"

    spiral_path = make_spiral_path()
    jre_path = make_jre_path(spiral_path, is_windows)
    opts = make_extra_opts( spiral_path, args.use_jdwp, args.hotspot_options, args.memspec )
    extra_args = shlex.split(args.extra_args)
    classpath = make_classpath( os.path.join(spiral_path, "code"), os.path.join(spiral_path, "code-mods"), pathspec_sep )

    call_args = [ os.path.join(jre_path, "bin", "java"), "-classpath", classpath, *opts, *extra_args, "com.threerings.projectx.client.ProjectXApp" ]
    # JVM doesn't seem to like Windows I/O prefixes 
    if is_windows: call_args = [ win_rm_io_prefix(arg) for arg in call_args ]
    if args.dry_run:
        print(f"{spiral_path=}\n{jre_path=}")
        for arg in call_args:
            print("\t", arg)
    else:
        subprocess.run(call_args)


if __name__ == "__main__":
    exit(main())
