#!/bin/bash
source ./version-utils.sh

#update Info.plist
./update-info-version.sh

echo "Starting JDiskMark macOS DMG build..."

echo "Building DMG for version: $VERSION"

jpackage --input JDiskMark.app/Contents/MacOS \
         --name JDiskMark \
         --main-jar JDiskMark.jar \
         --main-class jdiskmark.App \
         --type dmg \
         --app-version "$VERSION" \
         --icon JDiskMark.app/Contents/Resources/JDM.icns

if [ $? -eq 0 ]; then
  echo "DMG build completed successfully."
else
  echo "DMG build failed."
fi