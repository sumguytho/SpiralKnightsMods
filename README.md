## Compiling stuff

I used eclipse's java compiler to make jar archive because javac fails
maybe due to severe obfuscation (some identifiers are actual keywords
meaning one would never be able to use them in java sources), maybe because
eclipse just uses compile options i'm unaware of.

**Steps to build mods:**

 1. open this repository as workplace in Eclipse and build all projects in it
 2. setup symlinks in repository root
 - - jdk should point to a JDK (like `ln -s /usr/lib/jvm/java-11-openjdk jdk`)
 - - jre should point to a JRE (like `ln -s /usr/lib/jvm/jre-1.8.0-openjdk jre`)
 - - spiral_shared should point to Spiral Knights installation directory (like `ln -s /home/$USER/Apps/Spiral spiral_shared`)
 - - krakatau should point to a cloned [Krakatau](https://github.com/Storyyeller/Krakatau) repository (like `ln -s /home/$USER/work/java/Krakatau krakatau`)
 3. run `./make_jars.py`

`./make_jars.py` will output jar files to `spiral_shared/code-mods` overriding
previous versions of built jars.

## Notes

When adding mods to classpath keep in mind that JVM only considers
the first class implementation when traversing the classpath meaning mod jars
have to precede everything else.

Just in case, my eclipse version is `2022-12 R`, JRE i use to test mods is `openjdk-1.8.0.362.b09-2.fc37`.

Suffix `__Callback` in function name indicates that a function is a hook
which is called from some overridden class. Main uses for those are:

 - capturing private class fields
 - intercepting methods calls
 - providing an entry point for external code

## Possible improvements (TODO?)

#### use ASM framework to modify classes instead of Krakatau

This would eliminate the need to override classes in projectx-pcode.jar,
and as a consequence allow a completely standalone solution.

Not only does this allow multiple modifications to the same class coexist,
but, under certain circumstances, it might allow multiple modifications
to the same method (without performance implications in mind, that is) to
coexist peacefully.

One downside to this is that one can't use debbuger agent with ASM framework.

#### use org.reflections to detect new mods

Actually detecting classes that implement `Mod` interface (or maybe extend abstract
class `Mod` if that would prove to be useful in the future) would be a lot better
than specifying a list of classes to look for explicitly.

#### read mod name and version from mod.json

Would require refactoring `Mod` from interface to abstract class.

#### migrate away from Eclipse JDT

Projects react to changes in referenced projects very slowly and sometimes don't
react at all.

#### maybe a lex parser for chat commands
