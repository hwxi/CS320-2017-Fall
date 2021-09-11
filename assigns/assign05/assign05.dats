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
// Due date: Thursday, the 12th of October
//
(* ****** ****** *)

#define ATS_PACKNAME "ASSIGN05"

(* ****** ****** *)

#staload "libats/ML/SATS/basis.sats"

(* ****** ****** *)
//
// Q1: 20 points
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

(*
fun
get_at(xs, i) =
(
case+ xs of
| mylist_append(xs1, xs2) =>
  (
  try get_at(xs1, i)
  with ~MylistSubscriptExn() => get_at(xs2, i-length(xs)
  )
| mylist_reverse(xs1) =>
  get_at(xs1, length(xs1) - 1 - i)
)
*)

(* ****** ****** *)

exception
MylistSubscriptExn of ()

(* ****** ****** *)
//
(*
HX: 
The following one is implemented
*)
//
extern
fun
{a:t@ype}
mylist2list0(xs: mylist(a)): list0(a)
//
(* ****** ****** *)
//
(*
Please implement the following one
*directly* (that is, not turning mylist
into list0 first):
*)
extern
fun
{a:t@ype}
mylist_get_at(xs: mylist(a), i: int): a
//
// mylist_get_at(xs, i) =
// list_get_at(mylist2list0(xs), i)
// if [i] is within bounds, or the MylistSubscriptExn
// should be raised.
//
(* ****** ****** *)

(*
//
// Q2: 20 points
// Two styles of error handling
//
// The permutations of 0,1,2 can be ordered
// according to the lexicographic ordering as follows:
//
// (0,1,2) < (0,2,1) < (1,0,2) < (1,2,0) < (2,0,1) < (2,1,0)
//
// This ordering can be readily generalized to the permutations
// of n numbers, which n is positive. Given a permutation xs of
// the first n natural numbers, next_permuation(xs) returns the next
// permutation following xs if it exists, and None0() otherwise.
//
// examples:
//
// next_permutation_exn( [1,0,2] ) = [1,2,0]
// next_permutation_exn( [2,1,0] ) = $raise(LastPermExn())
// next_permutation_exn( [2,10,3,8,4,1,0,6,9,7,5] ) = [2,10,3,8,4,1,0,7,5,6,9]
//
// next_permutation_opt( [1,0,2] ) = Some0( [1,2,0] )
// next_permutation_opt( [2,1,0] ) = None0()
// next_permutation_opt( [2,10,3,8,4,1,0,6,9,7,5] ) = Some0( [2,10,3,8,4,1,0,7,5,6,9] )
//
*)
//
exception LastPermExn of ()
//
extern fun
next_permutation_exn(xs: list0(int)): list0(int)
//
extern fun
next_permutation_opt(xs: list0(int)): option0(list0(int))
//
(* ****** ****** *)
//
(*
//
// Q3: 20 points
// Given a path to a file, the following function
// returns a list of all the words found in the file.
// Note that every occurrence of a word should be included
// in the returned list.
//
*)
extern
fun
fpath_get_words_stringlst(fpath: string): list0(string)
//
(* ****** ****** *)

(* end of [assign05.dats] *)
