# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Backend for the persistent library using postgresql."
HOMEPAGE="http://docs.yesodweb.com/persistent/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/hdbc-2.2*
		=dev-haskell/hdbc-postgresql-2.2*
		=dev-haskell/monad-peel-0.1*
		=dev-haskell/persistent-0.4*
		<dev-haskell/text-0.12
		<dev-haskell/time-1.3
		=dev-haskell/transformers-0.2*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
