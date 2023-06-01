# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	anyhow-1.0.68
	autocfg-1.1.0
	base64-0.13.1
	bitflags-1.3.2
	bumpalo-3.11.1
	bytes-1.3.0
	cc-1.0.78
	cfg-if-1.0.0
	core-foundation-0.9.3
	core-foundation-sys-0.8.3
	dbus-0.9.6
	dbus-tokio-0.7.5
	encoding_rs-0.8.31
	fastrand-1.8.0
	fnv-1.0.7
	foreign-types-0.3.2
	foreign-types-shared-0.1.1
	form_urlencoded-1.1.0
	futures-channel-0.3.25
	futures-core-0.3.25
	futures-macro-0.3.25
	futures-sink-0.3.25
	futures-task-0.3.25
	futures-util-0.3.25
	h2-0.3.15
	hashbrown-0.12.3
	hermit-abi-0.2.6
	http-0.2.8
	http-body-0.4.5
	httparse-1.8.0
	httpdate-1.0.2
	hyper-0.14.23
	hyper-tls-0.5.0
	idna-0.3.0
	indexmap-1.9.2
	instant-0.1.12
	ipnet-2.7.0
	itoa-1.0.5
	js-sys-0.3.60
	lazy_static-1.4.0
	libc-0.2.139
	libdbus-sys-0.2.2
	lock_api-0.4.9
	log-0.4.17
	memchr-2.5.0
	mime-0.3.16
	mio-0.8.5
	native-tls-0.2.11
	num_cpus-1.15.0
	once_cell-1.16.0
	openssl-0.10.45
	openssl-macros-0.1.0
	openssl-probe-0.1.5
	openssl-sys-0.9.80
	parking_lot-0.12.1
	parking_lot_core-0.9.5
	percent-encoding-2.2.0
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	pkg-config-0.3.26
	proc-macro2-1.0.49
	quote-1.0.23
	redox_syscall-0.2.16
	remove_dir_all-0.5.3
	reqwest-0.11.13
	ryu-1.0.12
	schannel-0.1.20
	scopeguard-1.1.0
	security-framework-2.7.0
	security-framework-sys-2.6.1
	serde-1.0.152
	serde_json-1.0.91
	serde_urlencoded-0.7.1
	signal-hook-registry-1.4.0
	slab-0.4.7
	smallvec-1.10.0
	socket2-0.4.7
	syn-1.0.107
	tempfile-3.3.0
	tinyvec-1.6.0
	tinyvec_macros-0.1.0
	tokio-1.23.0
	tokio-macros-1.8.2
	tokio-native-tls-0.3.0
	tokio-util-0.7.4
	tower-service-0.3.2
	tracing-0.1.37
	tracing-core-0.1.30
	try-lock-0.2.3
	unicode-bidi-0.3.8
	unicode-ident-1.0.6
	unicode-normalization-0.1.22
	url-2.3.1
	vcpkg-0.2.15
	want-0.3.0
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.83
	wasm-bindgen-backend-0.2.83
	wasm-bindgen-futures-0.4.33
	wasm-bindgen-macro-0.2.83
	wasm-bindgen-macro-support-0.2.83
	wasm-bindgen-shared-0.2.83
	web-sys-0.3.60
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.36.1
	windows-sys-0.42.0
	windows_aarch64_gnullvm-0.42.0
	windows_aarch64_msvc-0.36.1
	windows_aarch64_msvc-0.42.0
	windows_i686_gnu-0.36.1
	windows_i686_gnu-0.42.0
	windows_i686_msvc-0.36.1
	windows_i686_msvc-0.42.0
	windows_x86_64_gnu-0.36.1
	windows_x86_64_gnu-0.42.0
	windows_x86_64_gnullvm-0.42.0
	windows_x86_64_msvc-0.36.1
	windows_x86_64_msvc-0.42.0
	winreg-0.10.1
"

inherit cargo

DESCRIPTION="Automatically determine timezone information at network connection"
HOMEPAGE="https://github.com/AmateurECE/iwd-auto-timezone"
SRC_URI="https://github.com/AmateurECE/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris)
"

LICENSE="Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD Boost-1.0 MIT Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="sys-apps/systemd net-wireless/iwd"
RDEPEND="${DEPEND}"
BDEPEND=""

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo_src_install
        insinto /usr/lib/systemd/system
        doins ${S}/iwd-auto-timezone.service
}