(*
extern
fun
fib_trec(n: int): int // tail-recursive version of fib
*)
implement
fib_trec(n) =
loop(0, 1, 0) where
{
fun loop(f0: int, f1: int, i: int): int =
  if i < n then loop(f1, f0+f1, i+1) else f0
}