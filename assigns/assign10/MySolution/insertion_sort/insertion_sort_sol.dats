(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share\
/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)
//
#include
"./../../../../libraries/class.dats"
#include
"./../../../../libraries/myclass.dats"
//
(* ****** ****** *)
//
#staload UN = $UNSAFE
#include "./../../insertion_sort.dats"
//
(* ****** ****** *)

(*
extern
fun
{a:t@ype}
array0_insertion_ksort
(
 A: array0(a), cmp: (a, a) -<cloref1> int, k0: cfun(void)
) : void // end of [array0_insertion_ksort]
*)
//
// HX: dummy implementation
//
implement
{a}(*tmp*)
array0_insertion_ksort(A, cmp, k0) = k0()
//
(* ****** ****** *)

(* end of [insertion_sort_sol.dats] *)
