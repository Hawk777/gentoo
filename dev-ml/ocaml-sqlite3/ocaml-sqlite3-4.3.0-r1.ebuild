# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit opam

MY_PN="sqlite3"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A package for ocaml that provides access to SQLite databases"
HOMEPAGE="http://mmottl.github.io/sqlite3-ocaml/"
SRC_URI="https://github.com/mmottl/sqlite3-ocaml/releases/download/${PV}/${MY_P}.tbz"
S="${WORKDIR}/${MY_P}"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~x86"

RDEPEND=">=dev-db/sqlite-3.3.3"
DEPEND="${RDEPEND}
	dev-ml/jbuilder
	dev-ml/base:=
	dev-ml/stdio:=
	dev-ml/configurator:=
	>=dev-ml/findlib-1.3.2"

src_compile() {
	jbuilder build @install || die
}

src_install() {
	opam_src_install "${MY_PN}"
}
