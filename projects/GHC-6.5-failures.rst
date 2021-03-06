=============================
Packages failing with GHC 6.5
=============================

:Authors: Lennart Kolmodin <kolmodin@gentoo.org>,
          Duncan Coutts <dcoutts@gentoo.org>,
          Gentoo Haskell Herd <haskell@gentoo.org>
:Updated: 2006-09-12

Failed packages
===============

Only the first error message is reported, as it is all I can see without
actually fixing anything :)

Packages I've used if not anything else mentioned:

* GHC 6.5.20060906
* haddock-0.8\_rc1
* cabal-1.1.5.9.2

Some haddock docs might have failed, but since cabal didn't kill the setup
if haddock barkes in 1.1.5.9.2, it has gone by unnoticed by me...

This issue of not noticing if haddock failed is fixed in cabal-1.1.5.9.3.

dev-haskell/buddha-1.2
----------------------

::

  ghc-6.5.20060906: unknown package: text

Fixed by this *huge* patch `<../dev-haskell/buddha/files/buddha-1.2-ghc66.patch>`_.

dev-haskell/c2hs-0.14.5
-----------------------

::

  c2hs/c/CLexer.x:78:34: Module `Data.Set' does not export `mkSet'
  c2hs/c/CLexer.x:78:41: Module `Data.Set' does not export `addToSet'
  c2hs/c/CLexer.x:78:51: Module `Data.Set' does not export `elementOf'

Now fixed with this patch `<../dev-haskell/c2hs/files/c2hs-0.14.5-ghc66.patch>`_.

dev-haskell/happy-1.15
----------------------

::

  LALR.lhs:626:34: Not in scope: `bounds'

Now fixed with this patch `<../dev-haskell/happy/files/happy-1.15-ghc66.patch>`_.

dev-haskell/haskell-src-exts-0.2
--------------------------------

::

  Language/Haskell/Hsx/Lexer.hs:245:41:
   Ambiguous occurrence `isSymbol'
   It could refer to either `isSymbol', defined at Language/Haskell/Hsx/Lexer.hs:212:0
   or `isSymbol', imported from Data.Char
   at Language/Haskell/Hsx/Lexer.hs:26:0-15

 (repeated 4 more times)

Now fixed with this patch `<../dev-haskell/haskell-src-exts/files/haskell-src-exts-0.2-hiding-isSymbol.patch>`_.

dev-haskell/haxml-1.16
----------------------

::

  src/Text/XML/HaXml/Escape.hs:57:7:
    Could not find module `Data.FiniteMap'

Now fixed by new releases of haxml-1.13.2 and haxml-1.17.

dev-haskell/hmake-3.11
----------------------

::

  ghc-6.5.20060906: unknown package: lang

Now fixed with this patch `<../dev-haskell/hmake/files/hmake-3.11-ghc66.patch>`_.

dev-haskell/hsshellscript-2.6.3
-------------------------------

::

  ghc-6.5.20060906: unknown package: lang

dev-haskell/lhs2tex-1.11
------------------------

::

  /var/tmp/portage/lhs2tex-1.11/work/lhs2tex-1.11/Setup.hs:11:7:
      Could not find module `Distribution.Compat.FilePath':
            it is hidden (in package Cabal-1.1.5.9.2)

New Cabal-1.1.5.9.3 does not hide this module, but does hide Distribution.Compat.ReadP.
So we still need a patch to make it use the standard ReadP module from base.

dev-haskell/missingh-0.14.4
---------------------------

::

  MissingH/Str.hs:47:7:
      Could not find module `Text.Regex'

The immediate issue can be fixed by depending on regex-compat, however MissingH
also depends on Data.FiniteMap and exposes it in the interface so it's not
totally clear how this should be fixed. We'll probably need to wait for a new
upstream release.

dev-haskell/uulib-0.9.2
-----------------------

::

  src/UU/Parsing/StateParser.hs:5:0:
      Illegal instance declaration for `InputState (inp, state) s p'
          (the Coverage Condition fails for one of the functional dependencies)
      In the instance declaration for `InputState (inp, state) s p'

This can be fixed by allowing undecidable instances, i.e. adding
UndecidableInstances to the extensions field in the .cabal file.

dev-haskell/wxhaskell-0.9.4
---------------------------

::

  wx/src/Graphics/UI/WX/Types.hs:94:0:
      Bad interface file: out/wx/imports/Graphics/UI/WXCore/Types.hi
          Something is amiss; requested module
              wx:Graphics.UI.WXCore.Types differs from name found in the
              interface file wxcore:Graphics.UI.WXCore.Types

This is tricky. The wx package needs to be registered locally before anything
else can be built against it.

dev-haskell/hsgnutls-0.2.2
--------------------------

::

  /var/tmp/portage/hsgnutls-0.2.2/work/hsgnutls-0.2.2/Setup.lhs:16:39:
      Couldn't match expected type `LocalBuildInfo -> IO ExitCode'
             against inferred type `IO ExitCode'
      Probable cause: `testGnutlsVersion' is applied to too many arguments
      In the `postConf' field of a record
      In the expression:
          defaultUserHooks
              {postConf = testGnutlsVersion,
              postBuild = fixBuild,
              postClean = deleteExtras}

dev-haskell/newbinary-0.1-r1
----------------------------

::

  cannot satisfy dependency lang-any


dev-haskell/shellac-0.3
-----------------------

::

  src/System/Console/Shell/Commands.hs:171:0:
      Illegal instance declaration for `CommandFunction (Int -> r) st'
          (the Coverage Condition fails for one of the functional dependencies)
      In the instance declaration for `CommandFunction (Int -> r) st'

  (and 7 more like it)

dev-util/darcs-1.0.8
--------------------

::

  Lcs.lhs:433:8: Not in scope: type constructor or class `HasBounds'

Fixed in patch `<../dev-util/darcs/files/darcs-1.0.8-ghc66.patch>`_.

dev-util/bnfc-2.2
-----------------

BNFC 2.2 had UTF8 troubles.

Fixed in patch `<../dev-util/bnfc/files/bnfc-2.2-ghc66-utf8.patch>`_.


GHC extra libs
==============

All packages are now (2006-10-04) provided with Cabal's Setup.hs and play
nice with haddock. The Gentoo Herd is happy once again.

dev-haskell/opengl-2.1
----------------------

Package successfully installed, but haddock chokes on a file::

  dist/build/tmp/Graphics/Rendering/OpenGL/GL/BeginEnd.hs:"dist/build/tmp/Graphics/Rendering/OpenGL/GL/BeginEnd.hs": 129:16: Parse error

Cabal patch `Fri Sep  8 19:36:15 CEST 2006  Duncan Coutts <remove.this.part.duncan.coutts@worc.ox.ac.uk>` takes care of cabal not dying.

Problem with opengl remains though.

Fixed in Cabal.

dev-haskell/openal-1.3
----------------------

Used:

* GHC 6.5.20060910
* cabal-1.1.5.9.3.

Haddock chokes on Sound/OpenAL/AL/Attenuation.hs::

  dist/build/tmp/Sound/OpenAL/AL/Attenuation.hs:"dist/build/tmp/Sound/OpenAL/AL/Attenuation.hs":
  207:16: Parse error

Fixed in Cabal.

dev-haskell/alut-2.0
--------------------

Used:

* GHC 6.5.20060910
* cabal-1.1.5.9.3.

::

  dist/build/tmp/Sound/ALUT/Config.hs:"dist/build/tmp/Sound/ALUT/Config.hs": 219:16: Parse error

Fixed in Cabal.

dev-haskell/xhtml-2006.8.14
---------------------------

Used:

* GHC 6.5.20060910
* cabal-1.1.5.9.3

Haddock chokes again::

  haddock: parse error in doc string: [TokSpecial '/',TokString "www.haskell.org",TokSpecial '/']

Fixed in source.

dev-haskell/hunit-1.1
---------------------

Used:

* GHC 6.5.20060910
* cabal-1.1.5.9.3

Haddock::

  dist/build/tmp/Test/HUnit/Lang.hs:"dist/build/tmp/Test/HUnit/Lang.hs": 69:1: Parse error

Fixed in Cabal.


dev-haskell/network-2.0
-----------------------

Used:

* GHC 6.5.20060910
* cabal-1.1.5.9.3

Haddock::

  dist/build/tmp/Network/Socket.hs:"Network/Socket.hsc": 283:16: Parse error

Fixed in Cabal.

dev-haskell/time-1.0
--------------------

Used:

* GHC 6.5.20060910
* cabal-1.1.5.9.3

::

  ghc-6.5.20060910: does not exist: cbits/cbits/HsTime.c

Fixed in source.

Untested packages
=================

* cabal-get (obsolete)
* fps (included in base)
* gh (requires uuagc/uulib)
* hackage-client (requires haxml)
* haxr (requires haxml)
* shellac-readline (requires shellac)
* trhsx (requires haskell-src-exts)
* hsp-darcs (requires haskell-src-exts)
* hspr-darcs (requires haskell-src-exts)

.. vim: tw=76 ts=2 :
