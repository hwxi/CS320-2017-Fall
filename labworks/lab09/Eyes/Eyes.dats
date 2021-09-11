// a slight reformatted version of the Lab hints
// Lab doc available at https://docs.google.com/document/d/1Qe-2QBM0H13MfYmMS7USFRE7Tal1NW-W_Ul8PD7PrMQ/edit#heading=h.edsv5tdw95hh

#define ATS_MAINATSFLAG 1

#define ATS_STATIC_PREFIX "Eyes__"
#define ATS_DYNLOADNAME "Eyes__dynload"

#staload UN = "prelude/SATS/unsafe.sats"


// HX: for accessing LIBATSCC2JS
#define LIBATSCC2JS_targetloc "$PATSHOME/contrib/libatscc2js/ATS2-0.3.2" // latest stable release

#include "{$LIBATSCC2JS}/staloadall.hats" // for prelude stuff
#staload "{$LIBATSCC2JS}/SATS/print.sats" // for print into a store


staload "{$LIBATSCC2JS}/SATS/Bacon.js/baconjs.sats"

// some javascript notes:
(*
const mousemoveProperty = Bacon
.fromEvent(document, 'mousemove')
.map((event) => `(${event.clientX}, ${event.clientY})`)
.toProperty();
*)

abstype color

extern fun draw_disk( X: int, Y: int, rad: int, clr: color): void = "mac#"

// can call functions from the JS block.  Note that ptr is arbitrary
extern fun getX(ptr):int = "mac#"
extern fun getY(ptr):int = "mac#"

// can use alert to call javascript's window.alert function
//val () = alert("hi")

local

  datatype cord =
    | point of (int, int)

  //note the element with id="theCanvas" in the html file
  //$("#canvas-container")
  val theCanvas = $extval(ptr, "$(\"#canvas-container\")")

  //$("#canvas-container\").asEventStream('mousemove');
  val theMoves = $extmcall(EStream(ptr), theCanvas, "asEventStream", "mousemove")

  val theCords = theMoves.map(TYPE{cord})(lam e => point(getX(e), getY(e)))

  //could use EStream_scan here to do the logic
in

  //use onValue to collapse the stream and display
  val () = theCords.onValue()(
                                lam(count) =>
                                (
                                  case+ count of
                                    | point(x,y) => alert(String(x)) //String() converts int to string in ATS for JavaScript
                                )
                              )

end


%{^

  var theCanvas = document.getElementById("theCanvas");
  var theCtx = theCanvas.getContext( '2d' );

  function draw_disk(X, Y, rad, color)
  {
    theCtx.save();

    theCtx.beginPath();
    theCtx.arc(X, Y, rad, 0.0, 2*Math.PI);
    theCtx.closePath();
    theCtx.fillStyle=color;
    theCtx.fill();

    theCtx.restore();
  }

  // some new functions to help us out

  function getX(event ){
    return event.pageX
  }

  function getY(event ){
    return event.pageY
  }


%}


val () = draw_disk(150, 210, 99, $UN.cast("#000000"))
val () = draw_disk(150, 210, 10, $UN.cast("#ffffff"))

val () = draw_disk(450, 210, 99, $UN.cast("#000000"))
val () = draw_disk(450, 210, 10, $UN.cast("#ffffff"))


%{$

  function Eyes__initize()
  {
    Eyes__dynload(); return;
  }

%}


%{$

  jQuery(document).ready(function(){Eyes__initize();});

%}