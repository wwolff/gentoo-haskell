# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

CABAL_FEATURES="bin"
inherit haskell-cabal darcs

DESCRIPTION="A Minimalistic Text Based Status Bar"
HOMEPAGE="http://gorgias.mine.nu/xmobar/"
EDARCS_REPOSITORY="http://code.haskell.org/xmobar"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 -sparc ~x86"

IUSE="xft unicode"

DEPEND=">=dev-lang/ghc-6.6
	>=dev-haskell/cabal-1.2
	|| ( >=dev-haskell/x11-1.3.0 dev-haskell/x11-darcs )
	>=dev-haskell/mtl-1.0
	>=dev-haskell/filepath-1.0
	dev-haskell/parsec
	dev-haskell/stm
	utf8? ( dev-haskell/utf8-string )
	xft?  ( dev-haskell/utf8-string
			dev-haskell/x11-xft )
	!x11-misc/xmobar"
RDEPEND="${DEPEND}"

src_unpack() {
	darcs_src_unpack

	# Cannot use -fasm on arches without a native code gen!
	# Don't need -Wall.
	# Portage does striping, package must not do it themselves.
	sed -i -e 's/-O2 -fasm -Wall -optl-Wl,-s//' "${S}/xmobar.cabal"
}

src_compile() {
	CABAL_CONFIGURE_FLAGS=""

	if use xft; then
		CABAL_CONFIGURE_FLAGS="--flags=with_xft"
	else
		CABAL_CONFIGURE_FLAGS="--flags=-with_xft"
	fi

	if use unicode; then
		CABAL_CONFIGURE_FLAGS="$CABAL_CONFIGURE_FLAGS --flags=with_utf8"
	else
		CABAL_CONFIGURE_FLAGS="$CABAL_CONFIGURE_FLAGS --flags=-with_utf8"
	fi
	cabal_src_compile
}

src_install() {
	cabal_src_install

	dodoc xmobar.config-sample README
}