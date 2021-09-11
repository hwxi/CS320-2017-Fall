(* ****** ****** *)
(*
//
// Implementing 'Timer'
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
ATS_STATIC_PREFIX "Timer__"
//
(* ****** ****** *)
//
#define
ATS_DYNLOADNAME "Timer__dynload"
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
"$PATSHOME\
/contrib/libatscc2js/ATS2-0.3.2"
//
#include
"{$LIBATSCC2JS}\
/staloadall.hats" // for prelude stuff
#staload
"{$LIBATSCC2JS}\
/SATS/print.sats" // for print into a store
//
(* ****** ****** *)
//
#staload
"{$LIBATSCC2JS}\
/SATS/Bacon.js/baconjs.sats"
//
(* ****** ****** *)
//
#include
"./../../../../libraries/class_js.dats"
//
(* ****** ****** *)
//
abstype xmldoc
//
%{^
//
function
document_getElementById
  (id)
{
  return document.getElementById(id);
}
//
function
xmldoc_set_innerHTML
  (xmldoc, text)
  { xmldoc.innerHTML = text; return; }
//
%} // end of [%{^] 
//
extern
fun
document_getElementById
  (id: string): xmldoc = "mac#"
//
extern
fun
xmldoc_set_innerHTML
(xmldoc, text: string): void = "mac#"
//
(* ****** ****** *)
//
extern
fun
button_enable
  (button: xmldoc): void = "mac#"
extern
fun
button_disable
  (button: xmldoc): void = "mac#"
//
%{^
//
function
button_enable(button)
{
  button.disabled=false; return;
}
function
button_disable(button)
{
  button.disabled = true; return;
}
%}
//
(* ****** ****** *)

#define :: list0_cons

(* ****** ****** *)
//
val
theButton_start =
document_getElementById("button_start")
val
theButton_reset =
document_getElementById("button_reset")
val
theButton_pause =
document_getElementById("button_pause")
val
theButton_resume =
document_getElementById("button_resume")
//
(* ****** ****** *)
//
datatype mvalue =
  | MVint of int
  | MVbool of bool
  | MVstring of string
//
(* ****** ****** *)

macdef MVtt = MVbool(true)
macdef MVff = MVbool(false)

(* ****** ****** *)
//
typedef
keyval =
$tup(string, mvalue)
typedef
state = list0(keyval)
//
macdef
state = TYPE{state}
macdef
keyval = TYPE{keyval}
//
(* ****** ****** *)
//
extern
fun
state_update
(kxs: state, fopr: keyval -> mvalue): state
//
implement
state_update
(kxs, fopr) =
(kxs).map(keyval)(lam(kx) => $tup(kx.0, fopr(kx)))
//
(* ****** ****** *)

fun
update_start
(
 kx: keyval
) : mvalue =
(
case+ kx.0 of
| "start" => MVff
| "reset" => MVtt
| "pause" => MVtt
| "resume" => MVff
| _ (* anything-else *) => kx.1
)

(* ****** ****** *)

fun
update_reset
(
 kx: keyval
) : mvalue =
(
case+ kx.0 of
| "start" => MVtt
| "reset" => MVtt
| "pause" => MVff
| "resume" => MVff
| _ (* anything-else *) => kx.1
)

(* ****** ****** *)

fun
update_pause
(
 kx: keyval
) : mvalue =
(
case+ kx.0 of
(*
| "start" => MVff
| "reset" => MVtt
*)
| "pause" => MVff
| "resume" => MVtt
| _ (* anything-else *) => kx.1
)

(* ****** ****** *)

fun
update_resume
(
 kx: keyval
) : mvalue =
(
case+ kx.0 of
(*
| "start" => MVff
| "reset" => MVtt
*)
| "pause" => MVtt
| "resume" => MVff
| _ (* anything-else *) => kx.1
)

(* ****** ****** *)

val
theState_init =
(
$tup("start", MVtt)
::
$tup("reset", MVtt)
::
$tup("pause", MVff)
::
$tup("resume", MVff)
::
list0_nil((*void*))
)

(* ****** ****** *)

fun
un_MVint
(
 x: mvalue
) : int = (v) where { val-MVint(v) = x }
fun
un_MVbool
(
 x: mvalue
) : bool = (v) where { val-MVbool(v) = x }
fun
un_MVstring
(
 x: mvalue
) : string = (v) where { val-MVstring(v) = x }

(* ****** ****** *)

fun
button_process
( btn: xmldoc
, mvb: mvalue): void =
(
if un_MVbool(mvb)
then button_enable(btn) else button_disable(btn)
)

(* ****** ****** *)

fun
render_keyval
(kx: keyval): void =
(
case+ kx.0 of
| "start" =>
  button_process(theButton_start, kx.1)
| "reset" =>
  button_process(theButton_reset, kx.1)
| "pause" =>
  button_process(theButton_pause, kx.1)
| "resume" =>
  button_process(theButton_resume, kx.1)
//
(*
| "theTotal" => ...
*)
//
| _ (* anything-else *) => ((*void*))
//
)

(* ****** ****** *)

local
//
datatype act =
  Start | Reset | Pause | Resume
//
val theStart_btn = $extval(ptr, "$('#button_start')")
val theReset_btn = $extval(ptr, "$('#button_reset')")
val thePause_btn = $extval(ptr, "$('#button_pause')")
val theResume_btn = $extval(ptr, "$('#button_resume')")
//
val theStart_clicks =
  $extmcall(EStream(void), theStart_btn, "asEventStream", "click")
val theReset_clicks =
  $extmcall(EStream(void), theReset_btn, "asEventStream", "click")
val thePause_clicks =
  $extmcall(EStream(void), thePause_btn, "asEventStream", "click")
val theResume_clicks =
  $extmcall(EStream(void), theResume_btn, "asEventStream", "click")
//
val theStart_clicks = theStart_clicks.map(TYPE{act})(lam _ => Start())
val theReset_clicks = theReset_clicks.map(TYPE{act})(lam _ => Reset())
val thePause_clicks = thePause_clicks.map(TYPE{act})(lam _ => Pause())
val theResume_clicks = theResume_clicks.map(TYPE{act})(lam _ => Resume())
//
val
theCombo_clicks =
merge(theStart_clicks, theReset_clicks, thePause_clicks, theResume_clicks)
//
val
theState_property =
(
theCombo_clicks.scan(state)
( theState_init
, lam(kxs, act) =>
  (
  case+ act of
  | Start() =>
    state_update(kxs, lam(kx) => update_start(kx))
  | Reset() =>
    state_update(kxs, lam(kx) => update_reset(kx))
  | Pause() =>
    state_update(kxs, lam(kx) => update_pause(kx))
  | Resume() =>
    state_update(kxs, lam(kx) => update_resume(kx))
  )
)
)
//
in
//
val ((*void*)) =
theState_property.onValue()
(lam(kxs) =>
 list0_foreach(kxs, lam(kx) => render_keyval(kx)))
//
end // end of [local]

(* ****** ****** *)

%{$
//
function
Timer__initize()
{
//
Timer__dynload(); return;
//
} // end of [Timer__initize]
%}

(* ****** ****** *)

%{$
//
jQuery(document).ready(function(){Timer__initize();});
//
%} // end of [%{$]

(* ****** ****** *)

(* end of [Timer.dats] *)
