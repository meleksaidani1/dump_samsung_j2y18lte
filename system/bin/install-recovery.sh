#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14789932:10ee31a9f0cb7fedd03a7f009e3d1c52fb683e2e; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:13212968:1e32cc487c0c8e3a040f4fd3caedaf5a9b441aee EMMC:/dev/block/bootdevice/by-name/recovery 10ee31a9f0cb7fedd03a7f009e3d1c52fb683e2e 14789932 1e32cc487c0c8e3a040f4fd3caedaf5a9b441aee:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
