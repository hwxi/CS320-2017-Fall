(* ****** ****** *)

#include
"share/atspre_staload.hats"

(* ****** ****** *)
//
fun
f91(n: int): int =
if n >= 101
  then n-10 else f91(f91(n+11))
//
(* ****** ****** *)

fun
k_f91
( n: int
, k: int -<cloref1> void
) : void =
if n >= 101
  then k(n-10)
  else k_f91(n+11, lam res1 => k_f91(res1, k))
// end of [if]

(* ****** ****** *)

implement main0() =
{
  val () =
  k_f91(10, lam(res) => println!(res))
}

(* ****** ****** *)

(* end of [f91.dats] *)
