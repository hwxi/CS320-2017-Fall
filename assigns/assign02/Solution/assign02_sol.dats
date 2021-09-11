(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign02_sol_dats
// How to compile:
// myatscc assign02_sol.dats
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

#include "./../assign02.dats"

(* ****** ****** *)
//
implement
string_make_tabulate
  (n, fopr) = let
  val n = g1ofg0(n)
  val () = assertloc(n >= 0)
in
//
string_implode
  (int_list0_map_cloref<char>(n, lam(i) => fopr(i)))
//
end // end of [string_make_tabulate]
//
(* ****** ****** *)
//
(*
Put your
implementation of
staircase_count in staircase_count.dats
*)
#include "./staircase_count.dats"
//
(* ****** ****** *)
//
// HX-2017-09-14:
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
val
aaa =
string_make_tabulate(3, lam(i) => 'a')
//
val () =
println! ("aaa = ", aaa)
//
val () =
println!
("staircase_count() = ", staircase_count(10))
//
} (* end of [main0] *)

#endif // end of #ifdef(MAIN_NONE)

(* ****** ****** *)

(* end of [assign02_sol.dats] *)
