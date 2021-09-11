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
// Instructor: Hongwei Xi (hwxiATcsDOTbuDOTedu)
//
(* ****** ****** *)
//
// Due date: Thursday, the 14th of September
//
(* ****** ****** *)

#define
ATS_PACKNAME "ASSIGN01"

(* ****** ****** *)

(*
The following function ##fun(fact) computes the factorials:
//
fun
fact(n: int): int =
  if n >= 1 then n * fact(n-1) else 1
//
Please implement ##fun(try_fact) based on ##fun(fact) such that a call
to ##fun(try_fact) returns the first natural number n satisfying the
equation fact(n) = 0. The interface for ##fun(try_fact) is given as
follows:
//
fun try_fact(): int // it returns the first [n] such that fact(n) = 0
//
*)

(* ****** ****** *)
//
extern
fun
fact(n: int): int
//
implement
fact =
(fix f(n:int): int => if n > 0 then n*f(n-1) else 1)
//
(* ****** ****** *)
//
extern
fun
try_fact(): int // it returns the first [n] such that fact(n) = 0
//
(* ****** ****** *)
//
(*
Given a natural number n, ##fun(intsqrt) returns the integer k
satisfying k*k <= n < (k+1)*(k+1). Please give an implementation of
##fun(intsqrt) that is of the time-complexity O(log(n)). The interface
for ##fun(intsqrt) is given as follows:
*)
//
extern
fun
intsqrt(n: int): int // it return the largest integer k satisfying k*k <= n
//
(* ****** ****** *)

(* end of [assign01.dats] *)
