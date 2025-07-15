#!/bin/bash

BUILD_PROPS="JDiskMark.app/Contents/Resources/build.properties"

#Gets version from build props and must change version number to start with a 1 as jpackage does not allow for 0 as the major version
RAW_VERSION=$(grep '^version=' "$BUILD_PROPS" | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')
VERSION=$(echo "$RAW_VERSION" | sed -E 's/^0\./1./')
echo "THE VERSION is: '$VERSION'"

jpackage --input JDiskMark.app/Contents/MacOS \
         --name JDiskMark \
         --main-jar JDiskMark.jar \
         --main-class jdiskmark.App \
         --type dmg \
         --app-version "$VERSION" \
         --icon JDiskMark.app/Contents/Resources/JDM.icns