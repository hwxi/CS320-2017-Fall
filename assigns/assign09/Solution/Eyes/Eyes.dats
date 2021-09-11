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
var
mousemoveProperty = Bacon
.fromEvent(document, 'mousemove')
.map((event) => `(${event.pageX}, ${event.pageY})`)
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

%{^
//
var
theMousemoveStream = Bacon
.fromEvent(document, 'mousemove');
//
var _ =
console.log
("theMousemoveStream is created!")
//
var theCanvas = $('#theCanvas')
//
function
theCanvas_y() {return theCanvas.position().top;}
function
theCanvas_x() {return theCanvas.position().left;}
//
%} // end of [%{^]

(* ****** ****** *)
//
val thePupRad = 25
val theEyeRad = 99
val theLeftEye_x = 150
val theLeftEye_y = 210
val theRightEye_x = 450
val theRightEye_y = 210
//
val () =
draw_disk(theLeftEye_x, theLeftEye_y, theEyeRad, $UN.cast("#000000"))
val () =
draw_disk(theLeftEye_x, theLeftEye_y, thePupRad, $UN.cast("#ffffff"))
//
val () =
draw_disk(theRightEye_x, theRightEye_y, theEyeRad, $UN.cast("#000000"))
val () =
draw_disk(theRightEye_x, theRightEye_y, thePupRad, $UN.cast("#ffffff"))
//
(* ****** ****** *)
//
extern
fun
theCanvas_x(): double = "mac#"
extern
fun
theCanvas_y(): double = "mac#"
//
(* ****** ****** *)
//
extern
fun
pupil_pos
(
x0: double, y0: double
,
x1: double, y1: double
) : $tup(double, double)
//
implement
pupil_pos
(x0, y0, x1, y1) = let
//
val R = 
int2double
(
theEyeRad
-
thePupRad
)
//
val dx = x1 - x0
val dy = y1 - y0
//
val dxy =
JSmath_sqrt(dx * dx + dy * dy)
//
in
//
if
(dxy <= R)
then $tup(x1, y1)
else $tup(x0 + dx*R/dxy, y0 + dy*R/dxy)
//
end // end of [pupil_pos]

(* ****** ****** *)

macdef d2i = double2int

(* ****** ****** *)
//
extern
fun
draw_left
(
x1: double, y1: double
) : void = "mac#Eyes__draw_left"
extern
fun
draw_right
(
x1: double, y1: double
) : void = "mac#Eyes__draw_right"
//
implement
draw_left(x1, y1) = let
//
val x0 =
theCanvas_x() + theLeftEye_x
val y0 =
theCanvas_y() + theLeftEye_y
//
val xy = pupil_pos(x0, y0, x1, y1)
//
in
//
draw_disk
( theLeftEye_x
, theLeftEye_y, theEyeRad, $UN.cast("#000000") );
//
draw_disk
( d2i(xy.0-theCanvas_x())
, d2i(xy.1-theCanvas_y()), thePupRad, $UN.cast("#ffffff") );
//
end // end of [draw_left]
//
implement
draw_right(x1, y1) = let
//
val x0 =
theCanvas_x() + theRightEye_x
val y0 =
theCanvas_y() + theRightEye_y
//
val xy = pupil_pos(x0, y0, x1, y1)
//
in
//
draw_disk
( theRightEye_x
, theRightEye_y, theEyeRad, $UN.cast("#000000") );
//
draw_disk
( d2i(xy.0-theCanvas_x())
, d2i(xy.1-theCanvas_y()), thePupRad, $UN.cast("#ffffff") );
//
end // end of [draw_right]
//
(* ****** ****** *)

%{$
//
function
Eyes__initize()
{
//
Eyes__dynload();
theMousemoveStream.onValue
(function(event)
 {
   Eyes__draw_left(event.pageX, event.pageY);
   Eyes__draw_right(event.pageX, event.pageY);
 }
);
return; /* Eyes__initize */
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
