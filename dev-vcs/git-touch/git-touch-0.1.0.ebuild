# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson git-r3

DESCRIPTION="Git plugin for easily adding files to version control"
HOMEPAGE="https://www.github.com/AmateurECE/git-touch"
SRC_URI="https://github.com/AmateurECE/git-touch"

EGIT_REPO_URI="${SRC_URI}"

LICENSE="GPL-3"
SLOT=0
