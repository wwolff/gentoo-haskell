# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $
EAPI="2"

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Podcast Aggregator (downloader)"
HOMEPAGE="http://software.complete.org/hpodder"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
CABAL_CONFIGURE_FLAGS="--constraint=base<4"

DEPEND=">=dev-lang/ghc-6.6.1
		dev-haskell/cabal
		dev-haskell/configfile
		<dev-haskell/haxml-1.19
		<dev-haskell/hdbc-2
		<dev-haskell/hdbc-sqlite-2
		dev-haskell/hslogger
		>=dev-haskell/missingh-1.0.0
		dev-haskell/mtl
		dev-haskell/network
		dev-haskell/parsec:0"
