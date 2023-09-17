# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Utilities to sort media files on the filesystem based on embedded metadata"
HOMEPAGE="https://www.github.com/AmateurECE/sortmedia"
SRC_URI="https://github.com/AmateurECE/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
PATCHES=("${FILESDIR}/0001-Explicitly-make-fsadaptor-a-static-library.patch")

EGIT_REPO_URI="${SRC_URI}"

DEPENDS=media-libs/taglib-1.13.1

LICENSE="GPL-3"
SLOT=0
