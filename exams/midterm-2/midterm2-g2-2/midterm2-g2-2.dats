(* ****** ****** *)
//
#define
ATS_MAINATSFLAG 1
//
(* ****** ****** *)
//
#define
ATS_EXTERM_PREFIX "Midterm2_G2_2__"
#define
ATS_STATIC_PREFIX "_Midterm2_G2_2__"
//
(* ****** ****** *)
//
// HX:
// for accessing LIBATSCC2JS 
// ATS2-0.3.2: latest stable release
//
#define
LIBATSCC2JS_targetloc
"$PATSHOME\
/contrib/libatscc2js/ATS2-0.3.2"
//
#include
"{$LIBATSCC2JS}/staloadall.hats"
//
#staload
"{$LIBATSCC2JS}/SATS/print.sats"
#staload
"{$LIBATSCC2JS}/Bacon.js/SATS/baconjs.sats"
//
(* ****** ****** *)
//
#include
"./../../../libraries/class_js.dats"
//
(* ****** ****** *)
//
extern
fun
EStream_group_within
  {a:t@ype}
  (xs: EStream(a), ms: int): EStream(list0(a)) = "mac#"
//
(* ****** ****** *)

(* end of [midterm2-g2-2.dats] *)
