#!/bin/bash

BUILD_PROPS="JDiskMark.app/Contents/Resources/build.properties"

VERSION=$(grep '^version=' "$BUILD_PROPS" | cut -d'=' -f2)

jpackage --input JDiskMark.app/Contents/MacOS \
         --name JDiskMark \
         --main-jar JDiskMark.jar \
         --main-class jdiskmark.App \
         --type dmg \
         --app-version "$VERSION" \
         --icon JDiskMark.app/Contents/Resources/JDM.icns