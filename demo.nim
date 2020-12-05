# demo.nim - file name should match the module name you're going to import from python
import nimpy

import unicode

proc greet(name: string): string {.exportpy.} =
  return "Hello, " & name & "!"


proc count(names: seq[string]): int {.exportpy.} =
  return names.len

proc lowercase(names: seq[string]): seq[string] {.exportpy.} =
  for n in names:
    result.add tolower(n)
