# original taken from:
# https://gitweb.gentoo.org/repo/gentoo.git/diff/dev-libs/cudnn/cudnn-6.0.ebuild?id=3d15c3e9f2a8c4fa348cae77c7cbd97c74ca0566

EAPI=6

CUDA_PV=10.1

DESCRIPTION="NVIDIA Accelerated Deep Learning on GPU library"
HOMEPAGE="https://developer.nvidia.com/cuDNN"
SRC_URI="cudnn-${CUDA_PV}-linux-x64-v${PV}.tgz"

SLOT="0/7"
KEYWORDS="~amd64 ~amd64-linux"
RESTRICT="fetch"
LICENSE="NVIDIA-cuDNN"

S="${WORKDIR}"

DEPENDS="=dev-util/nvidia-cuda-toolkit-${CUDA_PV}*"
RDEPENDS="${DEPENDS}"

src_install() {
	insinto /opt
	doins -r *
}
