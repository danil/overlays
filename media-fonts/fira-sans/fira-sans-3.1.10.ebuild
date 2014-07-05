# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit font

MY_P="${P/_/}"

DESCRIPTION="Mozilla's new typeface, used in Firefox OS"
HOMEPAGE="https://www.mozilla.org/en-US/styleguide/products/firefox-os/typeface http://mozilla.github.io/Fira http://carrois.com/fira-3-1"
SRC_URI="http://www.carrois.com/wordpress/downloads/fira_3_1/FiraFonts3110.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""

FONT_SUFFIX="ttf"
S="${WORKDIR}/FiraFonts3110"
FONT_S="${WORKDIR}/FiraFonts3110/FiraSans3110/WEB"
