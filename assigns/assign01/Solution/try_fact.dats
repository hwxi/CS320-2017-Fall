(*
extern
fun
try_fact(): int // it returns the first [n] such that fact(n) = 0
*)
(*
implement
try_fact() = ...
*)
(* ****** ****** *)

implement
try_fact() =
loop(0, 1) where
{
  fun
  loop(i: int, r: int): int =
  if r = 0 then i else loop(i+1, (i+1)*r)
} // end of [try_fact]

(* ****** ****** *)

(* end of [try_fact.dats] *)
