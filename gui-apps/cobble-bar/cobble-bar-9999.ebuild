# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	addr2line@0.22.0
	adler@1.0.2
	aho-corasick@1.1.3
	annotate-snippets@0.9.2
	anyhow@1.0.86
	autocfg@1.3.0
	backtrace@0.3.73
	bindgen@0.69.4
	bitflags@2.5.0
	byteorder@1.5.0
	bytes@1.6.0
	cc@1.0.99
	cexpr@0.6.0
	cfg-expr@0.15.8
	cfg-if@1.0.0
	clang-sys@1.8.1
	either@1.12.0
	equivalent@1.0.1
	futures@0.3.30
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	genetlink@0.2.5
	gimli@0.29.0
	gio@0.19.5
	gio-sys@0.19.5
	glib@0.19.7
	glib-macros@0.19.7
	glib-sys@0.19.5
	glob@0.3.1
	gobject-sys@0.19.5
	hashbrown@0.14.5
	heck@0.5.0
	indexmap@2.2.6
	itertools@0.12.1
	itoa@1.0.11
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.155
	libloading@0.8.3
	libspa-sys@0.8.0
	log@0.4.21
	memchr@2.7.2
	minimal-lexical@0.2.1
	miniz_oxide@0.7.3
	mio@0.8.11
	netlink-packet-core@0.7.0
	netlink-packet-generic@0.3.3
	netlink-packet-route@0.19.0
	netlink-packet-utils@0.5.2
	netlink-proto@0.11.3
	netlink-sys@0.8.6
	nix@0.27.1
	nom@7.1.3
	object@0.36.0
	paste@1.0.15
	pin-project@1.1.5
	pin-project-internal@1.1.5
	pin-project-lite@0.2.14
	pin-utils@0.1.0
	pipewire-sys@0.8.0
	pkg-config@0.3.30
	proc-macro-crate@3.1.0
	proc-macro2@1.0.85
	quote@1.0.36
	regex@1.10.5
	regex-automata@0.4.7
	regex-syntax@0.8.4
	rtnetlink@0.14.1
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	ryu@1.0.18
	serde@1.0.203
	serde_derive@1.0.203
	serde_json@1.0.117
	serde_spanned@0.6.6
	shlex@1.3.0
	slab@0.4.9
	smallvec@1.13.2
	socket2@0.5.7
	syn@2.0.66
	system-deps@6.2.2
	target-lexicon@0.12.14
	thiserror@1.0.61
	thiserror-impl@1.0.61
	tokio@1.38.0
	tokio-macros@2.3.0
	toml@0.8.14
	toml_datetime@0.6.6
	toml_edit@0.21.1
	toml_edit@0.22.14
	unicode-ident@1.0.12
	unicode-width@0.1.13
	version-compare@0.2.0
	wasi@0.11.0+wasi-snapshot-preview1
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.5
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.5
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.5
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.5
	windows_i686_gnullvm@0.52.5
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.5
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.5
	winnow@0.5.40
	winnow@0.6.13
	wl-nl80211@0.1.2
	yansi-term@0.1.2
"

inherit git-r3 cargo

DESCRIPTION="cobble-bar"
HOMEPAGE="https://github.com/AmateurECE/cobble-bar"

EGIT_REPO_URI="https://github.com/AmateurECE/${PN}.git"
SRC_URI="${CARGO_CRATE_URIS}"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD Boost-1.0 ISC MIT Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="dev-util/gir"

S="${WORKDIR}/${P}/cobble-bar"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_unpack() {
	git-r3_src_unpack
	cargo_src_unpack
}

src_compile() {
	(cd "${WORKDIR}/${P}/wireplumber-sys" && gir -o .)
	cargo_src_compile
}
