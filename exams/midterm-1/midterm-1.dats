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
// Due: Friday, the 20th of October
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
#include
"./../../libraries/class.dats"
//
(* ****** ****** *)
//
// Questions in GROUP 1
//
(* ****** ****** *)
//
// ML: 5 points
//
// Please implement the sieve of Eratosthenes by
// following the list0_remdup function defined in
// http://ats-lang.sourceforge.net/DOCUMENT/ATS2FUNCRASH/HTML/c548.html
// The function sieve will return a list of the prime numbers less than
// or equal to n
//
extern
fun
list0_sieve(n: int): list0(int)
//
(* ****** ****** *)
//
// HX: 5 points
//
// Given a list xs and integer i, list0_get_at_opt
// returns Some0(x) for x being element i in xs or
// None0() if there is no element i in xs. Please
// give an implementation of list0_get_at_opt based on
// a direct call to list0_foldleft (with some use of
// exception)
//
extern
fun
{a:t@ype}
list0_get_at_opt(xs: list0(a), i: int): option0(a)
//
(* ****** ****** *)
(*
//
HX: 5 points
//
Given a list of numbers:

x1, x2, ..., xn

the function [list0_average] returns another list of numbers

y1, y2, ..., yn

`such that

y1 = x1, y2 = (x1+x2)/2, ..., yn = (x1+x2+...+xn)/n

For instance,

(1.0, 2.0, 3.0) is transformed into (1.0, 1.5, 2.0)
//
*)
extern
fun
list0_average
  (xs: list0 (double)): list0 (double)
//
(* ****** ****** *)
//
// A datatype for
// arithmetic expressions that may contain one variable
//
datatype expr =
| X  of () // variable
| I  of (int) // constant
| Add of (expr, expr) // addition
| Sub of (expr, expr) // subtraction
| Mul of (expr, expr) // multiplication
//
// for example:
// Mult(Add(I(3), X()), I(2)) means (3 + x)*2
//
(* ****** ****** *)
//
extern
fun
print_expr(expr): void
//
overload print with print_expr
//
implement
print_expr(e0) =
(
case+ e0 of
| X() => print "X"
| I(i) => print (i)
| Add(e1, e2) =>
  print!("(", e1, " + ", e2, ")")
| Sub(e1, e2) =>
  print!("(", e1, " - ", e2, ")")
| Mul(e1, e2) =>
  print!("(", e1, " * ", e2, ")")
)
//
(* ****** ****** *)
//
// ML: 5 points
//
// Please create a new expression equivalent to the
// original such that
//   nothing is added with 0
//   nothing is subtracted by 0
//   nothing is multiplied with 0 or 1
//
extern
fun
expr_simplify(e0: expr): expr
//
(* ****** ****** *)
//
// ML: 5 points
//
// Please compile the expression into a function from
// int to int
//
extern
fun
expr_compile(e0: expr): cfun(int,int)
//
(* ****** ****** *)
//
// HX: 10 points
// Please implement the following function for testing
// whether two given expressions are algebraically equal:
// For instance: (x+1)*(x-1) = x*x - 1
// 
//
extern
fun
equal_expr_expr(e1: expr, e2: expr): bool
//
(* ****** ****** *)
//
// Please implement a function
// for producing multiplication tables
// for bases between 2 and 16.
//
// For instance, the following displayed table
// is for the base 2:
(*
1 x 1 = 01
*)
//
// For instance, the following displayed table
// is for the base 3:
(*
1x1 = 01
1x2 = 02 2x2 = 11
*)
//
// For instance, the following displayed table
// is for the base 4:
(*
1x1 = 01
1x2 = 02 2x2 = 10
1x3 = 03 2x3 = 12 3x3 = 21
*)
//
// For instance, the following displayed table
// is for the base 10:
//
(*
1x1 = 01
1x2 = 02  2x2 = 04
1x3 = 03  2x3 = 06  3x3 = 09
1x4 = 04  2x4 = 08  3x4 = 12  4x4 = 16
1x5 = 05  2x5 = 10  3x5 = 15  4x5 = 20  5x5 = 25
1x6 = 06  2x6 = 12  3x6 = 18  4x6 = 24  5x6 = 30  6x6 = 36
1x7 = 07  2x7 = 14  3x7 = 21  4x7 = 28  5x7 = 35  6x7 = 42  7x7 = 49
1x8 = 08  2x8 = 16  3x8 = 24  4x8 = 32  5x8 = 40  6x8 = 48  7x8 = 56  8x8 = 64
1x9 = 09  2x9 = 18  3x9 = 27  4x9 = 36  5x9 = 45  6x9 = 54  7x9 = 63  8x9 = 72  9x9 = 81
*)
//
extern
fun // 5 points
multable_10(): void
//
extern
fun // 10 points
multable_base(base: int): void
//
// You can either implement
// multable_10 or multable_base, but *not* both
// multable_10 is only for the base 10
// multable_base is for any base between 2 and 16
//
// In any implementation, a loop function should be
// present to print the rows in a multiplication table.
//
(* ****** ****** *)
//
// Please implement the absolute value and addition
// functions for numbers based on the two's complement
// representation of *64* bits.
//
// Please assume BIG endianness for the representation,
// that is, the leftmost bit is the highest bit.
//
#define NBIT 64
//
typedef intrep = array0(bool)
//
(*
Note that intrep is for lists of length 64 and each
element in such a list is either false(0) or true(1).
*)
//
extern
fun // for n >= 0
int2intrep
  (n: int): intrep
//
implement
int2intrep(n) = let
//
fun
aux
(
 n: int
) : list0(bool) =
(
//
if n > 0
 then
 list0_cons
 (
 int2bool(n%2), aux(n/2)
 )
 else list0_nil((*void*))
) (* end of [aux] *)
//
val
res = aux(n)
val
res =
list0_reverse(res)
val
res =
int_foldleft
( NBIT-length(res)
, res
, lam(res, _) => list0_cons(false, res))
//
in
  array0_make_list(res)
end // end of [int2intrep]
//
extern
fun // for n >= 0
print_intrep(xs: intrep): void
//
implement
print_intrep
(
  xs
) =
int_foreach
( size(xs)
, lam(i) => print(bool2int(xs[i]))
)
//
(* ****** ****** *)
//
exception OverflowExn of ()
//
// In case of arithmetic overflow, the
// OverflowExn exception must be raised.
//
extern
fun
abs_intrep(x0: intrep): intrep // 10 points
//
extern
fun
add_intrep_intrep(x1: intrep, x2: intrep): intrep // 10 points
//
// Note that a solution is not accepted that turns
// intreps into ints and then turns ints back into intreps.
//
(* ****** ****** *)
//
// Questions in GROUP 2
//
(* ****** ****** *)
//
datatype
mytree(a:t@ype) =
| mytree_sing of (a)
| mytree_pair of (mytree(a), mytree(a))
//
(* ****** ****** *)
//
extern
fun
{a:t@ype}
mytree_flatten(t0: mytree(a)): list0(a)
//
(* ****** ****** *)

implement
{a}(*tmp*)
mytree_flatten
  (t0) =
(
case+ t0 of
| mytree_sing(x) => list0_sing(x)
| mytree_pair(xs, ys) =>
  mytree_flatten(xs) + mytree_flatten(ys)
)

(* ****** ****** *)
//
// HX: 10 points
//
// Given a list, list2mytrees returns a
// list of all of the mytree-values that
// can be flattend to the given list by a
// call to mytree_flatten
//
extern
fun
{a:t@ype}
list2mytrees(list0(a)): list0(mytree(a))
//
(* ****** ****** *)
//
datatype
mylist(a:t@ype) =
| mylist_nil of ()
| mylist_cons of (a, mylist(a))
| mylist_snoc of (mylist(a), a)
| mylist_append of (mylist(a), mylist(a))
| mylist_reverse of (mylist(a))
//
(* ****** ****** *)
//
// HX: 10 points
//
// Please implement the following
// combinator for mylist in a one-pass
// style, that is, each element in the given
// mylist-value can be visited only once. E.g.,
// turning mylist into list0 is not allowed as
// it is not a one-pass style.
//
(* ****** ****** *)
//
extern
fun{
res:t@ype
}{a:t@ype}
mylist_foldleft
( xs: mylist(a)
, r0: res, fopr: cfun(res, a, res)): res
//
(* ****** ****** *)
//
// HX: 10 points
//
// Given a list xs of integers, the function
// [mylist_submaxord] returns the longest leftmost
// subsequence of xs that is ordered.
//
// If xs = (1, 3, 2, 4), then the result is (1, 3, 4)
// If xs = (~1, 3, 2, 2, 4), then the result is (~1, 2, 2, 4)
//
// If xs = (4, 1, 2, 1, 3, 8, 9, 5, 6, 7, 1, 1, 1, 1, 1), then the result is (1, 1, 1, 1, 1, 1, 1)
//
extern
fun
list0_submaxord(xs: list0(int)): list0(int)
//
(* ****** ****** *)

(* end of [midterm-1.dats] *)
