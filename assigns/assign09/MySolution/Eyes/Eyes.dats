(* ****** ****** *)
(*
//
// Implementing 'Eyes'
//
*)
(* ****** ****** *)
(*
##myatsccdef=\
patsopt -d $1 | atscc2js -o $fname($1)_dats.js -i -
*)
(* ****** ****** *)
//
#define
ATS_MAINATSFLAG 1
//
#define
ATS_STATIC_PREFIX "Eyes__"
#define
ATS_DYNLOADNAME "Eyes__dynload"
//
(* ****** ****** *)

#staload
UN = "prelude/SATS/unsafe.sats"

(* ****** ****** *)
//
// HX: for accessing LIBATSCC2JS 
//
#define
LIBATSCC2JS_targetloc
"$PATSHOME/contrib\
/libatscc2js/ATS2-0.3.2" // latest stable release
//
#include
"{$LIBATSCC2JS}/staloadall.hats" // for prelude stuff
#staload
"{$LIBATSCC2JS}/SATS/print.sats" // for print into a store
//
(* ****** ****** *)
(*
const
mousemoveProperty = Bacon
.fromEvent(document, 'mousemove')
.map((event) => `(${event.clientX}, ${event.clientY})`)
.toProperty();
*)
(* ****** ****** *)

abstype color

(* ****** ****** *)
//
extern
fun
draw_disk
( X: int, Y: int
, rad: int, clr: color): void = "mac#"
//
(* ****** ****** *)

%{^
//
var
theCanvas =
document.getElementById("theCanvas");
var
theCtx = theCanvas.getContext( '2d' );
//
function
draw_disk
 (X, Y, rad, color)
{
  theCtx.save();
//
  theCtx.beginPath();
  theCtx.arc(X, Y, rad, 0.0, 2*Math.PI);
  theCtx.closePath();
  theCtx.fillStyle=color; theCtx.fill();
//
  theCtx.restore();
} // end of [QuadrangleRemove]
//
%} // end of [%{^]
//
(* ****** ****** *)
//
val () =
draw_disk(150, 210, 99, $UN.cast("#000000"))
val () =
draw_disk(150, 210, 10, $UN.cast("#ffffff"))
//
val () =
draw_disk(450, 210, 99, $UN.cast("#000000"))
val () =
draw_disk(450, 210, 10, $UN.cast("#ffffff"))
//
(* ****** ****** *)

%{$
//
function
Eyes__initize()
{
//
Eyes__dynload(); return;
//
} // end of [Eyes__initize]
%}

(* ****** ****** *)

%{$
//
jQuery(document).ready(function(){Eyes__initize();});
//
%} // end of [%{$]

(* ****** ****** *)

(* end of [Eyes.dats] *)
