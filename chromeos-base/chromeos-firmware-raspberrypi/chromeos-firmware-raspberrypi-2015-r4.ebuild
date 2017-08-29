# Copyright (c) 2017 Flint Innovations Limited. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Chrome OS Firmware"
HOMEPAGE="http://www.chromium.org/"
LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="arm"
IUSE=""
RESTRICT="mirror"

S=${WORKDIR}

#FW_REV="stable"
#FW_REV="72b44d850dc8c2307cf0dccea00928702e16bc12"
#SRC_URI="https://github.com/haggster66/firmware/archive/${FW_REV}.zip -> ${P}.zip"
#SRC_URI="https://github.com/raspberrypi/firmware/archive/${FW_REV}.zip -> ${P}.zip"
#SRC_URI="https://github.com/raspberrypi/firmware/archive/stable.zip -> stable_firmware.zip"
#SRC_URI="https://github.com/raspberrypi/firmware/archive/72b44d850dc8c2307cf0dccea00928702e16bc12.zip -> firmware.zip"
#SRC_URI="https://git.flintos.xyz/RPI/firmware/repository/archive.zip?ref=master -> ${P}.zip"
SRC_URI="https://github.com/raspberrypi/firmware/archive/22de0bb68d34fd210ba9d086c6a1fc5e90f0bfbb.zip -> firmware-44.zip"

src_install() {
	cd "firmware-22de0bb68d34fd210ba9d086c6a1fc5e90f0bfbb/boot"
	insinto /firmware/rpi
	#insinto /boot
	#doins fixup.dat start.elf bootcode.bin
	doins *.dtb *.bin *.linux LICENCE.* *.linux *.elf *.dat

	cd "overlays"
	insinto /firmware/rpi/overlays
	#insinto /boot/overlays
	doins *.*
}
