#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="EndeavourOS-T2"
iso_label="EOS_T2_ENDEAVOUR"
iso_publisher="t2linux <https://t2linux.org>"
iso_application="EndeavourOS Live/Rescue CD for Macs with T2 security chip"
iso_version="Endeavour-T2"
install_dir="arch"
buildmodes=('iso')
quiet="n"
work_dir="work"
out_dir="out"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')

arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/etc/sudoers.d"]="0:0:750"
  ["/etc/sudoers.d/g_wheel"]="0:0:440"
  ["/usr/bin/GPU-Intel-installer"]="0:0:755"
)
