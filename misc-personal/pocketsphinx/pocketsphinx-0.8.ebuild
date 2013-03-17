# Copyright 2013 Siddharth Narayanaswamy,
# Distributed under the terms of the GNU General Public License v2

EAPI=3
PYTHON_DEPEND="python? 2:2.6"

inherit autotools-utils python

DESCRIPTION="Pocketsphinx ebuild for CMU speech-recognition engine"
HOMEPAGE="http://cmusphinx.sourceforge.net/wiki/"
SRC_URI="http://downloads.sourceforge.net/project/cmusphinx/pocketsphinx/${PV}/${P}.tar.gz"

LICENSE="BSD-2 HPND MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc lapack python static-libs"

DEPEND="app-accessibility/sphinxbase"
RDEPEND="${DEPEND}"

src_configure() {
	local myeconfargs=(
		--prefix="/usr/local/"
	)
	autotools-utils_src_configure
}

src_compile() {
	autotools-utils_src_compile
}

src_install() {
	autotools-utils_src_install
}
