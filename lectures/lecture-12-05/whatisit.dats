(* ****** ****** *)

#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"

(* ****** ****** *)

fun{a:t@ype}
whatisit(xs: list0(a)): list0(a) =
(
case+ xs of
| list0_nil() =>
  list0_nil()
| list0_cons(x, xs) =>
  list0_cons(x, whatisit(whatisit(xs)))
)

(* ****** ****** *)

(*

T(n) = 2*T(n-1) + 1 // T(n) = O(2^n) // exponential time

*)

val xs =
list0_make_intrange(0, 100)
val () = println! ("xs = ", xs)
val ys = whatisit<int>(xs) // this can never return as 2^100 is too large
val () = println! ("ys = ", ys)

(* ****** ****** *)

//
// if you want to try, please make sure that you use GC:
// myatscc --gc
//

(* ****** ****** *)

implement main0() = ()

(* ****** ****** *)

(* end of [whatisit.dats] *)
