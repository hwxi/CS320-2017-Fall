(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)
//
(*
implement
list0_submaxord(xs) = ...
*)
(* ****** ****** *)

implement
main0 () =
{
//
val () =
println!
("Testing for list0_submaxord")
//
val xs =
g0ofg1
(
$list{int}
(4, 1, 2, 1, 3, 8, 9, 5, 6, 7, 1, 1, 1, 1, 1)
)
//
val ys = list0_submaxord(xs)
//
val () = println! ("xs = ", xs)
val () = println! ("ys = ", ys)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [list0_submaxord.dats] *)
