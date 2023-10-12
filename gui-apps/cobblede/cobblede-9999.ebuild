# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="The Cobble Desktop Environment"
HOMEPAGE="https://www.github.com/AmateurECE/dotfiles"
SRC_URI="https://github.com/AmateurECE/dotfiles"
DEPENDS="\
	gui-apps/tuigreet \
	gui-apps/wofi \
	gui-libs/greetd \
	gui-wm/hyprland \
	gui-apps/foot \
	gui-apps/waybar \
	gui-apps/hyprpaper \
	"

EGIT_REPO_URI="${SRC_URI}"

LICENSE="GPL-2"
SLOT=0
