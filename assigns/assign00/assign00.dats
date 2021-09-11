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
// Out: Tuesday, Sep 5, 2017
// Due: Tuesday, Sep 12, 2017 // by midnight
//
(* ****** ****** *)
//
// #define
// ATS_PACKNAME "ASSIGN00"
//
(* ****** ****** *)

(*
Exercise 0-1 (10 points)

Please fork a private repository at bitbucket.org of the name
CS320-2017-Fall-userid based on the master repository
CS320-2017-Fall for this class, where the userid part should be
substituted with your own user id for your BU email account. Please
make sure that you are be able to receive messages sent to the email
address userid@bu.edu. Please also note that userid is not your BU
student number (starting with U followed by 8 digits).

After creating the repository of the specified name, please share it
with me (bithwxi), the TF (marklemay) and the grader.
*)

(* ****** ****** *)

(*
Exercise 0-2 (10 points)

Please create a private workspace at c9.io (Cloud-9) of the name
cs320-2017-fall-userid, where the userid part should be substituted
with your own user id for your BU email account.

After creating the workspace of the specified name, please share it
with me (c9hwxi), the TF (lemay) and the grader.
*)

(* ****** ****** *)
//
(*
Exercise 0-3-1 (5 points)

Please implement isTriangle that takes three integers and
returns true or false depending wether the 3 given integers
can form the 3 sides of a triangle. The interface for isTriangle
is given as follows:
*)
//
extern
fun
isTriangle(x: int, y: int, z: int): bool
//
(* ****** ****** *)
//
(*
Exercise 0-3-2 (5 points)

The following function fib computes Fibonacci numbers:

fun
fib(n: int): int =
  if n >= 2 then fib(n-1) + fib(n-2) else n
  
Clearly, fib is recursive but not tail-recursive: Neither of the two
recursive calls in the body of fib is a tail-call. Please give a
tail-recursive implementation of fib_trec that also computes Fibonacci
numbers:
*)
//
extern
fun
fib_trec(n: int): int // tail-recursive version of fib
//
(* ****** ****** *)

(* end of [assign00.dats] *)
