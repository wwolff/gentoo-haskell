# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="HDBC-postgresql"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="PostgreSQL driver for HDBC"
HOMEPAGE="http://software.complete.org/hdbc-postgres"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="2"
KEYWORDS="~amd64 ~x86"
IUSE=""

hdbc_PV=$(get_version_component_range 1-2)

DEPEND=">=dev-lang/ghc-6.6.1
		>=dev-haskell/cabal-1.8
		dev-haskell/convertible
		dev-haskell/hunit
		dev-haskell/mtl
		dev-haskell/parsec
		dev-haskell/quickcheck
		dev-haskell/testpack
		dev-haskell/time
		dev-haskell/utf8-string
		=dev-haskell/hdbc-${hdbc_PV}*
		>=dev-db/postgresql-base-8"

S="${WORKDIR}/${MY_P}"