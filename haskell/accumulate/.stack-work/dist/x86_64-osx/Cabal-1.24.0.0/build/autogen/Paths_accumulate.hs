{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_accumulate (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/Taylor/exercism/haskell/accumulate/.stack-work/install/x86_64-osx/nightly-2016-07-17/8.0.1/bin"
libdir     = "/Users/Taylor/exercism/haskell/accumulate/.stack-work/install/x86_64-osx/nightly-2016-07-17/8.0.1/lib/x86_64-osx-ghc-8.0.1/accumulate-0.0.0-Fm7OPAcAu2037ei4thXolp"
datadir    = "/Users/Taylor/exercism/haskell/accumulate/.stack-work/install/x86_64-osx/nightly-2016-07-17/8.0.1/share/x86_64-osx-ghc-8.0.1/accumulate-0.0.0"
libexecdir = "/Users/Taylor/exercism/haskell/accumulate/.stack-work/install/x86_64-osx/nightly-2016-07-17/8.0.1/libexec"
sysconfdir = "/Users/Taylor/exercism/haskell/accumulate/.stack-work/install/x86_64-osx/nightly-2016-07-17/8.0.1/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "accumulate_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "accumulate_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "accumulate_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "accumulate_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "accumulate_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
