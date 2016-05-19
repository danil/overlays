# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=2

inherit cmake-utils versionator

DESCRIPTION="A basic application for burning CDs and DVDs"
HOMEPAGE="http://simpleburn.tuxfamily.org"
SRC_URI="http://${PN}.tuxfamily.org/IMG/bz2/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="x11-libs/gtk+:2"
RDEPEND="${DEPEND}
	app-cdr/cdrtools"