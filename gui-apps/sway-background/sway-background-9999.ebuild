# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="My background image for the sway desktop"
HOMEPAGE="https://www.github.com/AmateurECE/dotfiles"
SRC_URI="https://twardyece.com/repository/background.png"

LICENSE="GPL-2"
SLOT=0
S="${DISTDIR}"

src_install() {
    install -Dm644 "${DISTDIR}/background.png" \
            "${D}/usr/share/backgrounds/sway-background.png"
}
