# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Fast combinator parsing with Data.ByteString.Lazy"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/attoparsec"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.6.1
		 >=dev-haskell/bytestring-lexing-0.2"
DEPEND=">=dev-haskell/cabal-1.2
		${RDEPEND}"
