//
(*
Given a natural number n, ##fun(intsqrt) returns the integer k
satisfying k*k <= n < (k+1)*(k+1). Please give an implementation of
##fun(intsqrt) that is of the time-complexity O(log(n)). The interface
for ##fun(intsqrt) is given as follows:
*)
//
(*
extern
fun
intsqrt(n: int): int // it return the largest integer k satisfying k*k <= n
*)
//
(* ****** ****** *)
//
fun
square(x: int): int = x * x
//
implement
intsqrt(n) =
if
(n > 0)
then let
  val n2 = n / 4
  val r2 = intsqrt(n2)
in
  if square(2*r2+1) <= n then 2*r2+1 else 2*r2
end // end of [then]
else (0) // end of [else]
//
(* ****** ****** *)
