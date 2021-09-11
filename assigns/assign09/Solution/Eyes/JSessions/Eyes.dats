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

  
  
 fun insideCircle(x1: int, y1:int, x2: int, y2:int, r: int): bool = 
    let
        val temp1 = (x2-x1) *  (x2-x1)
        val temp2 = (y2-y1)* (y2-y1)
        val dsqrd = (temp1 + temp2)
    in
        if (dsqrd <  r*r) then 
            true
        else 
            false
    end

extern 
fun nose(x: int ): void = "mac#"

implement nose(x: int): void = 
    if (x %2 =0) then 
        let 
            val () = draw_disk(300, 550, 200, $UN.cast("#A58071")) //170 
             val () = draw_disk(300, 350, 40, $UN.cast("#F94926")) //170 
        in 
        end
    else 
        let 
            val () = draw_disk(300, 550, 200, $UN.cast("#A58071")) //170 
             val () = draw_disk(300, 350, 40, $UN.cast("#521509")) //170 
        in 
        end

extern 
fun eyebrows(x: int, y: int): void = "mac#"
implement eyebrows(x: int, y: int): void = 
    
    if (y < 215) then
    let
       val () = draw_disk(200, 200, 1000, $UN.cast("#96563C")) //170 
        val () = draw_disk(120, 170 + (y/10), 150, $UN.cast("#000")) //170
        val () = draw_disk(130, 180+ (y/10), 150, $UN.cast("#96563C")) //180
        val () = draw_disk(130,220, 150, $UN.cast("#96563C")) //220
        
        //right eyebrow
        val () = draw_disk(470,170 + (y/10), 150, $UN.cast("#000"))
        val () = draw_disk(460,180 + (y/10), 150, $UN.cast("#96563C"))
        val () = draw_disk(460, 220, 150, $UN.cast("#96563C"))
     in 
     end
    else 
    let
       val () = draw_disk(200, 200, 1000, $UN.cast("#96563C")) //170 
        val () = draw_disk(120, 200, 150, $UN.cast("#000")) //170
        val () = draw_disk(130, 210, 150, $UN.cast("#96563C")) //180
        val () = draw_disk(130,220, 150, $UN.cast("#96563C")) //220
        
        //right eyebrow
        val () = draw_disk(470,200 , 150, $UN.cast("#000"))
        val () = draw_disk(460,210, 150, $UN.cast("#96563C"))
        val () = draw_disk(460, 220, 150, $UN.cast("#96563C"))
     in 
     end
     

extern 
fun leftEye(x: int, y: int): void = "mac#"


implement leftEye(x: int, y: int): void = 
   let 
        val dx= x- 150
        val dy = y - 210
        val distance = JSmath_sqrt(int2double(dx*dx + dy*dy))
        val newX = 150 + dx * 70 / distance
        val newY = 210 + dy * 70 / distance
    fun helper(x: int, y: int): void=
        let 
          val () = draw_disk(150, 210, 99, $UN.cast("#FFF"))
          val () =  draw_disk(x, y, 25, $UN.cast("#000"))
        in 
        end
  in 
  if (insideCircle(150,210,x,y,70) = false) then
      helper(double2int(newX), double2int(newY))
  else
     helper(x, y)
  end
  
extern 
fun rightEye(x: int, y: int): void = "mac#"
implement rightEye(x: int, y: int): void = 
   let 
        val dx= x- 450
        val dy = y - 210
        val distance = JSmath_sqrt(int2double(dx*dx + dy*dy))
        val newX = 450 + dx * 70 / distance
        val newY = 210 + dy * 70 / distance
    fun helper(x: int, y: int): void=
        let 
          val () = draw_disk(450, 210, 99, $UN.cast("#FFF"))
          val () =  draw_disk(x, y, 25, $UN.cast("#000"))
        in 
        end
  in 
      if (insideCircle(450,210,x,y,70) = false) then
          helper(double2int(newX), double2int(newY))
      else
         helper(x, y)
  end

//init eyes
val () =
draw_disk(150, 210, 99, $UN.cast("#FFF"))
val () =
draw_disk(150, 210, 25, $UN.cast("#000"))
//
val () =
draw_disk(450, 210, 99, $UN.cast("#FFF"))
val () =
draw_disk(450, 210, 25, $UN.cast("#000"))

//
(* ****** ****** *)

%{$
//
function
Eyes__initize()
{

 Bacon.fromEvent(document, "mousemove").onValue(function(e) {
        canvas = document.getElementById("theCanvas")
        var rect = canvas.getBoundingClientRect();
            var canvas = document.getElementById("theCanvas");
var ctx = canvas.getContext("2d");
ctx.fillStyle = "#96563C";
ctx.fillRect(0, 0, canvas.width, canvas.height);
        var x_coord = e.clientX - rect.left
        var y_coord = e.clientY-rect.top
        console.log(x_coord, ats2jspre_double2int(y_coord))
        eyebrows(x_coord, y_coord)
        leftEye(x_coord, y_coord)
        rightEye(x_coord, y_coord)
        nose(x_coord)
    
    })
    
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
