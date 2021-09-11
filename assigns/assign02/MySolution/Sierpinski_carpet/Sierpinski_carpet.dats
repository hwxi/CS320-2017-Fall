(* ****** ****** *)
(*
Drawing a Sierpinski Triangle
*)
(* ****** ****** *)

#define
ATS_DYNLOADFLAG 0

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
//
(* ****** ****** *)

abstype point

(* ****** ****** *)
//
(*
extern
fun
midpoint: (point, point) -> point = "mac#"
*)
//
extern
fun
midpoint1: (point, point) -> point = "mac#"
extern
fun
midpoint2: (point, point) -> point = "mac#"
//
(* ****** ****** *)
//
extern
fun
SierpinskiDraw
(
n : int
,
A : point, B: point, C: point, D: point
) : void = "mac#"
//
(* ****** ****** *)
//
extern
fun
QuadrangleRemove
(A: point, B: point, C: point, D: point): void = "mac#"
//
(* ****** ****** *)
(*
implement
SierpinskiDraw(n, A, B, C, D) = ...
*)
(* ****** ****** *)

%{^
//
var
theCanvas =
document.getElementById("theCanvas");
var
theCtx = theCanvas.getContext( '2d' );
//
var N = 6;
//
var W =
theCanvas.width;
var H =
theCanvas.height;
var WH = Math.min(W, H);
var WH2 = 0.88 * WH;
//
function
midpoint
(p1, p2)
{
//
  var
  xmid = (p1.x + p2.x)/2;
  var
  ymid = (p1.y + p2.y)/2;
//
  return { x: xmid, y: ymid };
//
}
//
function
midpoint1
(p1, p2)
{
//
  var
  xmid = (2*p1.x + 1*p2.x)/3;
  var
  ymid = (2*p1.y + 1*p2.y)/3;
//
  return { x: xmid, y: ymid };
//
}
function
midpoint2
(p1, p2)
{
//
  var
  xmid = (1*p1.x + 2*p2.x)/3;
  var
  ymid = (1*p1.y + 2*p2.y)/3;
//
  return { x: xmid, y: ymid };
//
}
//
function
QuadrangleRemove
 (A, B, C, D)
{
  theCtx.save();
//
  theCtx.beginPath();
  theCtx.moveTo(A.x, A.y);
  theCtx.lineTo(B.x, B.y);
  theCtx.lineTo(C.x, C.y);
  theCtx.lineTo(D.x, D.y);
  theCtx.closePath();
//
  theCtx.fill();
//
  theCtx.restore();
} // end of [QuadrangleRemove]
//
%} // end of [%{^]

(* ****** ****** *)

%{$
//
function
SierpinskiMain()
{
var A0 =
{x:  0, y: 0  };
var B0 =
{x:  0, y: WH };
var C0 =
{x: WH, y: WH };
var D0 =
{x: WH, y: 0  };
//
theCtx.translate
((W-WH2)/2, (H-WH2)/2);
//
theCtx.fillStyle="#0000ff";
QuadrangleRemove(A0, B0, C0, D0);
//
theCtx.fillStyle="#ffff00";
SierpinskiDraw(N, A0, B0, C0, D0);
//
}
//
%} // end of [%{$]

(* ****** ****** *)

%{$
//
jQuery(document).ready(function(){SierpinskiMain();});
//
%} // end of [%{$]

(* ****** ****** *)

(* end of [Sierpinski_carpet.dats] *)
