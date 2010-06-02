# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="SMTPClient"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A simple SMTP client library"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/SMTPClient"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

HASKELLDEPS="=dev-haskell/hsemail-1.6*
		dev-haskell/network"
RDEPEND=">=dev-lang/ghc-6.10
		${HASKELLDEPS}"
DEPEND=">=dev-haskell/cabal-1.6
		${RDEPEND}"

S="${WORKDIR}/${MY_P}"