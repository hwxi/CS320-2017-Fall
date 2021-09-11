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
//
implement
SierpinskiDraw
(n, A0, B0, C0, D0) =
(
if
(n > 0)
then let
//
val E1 = midpoint1(A0, B0)
val E2 = midpoint2(A0, B0)
//
val F1 = midpoint1(B0, C0)
val F2 = midpoint2(B0, C0)
//
val G1 = midpoint1(C0, D0)
val G2 = midpoint2(C0, D0)
//
val H1 = midpoint1(D0, A0)
val H2 = midpoint2(D0, A0)
//
val I1 = midpoint1(H2, F1)
val I2 = midpoint2(H2, F1)
//
val J1 = midpoint1(F2, H1)
val J2 = midpoint2(F2, H1)
//
val () = QuadrangleRemove(I1, I2, J1, J2)
//
val () = SierpinskiDraw(n-1, A0, E1, I1, H2)
//
val () = SierpinskiDraw(n-1, E2, B0, F1, I2)
//
val () = SierpinskiDraw(n-1, J1, F2, C0, G1)
//
val () = SierpinskiDraw(n-1, H1, J2, G2, D0)
//
val () = SierpinskiDraw(n-1, E1, E2, I2, I1)
val () = SierpinskiDraw(n-1, I2, F1, F2, J1)
val () = SierpinskiDraw(n-1, J2, J1, G1, G2)
val () = SierpinskiDraw(n-1, H2, I1, J2, H1)
//
in
end // end of [then]
else () // end of [else]
)
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
//
extern
fun
execute_after
(fwork: cfun(void), ms: int): void
//
implement
execute_after
  (fwork, ms) = (
//
$extfcall
( void
, "setTimeout", cloref2fun0(fwork), ms)
//
) (* end of [execute_after] *)
//
(* ****** ****** *)
//
extern
fun
repeat_execute_after
( N: int,
  fwork: (int) -> void, ms: int
) : void = "mac#" // end-of-fun
//
implement
repeat_execute_after
(
N, fwork, ms
) = let
//
fun
auxmain(i: int): void =
if i >= N
  then auxmain(0)
  else (fwork(i); execute_after(lam() => auxmain(i+1), ms))
//
in
  auxmain(0)
end // end of [repeat_execute_after]
//
(* ****** ****** *)

%{$
//
function
SierpinskiMain()
{
var A0 =
{x:   0, y: 0   };
var B0 =
{x: WH2, y: 0   };
var C0 =
{x: WH2, y: WH2 };
var D0 =
{x:   0, y: WH2 };
//
theCtx.translate
((W-WH2)/2, (H-WH2)/2);
//
repeat_execute_after
(
N
,
function(i)
{
theCtx.fillStyle="#0000ff";
QuadrangleRemove(A0, B0, C0, D0);
theCtx.fillStyle="#ffff00";
SierpinskiDraw(i, A0, B0, C0, D0);
}
,
1000/*delay in ms*/
);
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
