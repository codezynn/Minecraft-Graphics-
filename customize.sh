#!/system/bin/sh
SKIPUNZIP=0
ui_print "- CODM Flat Textures"
ui_print "- Installing companion app…"

APK="$MODPATH/codm-flat.apk"
if [ -f "$APK" ]; then
  pm install -r "$APK" >/dev/null 2>&1 && ui_print "- App installed" || ui_print "! App install failed (install manually)"
else
  ui_print "! codm-flat.apk not found in module"
fi

ui_print "- Reboot, then open the CODM Flat app"
