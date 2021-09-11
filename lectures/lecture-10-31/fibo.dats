(* ****** ****** *)

#include
"share/atspre_staload.hats"

(* ****** ****** *)

fun
fibo(n: int): int =
if n >= 2
  then fibo(n-1)+fibo(n-2) else n
// end of [if]

(* ****** ****** *)

fun
k_fibo
( n: int
, k: int -<cloref1> void): void =
if
(n >= 2)
then 
k_fibo(n-1, lam res1 => k_fibo(n-2, lam res2 => k(res1 + res2)))
else k(n)

(* ****** ****** *)

implement main0() =
{
  val () =
  k_fibo(10, lam(res) => println!(res))
}

(* ****** ****** *)

(* end of [fibo.dats] *)
