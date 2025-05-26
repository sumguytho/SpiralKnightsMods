## Compiling the mods

Building the project is somewhat obscure. I've used eclipse's java compiler
to make jar archive because javac fails maybe due to severe obfuscation (some
identifiers are actual keywords meaning one would never be able to use them in
java sources), maybe because eclipse just uses compile options I'm unaware of.

**Steps to build mods:**

 1. add this repository to a workplace in Eclipse
 2. setup symlinks in repository root
 - - `/path/to/project/jdk` - should point to a JDK
 - - `/path/to/project/spiral_shared` - should point to Spiral Knights installation directory
 - - `/path/to/project/krakatau` - should point to a cloned [Krakatau](https://github.com/Storyyeller/Krakatau) repository
 3. build all mods in Eclipse
 4. run `./make_jars.py`

`./make_jars.py` will output jar files to `spiral_shared/code-mods` overriding
previous versions of built jars.

Symlinks are created using `ln -s` on Unix-like systems and `mklink /d` on Windows.

## Launching Spiral Knights with mods

### Quickstart

 1. Download mods-\<version\>.zip
 2. Extract folder mods-\<version\>
 3. Copy contents of mods-\<version\> to Spiral Knights directory
 4. Double click cmd_launch.bat on Windows or cmd_launch.sh on Linux distro
 5. Type `/mods list` in game chat to check whether the mods have been loaded

### Explanations

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
Convenience scripts cmd_launch.sh and cmd_launch.bat can be double clicked to do the same.

All in all, just create a symlink `spiral_shared` that point to Spiral Knights installation
directory and run `cmd_launch.py`.

`The mods in this repository don't work with yihleego's implementation of code mods in Knight Launcher.`
This is because I use different logic for mods building which is inherently incompatible with his. I'm
not migrating to mods implementation of Knight Launcher because neither my nor its implementation is
supportable in the long run. Once a supportable option is established, I will.

## Dependencies

 - Eclipse JDT 2022-12 R - I use its compiler because javac just doesn't do it
 - JDK / JRE - should work with JVM the Spiral Knights is shipped with, although I use
 - - JDK: openjdk-11.0.19.0.7-1.x86_64; JRE: openjdk-1.8.0.362.x86_64 - for Linux
 - - JRE: Oracle's jre1.8.0_311.x86 - for Windows
 - Python 3.8.5 - for scripts, it should probably work with earlier versions it's just the one I use
 - Krakatau - the one I use is at commit ea9b62d01e53e3ab3de4731e79af2eb7b0fa3766
 - all of the jars from `Spiral Knights/code/`

## Mod commands

Each mod uses chat commands for controls, the chat commands are:

 * Mod Manager: /mod
 * HUD Hider: /hud
 * Flight: /flight

Type each command in game chat to see further description as to how to use
the mod.

## Notes

Suffix `__Callback` in function name indicates that a function is a hook
which is called from some overridden class. Main uses for those are:

 - capturing private class fields
 - intercepting methods calls
 - providing an entry point for external code

Now that I think about it, mods will never be compatible with Knight Launcher. Knight Launcher only loads code from mods
without resources and bootstrap code uses ProjectXApp directly which makes JVM load it immediately. The only solution
that I can think of currently would be to add code mods to classpath.

## Possible improvements (TODO?, I'm still figuring stuff out)

#### make mods usable for normal users

Right now the process is still impossible for usual folk.

#### make mods more supportable

The process should be:
 1. Produce deobfuscated projectx-pcode.jar.
 2. Apply mappings.
 3. Build mods against deobfuscated jar (mods should use deobfuscated namings).
 4. Apply inverse mappings to mods thus making them usable with obfuscated jar.

This way the source code uses normal names and output mods can be used with original jar without modification.
One potential problem is that when applying mapping through Enigma non-class contents are lost so rsrc from jars will be lost.

#### some other way of discovering mods

Will require making Mod an abstract class instead of interface.

#### migrate away from Eclipse JDT

Projects react to changes in referenced projects very slowly and sometimes don't react at all.
I can't use javac to compile stuff though, this only works in Eclipse for some reason.
Using deobfuscated jar should solve this.

#### hud hider doesn't work

The hud root is recreated between locations, it should be used as observer and not one time getter.
