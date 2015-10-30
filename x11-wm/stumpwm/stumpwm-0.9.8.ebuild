# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
inherit common-lisp eutils

DESCRIPTION="Stumpwm is a tiling, keyboard driven X11 Window Manager written entirely in Common Lisp."
HOMEPAGE="http://www.nongnu.org/stumpwm/index.html"
SRC_URI="https://github.com/sabetts/${PN}/archive/${PV}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"
CLPACKAGE="stumpwm"

DEPEND="dev-lisp/common-lisp-controller
		virtual/commonlisp
		dev-lisp/cl-ppcre
		doc? ( sys-apps/texinfo virtual/texi2dvi )"
RDEPEND="${DEPEND}
		dev-lisp/sbcl
		dev-lisp/cl-clx"

# <https://github.com/stumpwm/stumpwm/wiki/FAQ#wiki-im-on-gentoo-and-stumpwm-fails-to-start-it-produces-the-error-there-is-no-applicable-method-for-the-generic-function--when-called-with-arguments-nil>
RDEPEND="${RDEPEND} media-fonts/font-misc-misc"

src_compile() {
	use doc && makeinfo stumpwm.texi.in
}

src_install() {
	common-lisp-install *.lisp stumpwm.asd
	common-lisp-system-symlink
	dodoc README.md NEWS || die
	use doc && doinfo stumpwm.info
}
