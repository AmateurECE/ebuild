# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

EGIT_REPO_URI="https://github.com/AmateurECE/dotfiles"

DESCRIPTION="The Cobble Desktop Environment"
HOMEPAGE="https://www.github.com/AmateurECE/dotfiles"
SRC_URI="${EGIT_REPO_URI}
https://raw.githubusercontent.com/dexpota/kitty-themes/master/themes/FunForrest.conf
https://www.ethantwardy.com/srv/desktop-background.png"
# TODO: Replace tuigreet with ly?
DEPENDS="\
	gui-apps/tuigreet \
	gui-apps/wofi \
	gui-libs/greetd \
	gui-wm/hyprland \
	x11-terms/kitty \
	gui-apps/waybar \
	gui-apps/hyprpaper \
	"

LICENSE="GPL-2"
SLOT=0
KEYWORDS="~arm64"

src_install() {
	emake DESTDIR="${D}" install
	insinto /usr/share/cobblede
	doins "${DISTDIR}/desktop-background.png"
	newins "${DISTDIR}/FunForrest.conf" kitty-theme.conf
}
