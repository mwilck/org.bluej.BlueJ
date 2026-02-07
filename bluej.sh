#!/bin/sh
APPBASE="/app/bluej"
JAVAPATH="/app/jre"
JAVAFX_LIB="/app/javafx/lib"
CP="$APPBASE/lib/boot.jar"
JAVAFX_CP=$(ls -1 "$JAVAFX_LIB"/*.jar | paste -sd ":" -)

export LD_LIBRARY_PATH="$JAVAFX_PATH/lib:$JAVAPATH/lib:/usr/lib64"
"$JAVAPATH/bin/java" \
    -Dhttps.protocols=TLSv1.2 \
    -Dawt.useSystemAAFontSettings=on \
    -cp "$CP:$JAVAFX_CP" \
    bluej.Boot \
    -javafxpath="$JAVAFXPATH" "$@"
