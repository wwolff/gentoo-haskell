# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="bin"
inherit haskell-cabal darcs

DESCRIPTION="Haskell IDE written in Haskell"
HOMEPAGE="http://www.leksah.org"
EDARCS_REPOSITORY="http://code.haskell.org/leksah/leksah"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.12.1
		net-misc/wget"
DEPEND="${RDEPEND}
		>=dev-haskell/binary-0.5.0.0
		=dev-haskell/binary-shared-0.8*
		>=dev-haskell/cabal-1.6.0.1
		>=dev-haskell/deepseq-1.1.0.0
		>=dev-haskell/glib-0.10
		>=dev-haskell/gtk-0.10
		>=dev-haskell/gtksourceview2-0.10.0
		>=dev-haskell/hslogger-1.0.7
		=app-editors/leksah-server-0.8*
		>=dev-haskell/ltk-0.8
		<=dev-haskell/ltk-0.9
		>=dev-haskell/mtl-1.1.0.2
		>=dev-haskell/network-2.2
		>=dev-haskell/parsec-2.1.0.1
		>=dev-haskell/process-leksah-1.0.1.3
		=dev-haskell/regex-base-0.93*
		=dev-haskell/regex-tdfa-1.1*
		>=dev-haskell/time-0.1
		>=dev-haskell/utf8-string-0.3.1.1"
