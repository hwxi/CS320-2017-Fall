(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign07_sol_dats
// How to compile:
// myatscc assign07_sol.dats
//
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
"./../../../libraries/class.dats"
#include
"./../../../libraries/myclass.dats"
//
(* ****** ****** *)

#include "./../assign07.dats"

(* ****** ****** *)
//
#define
EPISILON 10E-6
//
(* ****** ****** *)

implement
main0() = () where
{
//
val sqrt2 =
stream_sqroot(2.0)
val sqrt2 =
stream_find_suffix<double>
( sqrt2
, lam(xs) =>
  (
    case- !xs of
    | stream_cons(x1, xs1) =>
      (
        case- !xs1 of
        | stream_cons(x2, xs2) => abs(x2-x1) < x2*EPISILON
      )
  )
)
//
val-stream_cons(sqrt2, _) = !sqrt2
val ((*void*)) = println!("The square root of 2 is: ", sqrt2)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [assign07_sol.dats] *)
