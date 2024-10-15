#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Starting JDiskMark..."
echo "Current working directory: $CURRENT_DIR"

CLASSPATH="$CURRENT_DIR/JDiskMark.jar:$CURRENT_DIR/lib/*"
echo "Classpath: $CLASSPATH"

# Run the Java application
java -cp "$CLASSPATH" jdiskmark.App
