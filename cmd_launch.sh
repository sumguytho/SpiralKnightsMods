#!/bin/bash

java_path=jre
spiral_path=spiral_shared

extra_classes="$(echo $spiral_path/code-mods/*.jar | sed 's/ /:/g')"
classpath="\
$spiral_path/code/config.jar:\
$spiral_path/code/projectx-config.jar:\
$spiral_path/code/projectx-pcode.jar:\
$spiral_path/code/lwjgl.jar:\
$spiral_path/code/lwjgl_util.jar:\
$spiral_path/code/jinput.jar:\
$spiral_path/code/jutils.jar:\
$spiral_path/code/jshortcut.jar:\
$spiral_path/code/commons-beanutils.jar:\
$spiral_path/code/commons-digester.jar:\
$spiral_path/code/commons-logging.jar\
"
opts="\
  -Dcom.threerings.getdown=true\
  -Djava.library.path=$spiral_path/native\
  -Dorg.lwjgl.util.NoChecks=true\
  -Dsun.java2d.d3d=false\
  -Dappdir=$spiral_path\
  -Dresource_dir=$spiral_path/rsrc\
  -Xmx512M\
"
[ -z $NO_AGENT ] && agent="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=localhost:8083"

$java_path/bin/java -classpath ${extra_classes}:${classpath} $opts $agent com.threerings.projectx.client.ProjectXApp
