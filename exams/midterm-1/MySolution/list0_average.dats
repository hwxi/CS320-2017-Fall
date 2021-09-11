(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)
//
(*
implement
list0_average(xs) = ...
*)
//
(* ****** ****** *)

implement
main0() = () where
{
//
val xs =
g0ofg1
(
$list{double}
(1.0, 2.0, 3.0, 4.0, 5.0)
)
//
val ys = list0_average(xs)
val () = println! ("ys = ", ys)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [list0_average.dats] *)
