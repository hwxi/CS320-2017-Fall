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
// Due date: Thursday, the 19th of October
//
(* ****** ****** *)

#define
ATS_PACKNAME "ASSIGN06"

(* ****** ****** *)

#staload
"libats/ML/SATS/basis.sats"

(* ****** ****** *)
//
typedef
canvas = matrix0(string)
//
(* ****** ****** *)
//
// HX: implemented
//
extern
fun
canvas_make
(nrow: int, ncol: int): canvas
//
(* ****** ****** *)
//
// HX: both implemented
//
extern
fun
canvas_clear(canvas: canvas): void
extern
fun
canvas_display(canvas: canvas): void
//
(* ****** ****** *)
//
// HX: 10 points
// For combining
// two canvases horizontally
// where the two are assumed to
// have the same number of rows
//
extern
fun
cbind_canvas_canvas
(c1: canvas, c2: canvas): canvas
//
(* ****** ****** *)
//
// HX: 20 points
//
// [digit] is a digit:
// 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
//
extern
fun
canvas_draw_digit
(canvas: canvas, digit: int): void
//
(* ****** ****** *)

(* end of [assign06.dats] *)
