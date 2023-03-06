#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:7790592:9f3acf8af3f1a540d55cf393dee9c0e7a52cc903; then
  applypatch EMMC:/dev/block/mmcblk0p9:7186432:0c93cd39a5155d7e3c98f1762e367288eae4d39a EMMC:/dev/block/mmcblk0p10 9f3acf8af3f1a540d55cf393dee9c0e7a52cc903 7790592 0c93cd39a5155d7e3c98f1762e367288eae4d39a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
