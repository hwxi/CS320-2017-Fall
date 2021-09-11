(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)
//
(*
implement
expr_simplify(e0) = ...
*)
//
(* ****** ****** *)
//
implement
main0((*void*)) =
{
//
val
e0 =
Sub
(
Mul
(
Add(I(0), I(1)), X()
)
,
I(0)
)
//
val e1 = expr_simplify(e0)
//
val () = println! ("e0 = ", e0)
val () = println! ("e1 = ", e1)
//
} (* end of [main0] *)
//
(* ****** ****** *)

(* end of [expr_simplify.dats] *)
