#include
"share/atspre_staload.hats"

fun
fact(n: int): int =
if n > 0 then n * fact(n-1) else 1

fun
k_fact
( n: int
, k: int -<cloref1> void): void =
if n > 0
then
k_fact(n-1, lam(res) => k(n * res))
else k(1)

(* ****** ****** *)

implement main0() =
{
  val () =
  k_fact(10, lam(res) => println!(res))
}

(* ****** ****** *)

(* end of [fact.dats] *)
