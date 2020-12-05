# Package

version     = "0.1.0"
author      = "Andrea Manzini"
description = "demo for nim - python interop"
license     = "MIT"

# Deps
requires "nim >= 1.0"
requires "nimpy"

# build vars
let modname = "demo"
let python = "python3"

# build tasks

before demo:
  exec "nimble install -d"
  echo "building"
  # Operating Systems.
  if defined(windows):
    exec "nim c --threads:on --app:lib --out:" & modname & ".pyd " & modname
  else: 
    exec "nim c --threads:on --app:lib --out:" & modname & ".so " & modname


task demo, "run the python test":
  echo "running"
  exec $python  & " main.py"

