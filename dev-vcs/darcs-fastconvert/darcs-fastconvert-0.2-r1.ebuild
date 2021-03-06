# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

EAPI=2

CABAL_FEATURES="bin"
inherit base haskell-cabal

DESCRIPTION="Import/export git fast-import streams to/from darcs."
HOMEPAGE="http://hackage.haskell.org/package/darcs-fastconvert"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		=dev-haskell/attoparsec-0.8*
		>=dev-haskell/cabal-1.6
		=dev-haskell/cmdlib-0.2*
		>=dev-vcs/darcs-2.5
		dev-haskell/datetime
		>=dev-haskell/hashed-storage-0.5.3
		dev-haskell/mtl
		dev-haskell/utf8-string
		>=dev-lang/ghc-6.10.1"

PATCHES=("${FILESDIR}/darcs-fastconvert-email-only-author.patch")
