EAPI=4

inherit udev

DESCRIPTION="Auto expand stateful partition on first boot"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	sys-apps/gptfdisk[-ncurses]
"

S=${WORKDIR}

src_install() {
	# Install upstart service
	insinto "/etc/init"
	doins ${FILESDIR}/auto-expand-partition.conf
}
