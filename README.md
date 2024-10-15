# JDiskMarkMacInstaller
Mac installer for JDiskMark

This uses jpackage which uses a Java Runtime Environment (JRE), so users will not need to install Java separately.
# To create a new dmg file:

```
jpackage --input JDiskMark.app/Contents/MacOS \
         --name JDiskMark \
         --main-jar JDiskMark.jar \
         --main-class jdiskmark.App \
         --type dmg \
         --app-version 1.5.1 \
         --icon JDiskMark.app/Contents/Resources/JDM.icns
```
