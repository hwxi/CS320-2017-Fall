(* ******* ****** *)
//
// For illustrating
// dynamic programming
//
(* ******* ****** *)

#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"

(* ******* ****** *)

#include "./../../libraries/class.dats"

(* ******* ****** *)

(*
(*
// O(2^n)-time
*)
fun
fibo(n: int): int =
if n >= 2 then fibo(n-1)+fibo(n-2) else n
*)

(* ******* ****** *)
//
extern
fun
fibo_memo(n: int): int
//
(* ******* ****** *)

implement
fibo_memo(n) = let
//
val () = assertloc(n >= 0)
//
typedef intopt = Option(int)
//
val memo =
array0_make_elt<intopt>(n+1, None())
//
fun
fibo_get(n: int): intopt = memo[n]
fun
fibo_set(n: int, ans: int): void = memo[n] := Some(ans)
//
fun
fibo(n: int): int =
if n >= 2
  then fibo2(n-1)+fibo2(n-2) else n
//
and
fibo2(n: int): int = let
  val opt = fibo_get(n)
in
  case+ opt of
  | None() =>
      ans where
    {
      val ans = fibo(n)
      val () = fibo_set(n, ans)
    }
  | Some(ans) => ans
end
//
in
  int_foreach(n, lam(i) => ignoret(fibo(i))); fibo(n)
end // end of [fibo_memo]

(* ******* ****** *)

implement
main0() =
{
//
val () =
println! ("fibo(10) = ", fibo_memo(10))
val () =
println! ("fibo(100) = ", fibo_memo(100))
val () =
println! ("fibo(1000000) = ", fibo_memo(1000000))
//
} (* end of [main0] *)

(* ******* ****** *)

(* end of [fibo_memo.dats] *)
