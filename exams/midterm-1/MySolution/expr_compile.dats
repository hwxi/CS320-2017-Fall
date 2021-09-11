(* ****** ****** *)
//
#include "./../midterm-1.dats"
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
val () = println! ("e0 = ", e0)
val () = println! ("f0(10) = ", expr_compile(e0)(10))
//
} (* end of [main0] *)
//
(* ****** ****** *)

(* end of [expr_compile.dats] *)
