(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign08_sol_dats
// How to compile:
// myatscc assign08_sol.dats
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

#include "./../assign08.dats"

(* ****** ****** *)
//
#define EPISILON 10E-8
//
(* ****** ****** *)
//
// HX:
// [pi_stream] returns a stream
// consisting of all of the partial
// sums of: 1 - 1/3 + 1/5 - 1/7 + 1/9 - ...
//
extern
fun
pi_stream
(
// argless
) : stream(double)
//
implement
pi_stream() =
stream_scan<double><double>
(
stream_tabulate<double>
( lam(n) => (1.0-2*(n%2)) / (2*n+1))
, 0.0(*r0*), lam(r, x) => r+x)
//
(* ****** ****** *)

implement
main0((*void*)) =
{
//
val N = 1000000
//
val xs = pi_stream()
val () = println! ("PI = ", 4 * xs[N])
//
} (* end of [main] *)

(* ****** ****** *)

(* end of [assign08_sol.dats] *)
