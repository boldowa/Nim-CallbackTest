# Package

version       = "0.1.0"
author        = "boldowa"
description   = "Callback test"
license       = "MIT"
srcDir        = "src"
binDir        = "bin"
bin           = @["prj"]
skipDirs      = @["tests"]

backend       = "c"


# Dependencies

requires "nim >= 0.19.0"

task clean, "Clean build caches":
  rmDir "bin"
  rmDir "src/nimcache"
  rmDir "tests/nimcache"
# rmDir "utils/nimcache"
  mkDir "bin"

