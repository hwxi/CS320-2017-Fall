(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)
(*
implement
{a}(*tmp*)
list2mytrees(xs) = ...
*)
(* ****** ****** *)

implement
main0() = () where
{
//
val xs =
g0ofg1($list{int}(1, 2, 3))
val ys = list2mytrees<int>(xs)
val () = println! ("|ys(3)| = ", length(ys))
//
val xs =
g0ofg1($list{int}(1, 2, 3, 4))
val ys = list2mytrees<int>(xs)
val () = println! ("|ys(4)| = ", length(ys))
//
val xs =
g0ofg1($list{int}(1, 2, 3, 4, 5))
val ys = list2mytrees<int>(xs)
val () = println! ("|ys(5)| = ", length(ys))
//
} (* end of [val] *)

(* ****** ****** *)

(* end of [list2mytrees.dats] *)
