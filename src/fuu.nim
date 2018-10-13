# fuu module (test module)

proc funcA*(x: int) : int =
  return x+5

proc funcB*(x: int) : int =
  return x*2

type ProcType = proc(i:int):int {.nimcall.}

# valid
#var procs*: seq[proc (x:int):int] = @[]

var procs*: seq[ProcType] = @[]
procs.add funcA
procs.add funcB

# err ... type mismatch ({.closure.} err ?????)
#var pr*: array[2, proc (x:int):int] = [funcA,funcB]

# valid
var pr*: array[2, ProcType] = [funcA,funcB]

