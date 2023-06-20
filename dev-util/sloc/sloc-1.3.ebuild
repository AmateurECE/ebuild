# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Simple source-lines-of-code counter"
HOMEPAGE="https://github.com/bytbox/sloc/"
SRC_URI="https://github.com/bytbox/sloc/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT=0

src_compile() {
	pod2man -c "" -r "v${PV}" reposloc > reposloc.1
	go build
}

src_install() {
	dobin sloc
	dobin reposloc
	doman reposloc.1
}
