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
// Due: Friday, the 1st of December
//
(* ****** ****** *)
(*
--------
G1-1: 05
G1-2: 05
G1-3: 10
G1-4: 15
G1-5: 10
G1-6: 15
G1-7: 10
G1-8: 15
G1-9: 05
--------
You can choose 60 points and
no more in G1
--------
G2-1: 10
G2-2: 10
--------
You can choose to do both in G2
--------
100% = 65 points
--------
Absolutely no collaboration!!!
--------
Minimal partial credit if at all
--------
*)
(* ****** ****** *)
//
(*
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
#include
"./../../libraries/class.dats"
*)
//
(* ****** ****** *)
//
datatype
mytree(a:t@ype) =
| mytree_nil of ()
| mytree_cons of (mytree(a), a, mytree(a))
//
(* ****** ****** *)
//
datatype
lazytree_con
  (a:t@ype) =
| lazytree_nil of ()
| lazytree_cons of
    (lazytree(a), a, lazytree(a))
  // lazytree_con
//
where
lazytree(a:t@ype) = lazy(lazytree_con(a))
//
(* ****** ****** *)
//
// Questions in GROUP 1
//
(* ****** ****** *)

(*
//
// G1-1: 05 points
//
// please implement
// mytree_streamize_bfs that turns a
// given tree into a stream which enumerates
// the elements of the tree in a breadth-first
// fashion. For instance the following tree is
// enumerated as 0, 1, 2, 3, 4, 5, 6:
//
                  0
               1     2
              3 4     5
                 6   
*)
//
extern
fun
{a:t@ype}
mytree_streamize_bfs(t0: mytree(a)): stream(a)

(* ****** ****** *)
//
// G1-2: 05 points
//
// [mytree_postordize] enumerates a
// given mytree-value in the post-order manner:
// For each node, the elements in its left subtree
// are enumnerated; then the elements in its right
// subtree are enumerated; then the element stored
// in the node is enumerated.
//
extern
fun
{a:t@ype}
mytree_postordize(t0: mytree(a)): stream(a)
//
(* ****** ****** *)
//
// G1-3: 10 points
//
// A lazytree is infinite if it contains
// infinite many elements.
//
// Please produce a lazytree containing
// all of the natural numbers (that is, all
// of the non-negative integers) such that
// every natural number occurs only once in
// the lazytree and every subtree in this lazytree
// is infinite
//
extern
fun
lazytree_make_nats(): lazytree(int)
//
(* ****** ****** *)
//
// G1-4: 15 points
// Please find a way to enumerate a lazytree.
// Given a lazytree-value lt0, the following
// function lazytree_streamize returns a stream
// such that every element in lt0 is guaranteed
// to occur exactly once in the returned stream.
//
// Note that any correct solution must properly
// handle infinite lazytrees.
//
extern
fun
{a:t@ype}
lazytree_streamize(lazytree(a)): stream(a)
//
(* ****** ****** *)
//
// G1-5: 10 points
//
// Given a list of elements xs0 and a predicate, the
// function [mylist0_group] returns a stream of lists
// xss such that xs0 = flatten(xss) and each list in xss
// is non-empty and consists of only elements that satisfy
// the predicate or those that do not.
// For instance, given the following list xs0
//           [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
// and the predicate that tests if a number is a prime,
// the return stream xss should consist of:
//     [[0, 1], [2, 3], [4], [5], [6], [7], [8, 9]]
// 
//
extern
fun
{a:t@ype}
mylist0_group
(xs: list0(a), test: (a) -<cloref1> bool): stream(list0(a))
//
(* ****** ****** *)
//
// G1-6: 15 points
//
// A non-empty sequence of numbers forms a
// "drawdown" if every number in the sequence
// does not exceed the first one. The value of
// a drawdown is the difference between its first
// number and last number. Please implement a
// function that returns the leftmost segment
// of a given list whose drawdown value is the largest
// among all of the drawdown segments of the given list.
// Note that a segment of a list is a consecutive
// portion of the list.
//
extern
fun
list0_maxdrawdown(xs: list0(double)): $tup(int, int)
//
// Note that a segment is represented as a pair where
// the two integers are the indices of the first and
// last elements of the segment.
//
(* ****** ****** *)
//
// G1-7: 10 points
//
// CANNOT CHOOSE G1-8 IF YOU CHOOSE THIS ONE
//
// Given a list xs of positive doubles, please find
// the leftmost shortest subsequence of xs such that
// the product of the numbers in this subsequence is
// maximal (among all subsequences of xs).
//
extern
fun
mylist0_max_product1(xs0: list0(double)): list0(int)
//
// Note that the returned integer list consists of the
// indices of the elements of the found subsequence.
// Also, your solution may be tested on a list of 1M
// elements.
//
(* ****** ****** *)
//
// G1-8: 15 points
//
// CANNOT CHOOSE G1-7 IF YOU CHOOSE THIS ONE
//
// Given a list xs of doubles, some of which may be
// negative.
//
// Please find the leftmost shortest subsequence of xs0
// such that the product of the numbers in this subsequence
// is maximal (among all subsequences of xs).
//
extern
fun
mylist0_max_product2(xs0: list0(double)): list0(int)
//
// Note that the returned integer list consists of the
// indices of the elements of the found subsequence.
// Also, your solution may be tested on a list of 1M
// elements.
//
(* ****** ****** *)
//
// G1-9: 05 points
// Please implement CSP-translate the following given
// implementation of list0_merge into list0_kmerge of
// the following interface:
//
extern
fun
{a:t@ype}
list0_merge
( xs: list0(a)
, ys: list0(a), cmp: cfun(a, a, int)): list0(a)
//
implement
{a}(*tmp*)
list0_merge
(xs0, ys0, cmp) = let
//
fun
auxlst
( xs0: list0(a)
, ys0: list0(a)
) : list0(a) = (
//
case+ xs0 of
| list0_nil() => ys0
| list0_cons
    (x1, xs1) => (
    case+ ys0 of
    | list0_nil() => xs0
    | list0_cons
        (y1, ys1) => let
        val sgn = cmp(x1, y1)
      in
        if (sgn <= 0)
          then list0_cons(x1, auxlst(xs1, ys0))
          else list0_cons(y1, auxlst(xs0, ys1))
        // end of [if]
      end // end of [list0_cons]
  ) (* end of [list0_cons] *)
//
) (* end of [auxlst] *)
//
in
  auxlst(xs0, ys0)
end // end of [list0_merge]
//
extern
fun
{a:t@ype}
list0_kmerge
( xs: list0(a)
, ys: list0(a)
, cmp: cfun(a, a, int), cfun(list0(a), void)): void
//
(* ****** ****** *)
//
// Questions in GROUP 2
//
(* ****** ****** *)
//
// G2-1: 10 points
//
// Solving Sudoku based on depth-first search
//
// Sudoku is a popular game:
// http://www.7sudoku.com/view-puzzle?date=20171124
//
// A Sudoku board is a 3-by-3 matrix of 3-by-3
// matrices of integer digits. Note that an entry
// is considered blank if the digit 0 is stored
// in it.
//
// A partial board is one that may contain digit 0.
// For instance, the following board is partial:
//
(*
-----------------
     |     |  7 5 
  4  |9 8  |      
  8  |     |      
-----------------
3   2|  1  |5     
9 1  |7    |      
     |    2|    6 
-----------------
     |  6 4|    1 
     |  2  |6     
4    |    5|    2 
-----------------
*)
//
// A full board is one that contains only non-zero
// digits. For instance, the following board is full:
//
(*
-----------------
1 2 9|6 4 3|8 7 5 
5 4 7|9 8 1|2 6 3 
6 8 3|2 5 7|1 4 9 
-----------------
3 6 2|4 1 8|5 9 7 
9 1 5|7 3 6|4 2 8 
8 7 4|5 9 2|3 1 6 
-----------------
2 9 8|3 6 4|7 5 1 
7 5 1|8 2 9|6 3 4 
4 3 6|1 7 5|9 8 2 
-----------------
*)
//
// A board extends another one if
// the former can be obtained by changing
// some of the zero entries in the latter
// into non-zero entries.
//
// The function Sudoku_search takes
// a partial board and returns a stream of
// *all* full boards that extend the partial
// board.
//
typedef
board =
matrix0(matrix0(int))
//
extern
fun Sudoku_search(xss: board): stream(board)
//
(* ****** ****** *)
(*
//
// See midterm2-g2-2
//
// G2-2: 10 points
//
// If two events arrive within ms millisecs,
// they belong to the same group (represented
// as a list). The following function translates
// a given event-stream of elements into another
// event-stream of groups of elements such that
// the last element in one group is separated by
// at least ms millisecs from the first element
// in the following group.
//
extern
fun
EStream_group_within
  {a:t@ype}
  (xs: EStream(a), ms: int): EStream(list0(a))
//
*)
(* ****** ****** *)

(* end of [midterm2.dats] *)
