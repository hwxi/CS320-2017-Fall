(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign03_sol_dats
// How to compile:
// myatscc assign03_sol.dats
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

#include "./assign03.dats"

(* ****** ****** *)
//
extern
fun
double_intrep(xs: intrep): intrep
//
implement
double_intrep
  (xs) =
(
case+ xs of
| list0_nil() =>
  list0_nil()
| list0_cons(x, xs) => let
    val x2 = x + x
    val d0 = x2 % BASE
    val d1 = x2 / BASE
    val res = double_intrep(xs)
  in
    list0_cons(d0, if d1 = 0 then res else succ_intrep(res))
  end // end of [list0_cons]
)
//
(* ****** ****** *)

(* end of [assign03_sol.dats] *)
