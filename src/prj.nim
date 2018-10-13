# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.

import fuu

when isMainModule:
  echo("Hello, World!")
  # call procedure from array
  echo fuu.pr[0](3)
  echo fuu.pr[1](3)
  # call procedure from seq
  echo fuu.procs[0](3)
  echo fuu.procs[1](3)

