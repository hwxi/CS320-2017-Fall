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
// Due date: Thursday, the 21st of September
//
(* ****** ****** *)

#define
ATS_PACKNAME "ASSIGN02"

(* ****** ****** *)
//
// HX: 5 points
//
// Please use
// int_foldleft to implement tally_square
//
extern
fun
tally_square(n: int): int // = 1*1 + 2*2 + ... + n*n
//
(* ****** ****** *)
//
// The implementation
// for [string_make_tabulate] is given.
//
extern
fun
string_make_tabulate
  (n: int, fopr: int -<cloref1> char): string
//
// HX: 5 points
// Plese use [string_make_tabulate] to implement
// the following function [Hello] that returns the
// string "Hello":
//
extern fun Hello(): string // = "Hello"
//
(* ****** ****** *)
//
(*
//
// LG: 10 points
//
A staircase has n steps. At every step you may choose to go up one
step or go up three steps (by skipping two). Write a tail-recursive
function that gives the total number of ways you can walk up the staircase.
//
Note that you get only 5 points if your implementation is functionally
correct but not tail-recursive.
//
*)
extern
fun
staircase_count(n: int): int // staircase_count(0) = 1
//
(* ****** ****** *)
//
// HX: 20 points
//
// Hacking for fun. This exercise asks you to study the code
// in [Sierpinski.dats] (for drawing Sierpinski triangle) and
// then implement in [Sierpinski_carpet] a function for drawing
// the so-called Sierpinski carpet. Please google-search to find
// more on Sierpinski carpet. Here is a link for demo:
//
// http://www.cs.bu.edu/~hwxi/academic/courses/CS320/Fall17/.xshare/cs320-2017-fall/assigns/assign02/Solution/Sierpinski_carpet/Sierpinski_carpet.html
//
(* ****** ****** *)

(* end of [assign02.dats] *)
