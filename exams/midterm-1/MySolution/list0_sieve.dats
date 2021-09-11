(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)
//
extern
fun
{a:t@ype}
list0_remdup
(xs: list0(a), eqfn: cfun(a, a, bool)): list0(a)
//
implement
{a}(*tmp*)
list0_remdup(xs, eqfn) =
(
case+ xs of
| list0_nil() =>
  list0_nil()
| list0_cons(x0, xs) =>
  list0_cons
  ( x0
  , list0_remdup<a>
    (list0_filter<a>(xs, lam(x) => ~eqfn(x0, x)), eqfn)
  )
)
//    
(* ****** ****** *)
//
(*
implement
list0_sieve(n) = ...
*)
(* ****** ****** *)
//
implement
main0((*void*)) =
{
//
val xs = list0_sieve(1)
val () = assertloc(length(xs) = 0)
val xs = list0_sieve(2)
val () = assertloc(length(xs) = 1)
//
val xs = list0_sieve(10)
val () = assertloc(length(xs) = 4)
val xs = list0_sieve(19)
val () = assertloc(length(xs) = 8)
//
} (* end of [main0] *)
//
(* ****** ****** *)

(* end of [list0_sieve.dats] *)
