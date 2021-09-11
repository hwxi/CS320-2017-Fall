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
// Due date: Thursday, the 28th of September
//
(* ****** ****** *)

#define
ATS_PACKNAME "ASSIGN03"

(* ****** ****** *)
//
staload
"libats/ML/SATS/basis.sats"
//
(* ****** ****** *)
//
// intrep for
// representing
// non-negative integers
//
typedef intrep = list0(int)
//
(* ****** ****** *)
//
#define BASE 10
// HX: this may change!!!
//
(* ****** ****** *)
//
// For instance,
//
// For BASE=10
// [] represents 0
// [1] represents 1
// [2,1] represents 12
// [3,2,1] represents 123
//
// For BASE = 2
// [] represents 0
// [1] represents 1
// [1,1] represents 3
// [0,0,0,1] represents 8
//
(* ****** ****** *)
//
extern
fun // 5 points // successor
succ_intrep(intrep): intrep
//
extern
fun // 5 points // addition
add_intrep_intrep(intrep, intrep): intrep
//
extern
fun // 5 points // multiplication
mul_int_intrep(int, intrep): intrep
//
extern
fun // 5 points // multiplication
mul_intrep_intrep(intrep, intrep): intrep
//
(* ****** ****** *)
//
extern
fun // 5 points
intrep_make_int(int): intrep // for non-negative int
//
(* ****** ****** *)
//
extern
fun // 5 points
print_intrep(intrep): int
//
(* ****** ****** *)

(*
//
Hacking for fun:
Please study the code in the following page and then
change it to create version that can handle large factorials:
https://ats-lang.github.io/DOCUMENT/ATS2FUNCRASH/LECTURE/06-20/CODE/Factorial.html
//
// For instance, you should be able to find the factorial of 1000.
//
*)
extern
fun // 10 *bonus* points
Factorial(n: int): intrep
//
(* ****** ****** *)

(* end of [assign03.dats] *)
