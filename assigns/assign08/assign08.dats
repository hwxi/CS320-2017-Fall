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
// Due date: Thursday, the 2nd of November
//
(* ****** ****** *)

#define
ATS_PACKNAME "ASSIGN08"

(* ****** ****** *)

#staload
"libats/ML/SATS/basis.sats"

(* ****** ****** *)
//
// HX: 5 points
// Given fopr, stream_tabulate
// returns a stream of fopr(0),
// fopr(1), fopr(2), fopr(3), ...
//
extern
fun
{a:t@ype}
stream_tabulate
  (fopr: cfun(int, a)): stream(a)
//
(* ****** ****** *)
//
// HX: 10 points
// Given a stream xs, a value r0 and
// a closure-function fopr, stream_scan
// returns a stream consisting of
// r0,
// r1 = fopr(r0, xs[0]),
// r2 = fopr(r1, xs[1]),
// r3 = fopr(r2, xs[2]),
// ...
//
extern
fun
{r:t@ype}
{a:t@ype}
stream_scan
( xs: stream(a)
, r0: r, fopr: cfun(r, a, r)): stream(r)
//
(* ****** ****** *)
//
// HX: 10 points
//
// Please implement the Euler transform:
// Given a sequence:
//   x(0), x(1), x(2), ..., x(n), ...
// We can form another sequence:
//   y(0), y(1), y(2), ..., y(n), ....
// such that each y(n) equals the the follow value
//
// x(n+2) - (x(n+2)-x(n+1))^2 / (x(n)+x(n+2)-2*x(n+1))
//
// You may assume that xs is infinite
//
extern
fun
EulerTrans(xs: stream(double)): stream(double)
//
(* ****** ****** *)
//
// HX: 10 points
//
(*
Please recall the following function in Assign05:
fpath_get_words_stringlst
Please use mergesort in class.dats to implement
the following function that returns a list of pairs
(n, w), where n is the number of times the word w occurring
in the novel you picked.
*)
//
extern
fun
fpath_get_nwords_stringlst
  (fpath: string): list0($tup(int,string))
//
(* ****** ****** *)

(* end of [assign08.dats] *)
