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
ATS_PACKNAME "ASSIGN07-2"

(* ****** ****** *)

#staload
"libats/ML/SATS/basis.sats"
#staload
"libats/ML/SATS/list0.sats"
#staload
"libats/ML/SATS/stream.sats"

(* ****** ****** *)
//
#define
list0_sing(x)
list0_cons(x, list0_nil())
//
#define
list0_pair(x1, x2)
list0_cons(x1, list0_cons(x2, list0_nil()))
//
(* ****** ****** *)
//
// A datatype for
// arithmetic expressions that may
// contain one variable
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
// HX: 15 points
//
// [expr_normalize] turns a given
// expr-value into a list of integers
// representing a polynomial in one variable
// (which the expr-value refers to).
// For instance, X*X + 2*X - 1 is represented
// as [-1, 2, 1]
// As a valid representation of a polynomial,
// a list (of integers) should not have trailing
// zeros. For instance, the abolve polynomial can
// not be represented as [-1, 2, 1, 0]
//
extern
fun
expr_normalize(e0: expr): list0(int)
//
(* ****** ****** *)
//
extern
fun
equal_expr_expr(e1: expr, e2: expr): bool
//
(* ****** ****** *)
//
implement
equal_expr_expr
  (e1, e2) =
(
list0_equal<int>
(expr_normalize(e1), expr_normalize(e2), lam(x, y) => x = y)
)
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
// HX: 10 points
//
// Given a list xs, [streamize_list_split]
// enumerates all the possible splits (ys, zs)
// of xs such that ys@zs = xs and neither us
// nor zs is empty.
//
// For instance, [1,2,3,4] has the following
// three possible splits:
// ([1], [2,3,4]), ([1,2], [3,4]), ([1,2,3], [4])
//
extern
fun
{a:t@ype}
streamize_list_split
  (list0(a)): stream($tup(list0(a), list0(a)))
//
(* ****** ****** *)

implement
{a}(*tmp*)
list2mytrees(xs) =
(
case+ xs of
| list0_nil() =>
  list0_nil()
| list0_sing(x) =>
  list0_sing(mytree_sing(x))
| list0_cons(_, _) =>
  let
    typedef
    yszs =
    $tup(list0(a), list0(a))
    val
    yszss =
    stream2list0
    (streamize_list_split<a>(xs))
  in
    list0_mapjoin<yszs><mytree(a)>
    ( yszss
    , lam($tup(ys, zs)) =>
      list0_crosswith<mytree(a), mytree(a)>
      ( list2mytrees<a>(ys)
      , list2mytrees<a>(zs), lam(ty, tz) => mytree_pair(ty, tz))
    )
  end // end of [list0_cons]
)

(* ****** ****** *)

(* end of [assign07-2.dats] *)
