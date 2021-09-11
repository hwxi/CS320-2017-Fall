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
// Due date: Tuesday, the 26th of September
//
(* ****** ****** *)

#define
ATS_PACKNAME "ASSIGN02-2"

(* ****** ****** *)
//
#staload
UN =
"prelude/SATS/unsafe.sats"
//
(* ****** ****** *)
//
typedef
cfun
( a1:t@ype
, a2:t@ype
, res:t@ype
) = (a1, a2) -<cloref1> res
//
(* ****** ****** *)

abstype myfile = ptr

(* ****** ****** *)
//
extern
fun
myfile_open(path: string): myfile
//
(* ****** ****** *)
//
extern
fun
{res:t0ype}
myfile_foldleft
(myfile, res, cfun(res, string, res)): res
//
(* ****** ****** *)
//
local
//
assume myfile = FILEref
//
in
//
implement
myfile_open(path) =
fileref_open_exn(path, file_mode_r)
//
implement
{res}
myfile_foldleft
(myfile, res, fopr) = let
//
fun
loop
(
xs: stream_vt(string), res: res
) : res =
(
case+ !xs of
| ~stream_vt_nil
    ((*void*)) => res
| ~stream_vt_cons
    (x, xs) => loop(xs, fopr(res, x))
)
//
val
lines =
streamize_fileref_line(myfile)
//
in
  loop($UN.castvwtp0(lines), res)
end // end of [myfile_foldleft]
//
end // end of [local]

(* ****** ****** *)
//
// HX:
// Assume that each line in [myfile] 
// represents an integer. Please find
// the average of all the integers contained
// in [myfile]. Note that [myfile_foldleft]
// can only be called ONCE on any given [myfile]
//
extern
fun // 10 points
myfile_mean(myfile: myfile): double
//
(* ****** ****** *)
//
// HX:
// Assume that each line in [myfile] 
// represents an integer. Please find
// the standard deviation for all the integers
// contained in [myfile]. Please note again that
// [myfile_foldleft] can only be called ONCE on
// any given [myfile]
//
extern
fun // 10 points
myfile_stdev(myfile: myfile): double
//
(* ****** ****** *)

(* end of [assign02-2.dats] *)
