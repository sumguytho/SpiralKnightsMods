#!/usr/bin/env python3

import typing as t
import sys
import argparse

world_class_template = '''\
package worldclass;

@imports@

// A placeholder for all the classes from pcode.
// Same idea as world build from yocto.
public class WorldClass {
@methods@
    public void nothing() {

    }
}
'''
import_template = "import @klass@;"
variable_template = "        Class<?> var_@counter@ = @klass@.class;"
# variable_template = "        Class<?>[] var_@counter@ = @klass@.class.getInterfaces();"
method_template = '''\
    public void method_@counter@(){
@variables@
    }
'''

class WorldClassBuilder:

    def __init__(self, variables_per_method=50):
        self.klasses: t.List[str] = []
        self.variables_per_method = variables_per_method

    def add_all(self, klasses: t.List[str]):
        self.klasses += klasses

    def add_class(self, klass):
        self.klasses.append(klass)

    def __make_import(self, klass) -> str:
        return import_template.replace("@klass@", klass)

    def __make_imports(self, klasses: t.List[str]) -> str:
        result = []
        for klass in klasses:
            result.append(self.__make_import(klass))
        return "\n".join(result)

    def __make_variable(self, klass, counter) -> str:
        return variable_template.replace("@klass@", klass).replace("@counter@", str(counter))

    def __make_variables(self, klasses: t.List[str]) -> str:
        result = []
        counter = 0
        for klass in klasses:
            result.append(self.__make_variable(klass, counter))
            counter += 1
        return "\n".join(result)

    def __make_method(self, variables: str, counter) -> str:
        return method_template.replace("@counter@", str(counter)).replace("@variables@", variables)

    def __make_methods(self, klasses: t.List[str]) -> str:
        result = []
        counter = 0
        slice_pos = 0
        klasses_len = len(klasses)
        while slice_pos < klasses_len:
            slice_size = min(self.variables_per_method, klasses_len - slice_pos)
            klasses_slice = klasses[slice_pos:slice_pos+slice_size]
            result.append(self.__make_method(self.__make_variables(klasses_slice), counter))
            slice_pos += slice_size
            counter += 1
        return "\n".join(result) + "\n"

    def __make_source_file(self, imports: str, methods: str) -> str:
        return world_class_template.replace("@imports@", imports).replace("@methods@", methods)

    def to_string(self):
        # imports = self.__make_imports(self.klasses)
        methods = self.__make_methods(self.klasses)
        return self.__make_source_file("", methods)

if __name__ =="__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--variables-per-method", type=int, default=50)

    args = parser.parse_args()

    world = WorldClassBuilder(args.variables_per_method)
    for line in sys.stdin:
        line = line.rstrip()
        if not line:
            continue
        world.add_class(line)
    print(world.to_string())
