(* ****** ****** *)
//
// HX:
// How to compile:
// patscc -o assign01_sol assign01_sol.dats
//
// How to test it:
// ./assign01_sol
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)

#include "./../assign01.dats"

(* ****** ****** *)

(*
implement try_fact() = ...
*)
#include "./try_fact.dats"

(* ****** ****** *)

(*
implement intsqrt(n0) = ...
*)
#include "./intsqrt.dats"

(* ****** ****** *)
//
// HX-2017-01-19:
// Please do not modify the following code
//
(* ****** ****** *)

#ifdef
MAIN_NONE
#then
#else

implement
main0() = () where
{
//
//
val () =
println!("try_fact() = ", try_fact())
//
val () =
println! ("intsqrt(1000) = ", intsqrt(1000))
val () =
println! ("intsqrt(1023) = ", intsqrt(1023))
val () =
println! ("intsqrt(1024) = ", intsqrt(1024))
//
} (* end of [main0] *)

#endif // end of #ifdef(MAIN_NONE)

(* ****** ****** *)

(* end of [assign01_sol.dats] *)
