# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Utilities to sort media files on the filesystem based on embedded metadata"
HOMEPAGE="https://www.github.com/AmateurECE/sortmedia"
SRC_URI="https://github.com/AmateurECE/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

DEPENDS+=media-libs/taglib-1.13.1
DEPENDS+=dev-cpp/cli11

LICENSE="MIT"
SLOT=0

src_configure() {
	local mycmakeargs=(
		-DCMAKE_MODULE_PATH=${S}/cmake
		-DCMAKE_CXX_STANDARD=23
		-DRELEASE_VERSION=${PV}
	)
	cmake_src_configure
}
