(* ****** ****** *)
//
// Title:
// Concepts of
// Programming Languages
// Course: CAS CS 320
//
// Semester: Fall, 2017
//
// Classroom: COM 101
// Class Time: TR 12:30-1:45
//
// Instructor:
// Hongwei Xi (hwxiATcsDOTbuDOTedu)
//
(* ****** ****** *)
//
// Due date: Thursday, the 26th of October
//
(* ****** ****** *)

#define
ATS_PACKNAME "ASSIGN07"

(* ****** ****** *)

#staload
"libats/ML/SATS/basis.sats"

(* ****** ****** *)
//
(*
//
// HX: 5 points
//
Given a value x0, and a function f,
stream_repeat returns the stream of
x0, f(x0), f(f(x0)), f(f(f(x0))), etc
*)
//
extern
fun
{A:t@ype}
stream_repeat
  (x0: A, f: cfun(A,A)): stream(A)
//
(* ****** ****** *)
//
extern
fun{}
stream_sqroot(x0: double): stream(double)
//
implement
{}(*tmp*)
stream_sqroot(x0) = let
//
val () = assertloc(x0 >= 0.0)
//
in
  stream_repeat<double>(1.0, lam(x) => (x + x0/x) / 2)
end // end of [stream_sqroot]
//
(* ****** ****** *)
//
extern
fun
{a:t@ype}
list0_find_suffix
( xs: list0(INV(a))
, test: cfun(list0(a), bool)): list0(a)
//
implement
{a}(*tmp*)
list0_find_suffix
  (xs, test) =
  loop(xs) where
{
//
fun
loop
(
xs: list0(a)
) : list0(a) =
(
case+ xs of
| list0_nil() =>
  list0_nil((*void*))
| list0_cons(x0, xs1) =>
  if test(xs) then xs else loop(xs1)
)
//
} (* end of [list0_find_suffix] *)
//
(* ****** ****** *)
//
// HX: 10 points
// Please implement [stream_find_suffix] by
// following the implementation of [list0_find_suffix]
//
extern
fun
{A:t@ype}
stream_find_suffix
(xs: stream(A), test: cfun(stream(A), bool)): stream(A)
//
(* ****** ****** *)

(* end of [assign07.dats] *)
