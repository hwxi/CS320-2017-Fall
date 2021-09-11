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
// Due date: Tuesday, the 28th of November
//
(* ****** ****** *)

(*
//
// HX: 20 points
//
Please first translate the following implementation
of array0_insertion_sort (written in direct style) into
one for array0_insertion_ksort in CPS-tyle. Then try to
use the implementation of array0_insertion_ksort as the
basis for animating insertion-sort. Please use the buttons
implemented in Timer for controlling the animation.
//
*)

(* ****** ****** *)
//
extern
fun
{a:t@ype}
array0_swap
(A: array0(a), i: int, j: int): void
extern
fun
{a:t@ype}
array0_insertion_sort
(
 A: array0(a), cmp: (a, a) -<cloref1> int
) : void // end of [array0_insertion_sort]
//
(* ****** ****** *)
//
extern
fun
{a:t@ype}
array0_kswap
(A: array0(a), i: int, j: int, k0: cfun(void)): void
//
extern
fun
{a:t@ype}
array0_insertion_ksort
(
 A: array0(a), cmp: (a, a) -<cloref1> int, k0: cfun(void)
) : void // end of [array0_insertion_ksort]
//
(* ****** ****** *)

implement
{a:t@ype}
array0_insertion_sort
  (A, cmp) = let
//
val n = size(A)
//
fun
insord
(i: int): void =
if
(i > 0)
then let
//
val
sgn =
cmp(A[i-1], A[i])
//
in
//
if
(sgn > 0)
then
(array0_swap(A, i-1, i); insord(i-1))
//
end // end of [insord]
//
fun
auxsort
(i: int): void =
if
(i < n)
then
{
  val () = insord(i); val () = auxsort(i+1)
}
//
in
  auxsort(0)
end // end of [array0_insertion_sort]

(* ****** ****** *)

(* end of [insertion_sort.dats] *)
