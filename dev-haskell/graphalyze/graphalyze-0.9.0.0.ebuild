# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="Graphalyze"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Graph-Theoretic Analysis library."
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/Graphalyze"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON=">=dev-lang/ghc-6.8.1
		>=dev-haskell/bktrees-0.2
		dev-haskell/extensible-exceptions
		>=dev-haskell/fgl-5.4.2.2
		=dev-haskell/graphviz-2999.8*
		=app-text/pandoc-1.4*
		dev-haskell/time"
DEPEND="${COMMON}
		>=dev-haskell/cabal-1.6"
# Use graphviz >= 2.24 to automatically get png support
RDEPEND="${COMMON}
		>=media-gfx/graphviz-2.24.0"

S="${WORKDIR}/${MY_P}"