(* ****** ****** *)
(*
//
// Implementing 'Clock'
//
*)
(* ****** ****** *)
(*
##myatsccdef=\
patscc -ccats $1 && \
atscc2js -o $fname($1)_dats.js -i $fname($1)_dats.c
*)
(* ****** ****** *)
//
#define
ATS_MAINATSFLAG 1
//
#define
ATS_STATIC_PREFIX "Clock__"
//
(* ****** ****** *)
//
#define
ATS_DYNLOADNAME "Clock__dynload"
//
(* ****** ****** *)

#staload
UN = "prelude/SATS/unsafe.sats"

(* ****** ****** *)
//
// HX:
// for accessing LIBATSCC2JS 
// ATS2-0.3.2: latest stable release
//
#define
LIBATSCC2JS_targetloc
"$PATSHOME/contrib/libatscc2js/ATS2-0.3.2"
//
#include
"{$LIBATSCC2JS}/staloadall.hats" // for prelude stuff
#staload
"{$LIBATSCC2JS}/SATS/print.sats" // for print into a store
//
(* ****** ****** *)
//
#include
"./../../../..\
/libraries/class_js.dats"
//
(* ****** ****** *)
//
#include "./Clock_canvas.dats"
//
(* ****** ****** *)

%{$
//
function
Clock__initize()
{
//
Clock__dynload(); return;
//
} // end of [Clock__initize]
%}

(* ****** ****** *)

%{$
//
jQuery(document).ready(function(){Clock__initize();});
//
%} // end of [%{$]

(* ****** ****** *)

(* end of [Clock.dats] *)
