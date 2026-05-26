# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

EGIT_REPO_URI="https://github.com/AmateurECE/dotfiles"

DESCRIPTION="The Cobble Desktop Environment"
HOMEPAGE="https://www.github.com/AmateurECE/dotfiles"
SRC_URI="${EGIT_REPO_URI}
https://raw.githubusercontent.com/dexpota/kitty-themes/master/themes/FunForrest.conf \
https://raw.githubusercontent.com/greole/sway-alternating-layout/c6490bcd587fa4c082b919e4dcf258c648c4c41e/alternating_layouts.py
https://www.ethantwardy.com/srv/desktop-background.png"
# TODO: Replace tuigreet with ly?
DEPEND="\
	gui-libs/greetd \
	gui-apps/tuigreet \
	gui-wm/sway \
	gui-apps/waybar[network] \
	media-fonts/nerdfonts[iosevka] \
	gui-apps/wofi \
	x11-terms/kitty \
	"
RDEPEND="${DEPEND}"

LICENSE="GPL-2"
SLOT=0
KEYWORDS="~arm64"

src_install() {
	emake DESTDIR="${D}" install
	insinto /usr/share/cobblede
	doins "${DISTDIR}/desktop-background.png"
	newins "${DISTDIR}/FunForrest.conf" kitty-theme.conf
	exeinto /usr/libexec/cobblede
	doexe "${DISTDIR}/alternating_layouts.py"
}
