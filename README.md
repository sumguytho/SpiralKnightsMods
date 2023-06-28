## Compiling the mods

Building the project is somewhat obscure. I've used eclipse's java compiler
to make jar archive because javac fails maybe due to severe obfuscation (some
identifiers are actual keywords meaning one would never be able to use them in
java sources), maybe because eclipse just uses compile options I'm unaware of.

**Steps to build mods:**

 1. open this repository as a workplace in Eclipse and build all projects in it
 2. setup symlinks in repository root
 - - `/path/to/project/jdk` - should point to a JDK
 - - `/path/to/project/spiral_shared` - should point to Spiral Knights installation directory
 - - `/path/to/project/krakatau` - should point to a cloned [Krakatau](https://github.com/Storyyeller/Krakatau) repository
 3. run `./make_jars.py`

`./make_jars.py` will output jar files to `spiral_shared/code-mods` overriding
previous versions of built jars.

Symlinks are created using `ln -s` on Unix-like systems and `mklink /d` on Windows.

## Launching Spiral Knights with mods

All mods should be placed in `/path/to/project/spiral_shared/code-mods`, a.k.a. in
directory code-mods in Spiral Knights installation directory.

`cmd_launch.py` can be used to launch Spiral Knights with mods on both Windows
and Unix-like OSes. What it does is that it prepends everything that has jar
extension in directory code-mods in Spiral Knights installation directory to
the classpath and launches the game. It bypasses getdown for the sake of
simplicity. The script first tries to resolve symlink `jre`
which should point to a JRE installation directory, if it doesn't exist it uses
whatever JVM the Spiral Knights installation points to.

Launching on Windows should be as easy as double clicking the file, if that
doesn't work one can launch it using cmd: `py cmd_launch.py`. In that case the
current working directory should be the one containing the script. On Unix-like
systems one can just execute `python3 cmd_launch.py` in the terminal emulator of choice.

`cmd_launch.py` requires `spiral_shared` symlink (see above).

Alternatively one can use [yihleego's launcher](https://github.com/spiralstudio/mods),
I didn't test it but it *should* work.

## Dependencies

 - Eclipse JDT 2022-12 R - i use its compiler because javac just doesn't do it
 - JDK / JRE - should work with JVM the Spiral Knights is shipped with, although i use
 - - JDK: openjdk-11.0.19.0.7-1.x86_64; JRE: openjdk-1.8.0.362.x86_64 - for Linux
 - - JRE: Oracle's jre1.8.0_311.x86 - for Windows
 - Python 3.8.5 - for scripts, it should probably work with earlier versions it's just the one i use
 - Krakatau - the one i use is at commit ea9b62d01e53e3ab3de4731e79af2eb7b0fa3766

## Notes

Suffix `__Callback` in function name indicates that a function is a hook
which is called from some overridden class. Main uses for those are:

 - capturing private class fields
 - intercepting methods calls
 - providing an entry point for external code

## Possible improvements (TODO?, i'm still figuring stuff out)

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

#### maybe I could use make / bitbake or some other established thing for building
