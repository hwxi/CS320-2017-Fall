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
ATS_DYNLOADNAME
"Timer__dynload"
//
#define
ATS_MAINATSFLAG 1
//
(* ****** ****** *)
//
#define
ATS_EXTERM_PREFIX "Timer__"
#define
ATS_STATIC_PREFIX "_Timer__"
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
/Bacon.js/SATS/baconjs.sats"
//
(* ****** ****** *)
//
extern
fun
do_timeout(): void
extern
fun
reset_timeout(): void
//
(* ****** ****** *)
//
fun
theGetTime
(
// argless
) : intGte(0) = getTime(Date_new())
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
getMinute(): int = "mac#"
and
getSecond(): int = "mac#"
//
extern
fun
addOption(element: string, x:int): void = "mac#"
and
selectOption(element: string, i: int) : void = "mac#"
//
(* ****** ****** *)

%{^
//
function
addOption
(id, i) {
  var elem = document.getElementById(id);
  var option = document.createElement("option");
  option.text = String(i); elem.add(option);
}

function
selectOption
(element, i) { $("#"+element).val(i); }

function
getElementValue(x)
{ return document.getElementById(x).value;}

function
getMinute() {
  var
  elem = document.getElementById("selectMinute");
  return parseInt(elem.options[elem.selectedIndex].value);
}

function
getSecond() {
  var
  elem = document.getElementById("selectSecond");
  return parseInt(elem.options[elem.selectedIndex].value);
}

%} // end of [%{^]

(* ****** ****** *)

val () =
init_select_options
  ((*void*)) where
{
fun
init_select_options
  ((*void*)): void =
(
int_foreach_cloref
( 60
, lam(i) => 
  (
    addOption
    ("selectMinute", i); addOption("selectSecond", i)
  )
);
selectOption
("selectMinute", 10); selectOption("selectSecond", 0);
)
} (* end of [val] *)

(* ****** ****** *)
//
extern
fun
setTimer
( mm: int
, ss: int): void = "mac#"
//
implement
setTimer(mm, ss) = let
//
val mm =
String(mm/10) + String(mm%10)
val ss =
String(ss/10) + String(ss%10)
//
in

xmldoc_set_innerHTML
(document_getElementById("theMinutes"), mm);
xmldoc_set_innerHTML
(document_getElementById("theSeconds"), ss);

end // end of [setTimer]
//
val () = setTimer(getMinute(), getSecond())
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
  if(button.disabled)
    button.disabled=false; return;
}
function
button_disable(button)
{
  if(!button.disabled)
    button.disabled = true; return;
}
%}
//
(* ****** ****** *)
//
extern
fun
input_min_get(): int = "mac#"
extern
fun
input_sec_get(): int = "mac#"
//
%{^
function
input_min_get() { return getMinute(); }
function
input_sec_get() { return getSecond(); }
%}
//
(* ****** ****** *)

#define :: list0_cons

(* ****** ****** *)
//
val
theDocument =
$extval(xmldoc, "document")
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
macdef state = TYPE{state}
macdef keyval = TYPE{keyval}
//
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
//
fun
state_get_start
  (kxs: state): bool =
(
case-
list0_find_opt
( kxs
, lam(kx) => kx.0 = "start")
of (*case-*)
| ~Some_vt(kx) => un_MVbool(kx.1)
)
//
fun
state_get_pause
  (kxs: state): bool =
(
case-
list0_find_opt
( kxs
, lam(kx) => kx.0 = "pause")
of (*case-*)
| ~Some_vt(kx) => un_MVbool(kx.1)
)
//
overload .start with state_get_start
overload .pause with state_get_pause
//
fun
state_get_time_base
  (kxs: state): int =
(
case-
list0_find_opt
( kxs
, lam(kx) => kx.0 = "time_base")
of (*case-*)
| ~Some_vt(kx) => un_MVint( kx.1 )
)
fun
state_get_time_tally
  (kxs: state): int =
(
case-
list0_find_opt
( kxs
, lam(kx) => kx.0 = "time_tally")
of (*case-*)
| ~Some_vt(kx) => un_MVint( kx.1 )
)
fun
state_get_time_total
  (kxs: state): int =
(
case-
list0_find_opt
( kxs
, lam(kx) => kx.0 = "time_total")
of (*case-*)
| ~Some_vt(kx) => un_MVint( kx.1 )
)
//
overload .time_base with state_get_time_base
overload .time_tally with state_get_time_tally
overload .time_total with state_get_time_total
//
(* ****** ****** *)
//
extern
fun
state_update
( kxs: state
, fopr: cfun(keyval, mvalue)): state
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
 kxs: state, kx: keyval
) : mvalue =
(
case+ kx.0 of
| "start" => MVff
| "reset" => MVtt
| "pause" => MVtt
| "resume" => MVff
| "time_base" =>
  (
   let
     val ms = theGetTime() in MVint(ms)
   end
  )
| "time_tally" => MVint(0)
//
| "time_total" => let
    val mm = input_min_get()
    val ss = input_sec_get() in MVint(60*mm + ss)
  end // end of [time_total]
//
| _ (* anything-else *) => kx.1
)

(* ****** ****** *)

fun
update_reset
(
 kxs: state, kx: keyval
) : mvalue =
(
case+ kx.0 of
| "start" => MVtt
| "reset" => MVtt
| "pause" => MVff
| "resume" => MVff
| "time_base" => MVint(0)
| "time_tally" => MVint(0)
| "time_total" => MVint(0)
| _ (* anything-else *) => kx.1
)

(* ****** ****** *)

fun
update_pause
(
 kxs: state, kx: keyval
) : mvalue =
(
case+ kx.0 of
(*
| "start" => MVff
| "reset" => MVtt
*)
| "pause" => MVff
| "resume" => MVtt
//
| "time_tally" =>
  MVint
  (
    kxs.time_tally() 
  + (theGetTime()-kxs.time_base())/1000
  )
//
| _ (* anything-else *) => kx.1
)

(* ****** ****** *)

fun
update_resume
(
 kxs: state, kx: keyval
) : mvalue =
(
case+ kx.0 of
(*
| "start" => MVff
| "reset" => MVtt
*)
| "pause" => MVtt
| "resume" => MVff
//
| "time_base" =>
  let
    val ms = theGetTime() in MVint(ms)
  end
//
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
$tup("is_running", MVff)
::
$tup("time_base", MVint(0))
::
$tup("time_tally", MVint(0))
::
$tup("time_total", MVint(0))
::
list0_nil((*void*))
)

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
reset_process
  (): void =
  reset_timeout() where
{
//
val () = setTimer(getMinute(), getSecond())
//
} (* end of [reset_process] *)

(* ****** ****** *)
//
extern
fun
did_timeout(): bool
//
(* ****** ****** *)

local
//
val
isCalled =
ref{bool}(false)
//
in
//
implement
do_timeout() =
if
not(isCalled[])
then
(
button_disable(theButton_pause);
isCalled[] := true; alert("Timeout!")
) (* end of [if] *)
//
implement
reset_timeout() = isCalled[] := false
//
implement did_timeout() = isCalled[]
//
end // end of [local]

(* ****** ****** *)

fun
time_tally_process
(total: int, tally: int): void = let
//
val
tdiff =
(
if
tally < total
then total-tally else 0
) : int // end-of-val
//
val () =
if
(tally > total) then do_timeout()
//
val hh = tdiff/3600
val mm = (tdiff%3600)/60
val ss = (tdiff%3600)%60
val () = setTimer(mm, ss)
//
in
  // nothing
end // end of [time_tally_process]

(* ****** ****** *)

fun
render_keyval
(kxs: state, kx: keyval): void =
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
| "time_tally" =>
  if
  kxs.start()
  then
  (
  reset_process()
  )
  else
  (
  time_tally_process
  (
  kxs.time_total()
  ,
  if
  kxs.pause()
  then un_MVint(kx.1) + (theGetTime()-kxs.time_base())/1000
  else un_MVint(kx.1)
  )
  )  
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
    state_update(kxs, lam(kx) => update_start(kxs, kx))
  | Reset() =>
    (
    reset_timeout();
    state_update(kxs, lam(kx) => update_reset(kxs, kx))
    )
  | Pause() =>
    state_update(kxs, lam(kx) => update_pause(kxs, kx))
  | Resume() =>
    state_update(kxs, lam(kx) => update_resume(kxs, kx))
  )
)
)
//
in (* in-of-local *)
//
val
theState_stream =
Property_sampledBy_estream
(theState_property, Bacon_interval(250, 0))
//
val ((*void*)) =
theState_stream.onValue()
(lam(kxs) =>
 if
 did_timeout()
 then ((*done*))
 else
 list0_foreach(kxs, lam(kx) => render_keyval(kxs, kx)))
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
