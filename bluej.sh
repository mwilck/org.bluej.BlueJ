#!/bin/sh
APPBASE="/app/bluej"
JAVAPATH="/app/jre"
JAVAFX_LIB="/app/javafx/lib"
CP="$APPBASE/lib/boot.jar"
JAVAFX_CP=$(ls -1 /app/javafx/lib/*.jar | paste -sd ":" -)
"$JAVAPATH/bin/java" -Djavafx.embed.singleThread=true -Dawt.useSystemAAFontSettings=on -cp "$CP:$JAVAFX_CP" bluej.Boot  "$@"
