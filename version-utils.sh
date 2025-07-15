# version-utils.sh
BUILD_PROPS="JDiskMark.app/Contents/Resources/build.properties"
RAW_VERSION=$(grep '^version=' "$BUILD_PROPS" | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')
if [[ "$RAW_VERSION" =~ ^0\.(.*) ]]; then
  VERSION="1.${BASH_REMATCH[1]}"
else
  VERSION="$RAW_VERSION"
fi