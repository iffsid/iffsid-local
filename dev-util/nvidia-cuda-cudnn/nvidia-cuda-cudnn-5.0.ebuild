# original taken from:
# https://github.com/5kg/gentoo-overlay/blob/master/dev-util/nvidia-cuda-cudnn/nvidia-cuda-cudnn-6.5.ebuild
# changes were needed because cudnn's directory tree changed and naming is screwed up

EAPI=5

inherit eutils multilib toolchain-funcs versionator

PKG="cudnn-7.5-linux-x64-v5.0-ga"
SRC_URI="${PKG}.tgz"

DESCRIPTION="NVIDIA cuDNN GPU Accelerated Deep Learning"
HOMEPAGE="https://developer.nvidia.com/cuDNN"

SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
RESTRICT="fetch"

DEPEND=">=dev-util/nvidia-cuda-sdk-7.5.18
		>=dev-util/nvidia-cuda-toolkit-7.5.18-r2"

S="${WORKDIR}/${PKG}"

pkg_nofetch() {
	einfo "Please download"
	einfo "  - cudnn-7.5-linux-x64-v5.0-ga.tgz"
	einfo "from ${HOMEPAGE} and place them in ${DISTDIR}"
}

src_unpack() {
	unpack "${A}"
	mv ${WORKDIR}/cuda ${S}
}

src_install() {
	dolib.so lib64/libcudnn*$(get_libname)*
	dolib.a lib64/libcudnn_static.a

	insinto /usr/include
	doins include/cudnn.h
}
