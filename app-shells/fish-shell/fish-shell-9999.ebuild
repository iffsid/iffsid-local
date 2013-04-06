# Copyright 2013 Siddharth Narayanaswamy,
# Distributed under the terms of the GNU General Public License v2

EAPI=3

inherit autotools-utils git-2

DESCRIPTION="Fish shell v2"
HOMEPAGE="http://ridiculousfish.com/shell/index.html"
EGIT_REPO_URI="git://github.com/fish-shell/fish-shell.git"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="X"

AUTOTOOLS_AUTORECONF=1
BUILD_DIR=${WORKDIR}/${P}/

DEPEND="app-doc/doxygen
	sys-libs/ncurses
	sys-devel/bc
	sys-devel/gettext
	www-client/htmlview
	X? ( x11-misc/xsel )
	!app-shells/fish"
RDEPEND="${DEPEND}"

src_configure() {
	autotools-utils_src_configure
}

src_compile() {
	autotools-utils_src_compile
}

src_install() {
	autotools-utils_src_install
}

pkg_postinst() {
	elog
	elog "To use fish as the default shell, add /bin/fish to /etc/shells"
	elog "and change login shell to /bin/fish."
	elog
}
