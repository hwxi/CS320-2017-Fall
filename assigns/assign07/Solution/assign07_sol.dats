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
implement
{A}(*tmp*)
stream_repeat
  (x0, f0) = let
//
fun
helper
(
  x0: A
, f0: cfun(A, A)
) : stream(A) = $delay
(
  stream_cons(x0, helper(f0(x0), f0))
)
//
in helper(x0, f0) end
//
(* ****** ****** *)

implement
{A}(*tmp*)
stream_find_suffix
  (xs, test) =
(
case+ !xs of
| stream_nil() =>
  (
    stream_make_nil()
  ) (* stream_nil() *)
| stream_cons(_, xs2) =>
  if test(xs)
    then xs else stream_find_suffix<A>(xs2, test)
  // end of [if] // end of [stream_cons]
) (* end of [stream_find_suffix] *)

(* ****** ****** *)
//
#define
EPISILON 10E-8
//
(* ****** ****** *)

implement
main0() = () where
{
(* ****** ****** *)
//
implement
fprint_stream$limit<>() = 10
//
(* ****** ****** *)
//
val
sqrt2 =
stream_sqroot(2.0)
val () =
println! ("sqrt2 = ", sqrt2)
//
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
val-stream_cons(sqrt2, _) = !sqrt2
val ((*void*)) = println!("The square root of 2 is: ", sqrt2)
//
val
sqrt3 =
stream_sqroot(3.0)
//
val () =
println! ("sqrt3 = ", sqrt3)
//
val sqrt3 =
stream_find_suffix<double>
( sqrt3
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
val-stream_cons(sqrt3, _) = !sqrt3
val ((*void*)) = println!("The square root of 3 is: ", sqrt3)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [assign07_sol.dats] *)
