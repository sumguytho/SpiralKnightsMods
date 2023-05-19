## Compiling stuff

I used eclipse's java compiler to make jar archive because javac fails
maybe due to severe obfuscation (some identifiers are actual keywords
meaning one would never be able to use them in java sources), maybe because
eclipse just uses compile options i'm unaware of.

Anyway, just export an archive using eclipse (will have to add projectx-pcode.jar
to classpath through project perferences first), then use assemble.py from
[Krakatau](https://github.com/Storyyeller/Krakatau) on supplied .j files and
add resulting classes to exported jars. Keep in mind that JVM only considers
the first class implementation when traversing the classpath meaning mod jars
have to precede everything else.

Just in case, my eclipse version is `2022-12 R`, JVM i use to test mods is `openjdk-1.8.0.362.b09-2.fc37`.

## Possible improvements (TODO?)
---
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
