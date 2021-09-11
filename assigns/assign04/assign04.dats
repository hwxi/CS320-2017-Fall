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
// Due date: Thursday, the 5th of October
//
(* ****** ****** *)

#define
ATS_PACKNAME "ASSIGN04"

(* ****** ****** *)
//
staload
"libats/ML/SATS/basis.sats"
//
(* ****** ****** *)
(*
//
// Please note the following two functions:
//
// fun string_explode(string): list0(char)
// fun string_implode(list0(char)): string
//
*)
(* ****** ****** *)
//
// Given a csv line where entries are
// separated by commas, the following function
// returns entry i in the line (if it exists):
//
extern
fun // 20 points
csv_line_get_at
(line: string, i: int): option0(string)
//
(* ****** ****** *)
//
// HX: 20 points for both
//
// Please use the above function [csv_line_get_at]
// to implement the following functions:
//
extern
fun
NDX100_adj_close_list((*void*)): list0(double)
extern
fun
mystock_adj_close_list((*void*)): list0(double)
//
(*
This is the content of NDX100-index.csv:
//
Date,Open,High,Low,Close,Adj Close,Volume
19851001,110.620003,112.160004,110.565002,112.139999,112.139999,153160000
19851002,112.139999,112.540001,110.779999,110.824997,110.824997,164640000
19851003,110.839996,111.184998,110.120003,110.870003,110.870003,147300000
......
//
NDX100_adj_close_list() should return the following lists:
[112.139999, 110.824997, 110.870003]
//
*)
//
(* ****** ****** *)
//
// HX: 20 points for both
//
extern
fun
NDX100_volatility_lifetime((*void*)): double
extern
fun
mystock_volatility_lifetime((*void*)): double
//
(* ****** ****** *)

(* end of [assign04.dats] *)
