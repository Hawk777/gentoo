# Copyright 2022-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.6.2

EAPI=8

CRATES="
	Inflector-0.11.4
	adler-1.0.2
	ahash-0.7.6
	aho-corasick-0.7.19
	aliasable-0.1.3
	android_system_properties-0.1.5
	arrayref-0.3.6
	arrayvec-0.7.2
	atty-0.2.14
	autocfg-1.1.0
	bigdecimal-0.3.0
	binary-heap-plus-0.5.0
	bindgen-0.62.0
	bitflags-1.3.2
	blake2b_simd-1.0.0
	blake3-1.3.2
	block-buffer-0.10.3
	bstr-1.0.1
	bumpalo-3.11.1
	bytecount-0.6.3
	byteorder-1.4.3
	cc-1.0.77
	cexpr-0.6.0
	cfg-if-1.0.0
	chrono-0.4.23
	clang-sys-1.4.0
	clap-4.0.26
	clap_complete-4.0.6
	clap_lex-0.3.0
	codespan-reporting-0.11.1
	compare-0.1.0
	console-0.15.2
	constant_time_eq-0.1.5
	constant_time_eq-0.2.4
	conv-0.3.3
	core-foundation-sys-0.8.3
	coz-0.1.3
	cpp-0.5.7
	cpp_build-0.5.7
	cpp_common-0.5.7
	cpp_macros-0.5.7
	cpufeatures-0.2.5
	crc32fast-1.3.2
	crossbeam-channel-0.5.6
	crossbeam-deque-0.8.2
	crossbeam-epoch-0.9.12
	crossbeam-utils-0.8.13
	crossterm-0.25.0
	crossterm_winapi-0.9.0
	crunchy-0.2.2
	crypto-common-0.1.6
	ctor-0.1.26
	ctrlc-3.2.3
	custom_derive-0.1.7
	cxx-1.0.82
	cxx-build-1.0.82
	cxxbridge-flags-1.0.82
	cxxbridge-macro-1.0.82
	data-encoding-2.3.2
	data-encoding-macro-0.1.12
	data-encoding-macro-internal-0.1.10
	diff-0.1.13
	digest-0.10.6
	dlv-list-0.3.0
	dns-lookup-1.0.8
	dunce-1.0.3
	either-1.8.0
	encode_unicode-0.3.6
	env_logger-0.8.4
	errno-0.2.8
	errno-dragonfly-0.1.2
	exacl-0.9.0
	fastrand-1.8.0
	file_diff-1.0.0
	filetime-0.2.18
	flate2-1.0.24
	fnv-1.0.7
	fs_extra-1.2.0
	fsevent-sys-4.1.0
	fts-sys-0.2.3
	futures-0.3.25
	futures-channel-0.3.25
	futures-core-0.3.25
	futures-executor-0.3.25
	futures-io-0.3.25
	futures-macro-0.3.25
	futures-sink-0.3.25
	futures-task-0.3.25
	futures-timer-3.0.2
	futures-util-0.3.25
	gcd-2.1.0
	generic-array-0.14.6
	getrandom-0.2.8
	glob-0.3.0
	half-2.1.0
	hashbrown-0.12.3
	heck-0.4.0
	hermit-abi-0.1.19
	hex-0.4.3
	hex-literal-0.3.4
	hostname-0.3.1
	iana-time-zone-0.1.53
	iana-time-zone-haiku-0.1.1
	indicatif-0.17.2
	inotify-0.9.6
	inotify-sys-0.1.5
	instant-0.1.12
	io-lifetimes-0.7.5
	itertools-0.10.5
	itoa-1.0.4
	js-sys-0.3.60
	keccak-0.1.3
	kqueue-1.0.7
	kqueue-sys-1.0.3
	lazy_static-1.4.0
	lazycell-1.3.0
	libc-0.2.137
	libloading-0.7.4
	link-cplusplus-1.0.7
	linux-raw-sys-0.0.46
	lock_api-0.4.9
	log-0.4.17
	lscolors-0.13.0
	match_cfg-0.1.0
	md-5-0.10.5
	memchr-2.5.0
	memmap2-0.5.8
	memoffset-0.6.5
	memoffset-0.7.1
	minimal-lexical-0.2.1
	miniz_oxide-0.5.4
	mio-0.8.5
	nix-0.25.0
	nom-7.1.1
	notify-5.0.0
	nu-ansi-term-0.46.0
	num-bigint-0.4.3
	num-integer-0.1.45
	num-traits-0.2.15
	num_cpus-1.14.0
	num_threads-0.1.6
	number_prefix-0.4.0
	once_cell-1.16.0
	onig-6.4.0
	onig_sys-69.8.1
	ordered-multimap-0.4.3
	os_display-0.1.3
	os_str_bytes-6.4.1
	ouroboros-0.15.5
	ouroboros_macro-0.15.5
	output_vt100-0.1.3
	overload-0.1.1
	parking_lot-0.12.1
	parking_lot_core-0.9.4
	paste-1.0.9
	peeking_take_while-0.1.2
	phf-0.11.1
	phf_codegen-0.11.1
	phf_generator-0.11.1
	phf_shared-0.11.1
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	pkg-config-0.3.26
	platform-info-1.0.2
	portable-atomic-0.3.15
	ppv-lite86-0.2.17
	pretty_assertions-1.3.0
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.47
	procfs-0.14.1
	quick-error-2.0.1
	quickcheck-1.0.3
	quote-1.0.21
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.4
	rand_pcg-0.3.1
	rayon-1.6.0
	rayon-core-1.10.1
	redox_syscall-0.2.16
	reference-counted-singleton-0.1.2
	regex-1.7.0
	regex-automata-0.1.10
	regex-syntax-0.6.28
	remove_dir_all-0.5.3
	remove_dir_all-0.7.0
	retain_mut-0.1.7
	rlimit-0.8.3
	rstest-0.16.0
	rstest_macros-0.16.0
	rust-ini-0.18.0
	rustc-hash-1.1.0
	rustc_version-0.4.0
	rustix-0.35.13
	rustversion-1.0.9
	same-file-1.0.6
	scopeguard-1.1.0
	scratch-1.0.2
	selinux-0.3.1
	selinux-sys-0.6.1
	semver-1.0.14
	serde-1.0.147
	sha1-0.10.5
	sha2-0.10.6
	sha3-0.10.6
	shlex-1.1.0
	signal-hook-0.3.14
	signal-hook-mio-0.2.3
	signal-hook-registry-1.4.0
	siphasher-0.3.10
	slab-0.4.7
	smallvec-1.10.0
	smawk-0.3.1
	socket2-0.4.7
	strsim-0.10.0
	strum-0.24.1
	strum_macros-0.24.3
	subtle-2.4.1
	syn-1.0.103
	tempfile-3.3.0
	term_grid-0.1.7
	termcolor-1.1.3
	terminal_size-0.1.17
	terminal_size-0.2.2
	textwrap-0.16.0
	thiserror-1.0.37
	thiserror-impl-1.0.37
	time-0.3.17
	time-core-0.1.0
	time-macros-0.2.6
	typenum-1.15.0
	unicode-ident-1.0.5
	unicode-linebreak-0.1.4
	unicode-segmentation-1.10.0
	unicode-width-0.1.10
	unicode-xid-0.2.4
	unindent-0.1.10
	users-0.11.0
	utf-8-0.7.6
	uuid-1.2.2
	version_check-0.9.4
	walkdir-2.3.2
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.83
	wasm-bindgen-backend-0.2.83
	wasm-bindgen-macro-0.2.83
	wasm-bindgen-macro-support-0.2.83
	wasm-bindgen-shared-0.2.83
	which-4.3.0
	wild-2.1.0
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.42.0
	windows_aarch64_gnullvm-0.42.0
	windows_aarch64_msvc-0.42.0
	windows_i686_gnu-0.42.0
	windows_i686_msvc-0.42.0
	windows_x86_64_gnu-0.42.0
	windows_x86_64_gnullvm-0.42.0
	windows_x86_64_msvc-0.42.0
	xattr-0.2.3
	yansi-0.5.1
	z85-3.0.5
	zip-0.6.3
"

inherit cargo

DESCRIPTION="GNU coreutils rewritten in Rust"
HOMEPAGE="https://github.com/uutils/coreutils"
if [[ ${PV} == 9999 ]] ; then
	EGIT_REPO_URI="https://github.com/uutils/coreutils"
	inherit git-r3
else
	SRC_URI="https://github.com/uutils/coreutils/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
	SRC_URI+="
		$(cargo_crate_uris)
	"
	S="${WORKDIR}"/coreutils-${PV}

	KEYWORDS="~amd64 ~arm64"
fi

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD-2 BSD CC0-1.0 ISC MIT Unicode-DFS-2016"
SLOT="0"

BDEPEND=">=virtual/rust-1.56.0"

QA_FLAGS_IGNORED=".*"

src_unpack() {
	if [[ ${PV} == 9999 ]] ; then
		git-r3_src_unpack
		cargo_live_src_unpack
	else
		cargo_src_unpack
	fi
}

src_compile() {
	emake V=1 PROFILE=release
}

src_install() {
	emake V=1 PREFIX="/usr" PROG_PREFIX="uu-" DESTDIR="${D}" MANDIR="/share/man/man1" install
}
