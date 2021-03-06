# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="profile haddock lib"
CABAL_MIN_VERSION=1.2
inherit haskell-cabal

DESCRIPTION="A Haskell binding to a subset of the GD graphics library"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/gd"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.1
		media-libs/gd"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"
