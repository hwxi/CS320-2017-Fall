(* ****** ****** *)
(*
##myatsccdef=\
patsopt -d $1 | \
atscc2js -i - > $fname($1)_dats.js
*)
(* ****** ****** *)
(*
** For controlling
** continuation-based animation
*)
(* ****** ****** *)
//
#define
ATS_MAINATSFLAG 1
//
#define
ATS_DYNLOADNAME
"CPS_Animation_Control__dynload"
//
(* ****** ****** *)
//
#define
ATS_PACKNAME "CPS.Animation.Control"
#define
ATS_EXTERN_PREFIX "CPS_Animation_Control__"
#define
ATS_STATIC_PREFIX "_CPS_Animation_Control__"
//
(* ****** ****** *)

#define
LIBATSCC2JS_targetloc
"$PATSHOME/contrib\
/libatscc2js/ATS2-0.3.2" // latest stable release
//
#include
"{$LIBATSCC2JS}/staloadall.hats" // for prelude stuff
//
(* ****** ****** *)
//
extern
fun
execute_after
( ms: int
, fwork: cfun(void)): void
//
(* ****** ****** *)

abstype button

(* ****** ****** *)

extern
val theStartButton: button
and theResetButton: button
and thePauseButton: button
and theStep1Button: button
and theResumeButton: button

(* ****** ****** *)
//
extern
fun
button_enable(button): void
extern
fun
button_disable(button): void
//
overload .enable with button_enable
overload .disable with button_disable
//
(* ****** ****** *)
//
typedef
cont0() =
() -<cloref1> void
//
typedef
cont0_opt = option0(cont0())
//
(* ****** ****** *)
//
extern
fun
theNDelay_get(): int
extern
fun
theNDelay_set(int): void
//
(* ****** ****** *)
//
local
//
val
theNDelay = ref{int}(1000)
//
in (* in-of-local *)
//
implement
theNDelay_get() = theNDelay[]
implement
theNDelay_set(n0) = (theNDelay[] := n0)
//
end // end of [local]
//
(* ****** ****** *)
//
extern
fun
theCont0_init(): cont0()
//
(* ****** ****** *)

local
//
val
theCont0 = ref{cont0_opt}(None0())
val
theCont1 = ref{cont0_opt}(None0())
//
in (* in-of-local *)
//
fun
theCont0_get
  (): cont0_opt =
let
  val opt = theCont0[]
in
  theCont0[] := None0(); opt
end // end of [theCont0_get]
fun
theCont1_get
  (): cont0_opt =
let
  val opt = theCont1[]
in
  theCont1[] := None0(); opt
end // end of [theCont1_get]
fun
theCont1_set
(
  opt: cont0_opt
) : void = (theCont1[] := opt)
//
fun
theCont0_reset(): void =
  ( theCont0[] :=
    Some0( theCont0_init() ))
//
fun
theCont1_reset(): void =
  theCont1[] := None0(*void*)
//
fun
theCont1_pause(): void =
(
  theCont0[] := theCont1_get()
)
fun
theCont1_resume() =
(
  theCont1[] := theCont0_get()
)
//
end // end of [local]

(* ****** ****** *)
//
extern
fun
theCont1_save
  (k0: cont0()): void
//
implement
theCont1_save(k0) = 
theCont1_set(Some0(k0))
//
(* ****** ****** *)
//
extern
fun
theCont0_exec(): void
//
implement
theCont0_exec() = let
//
val opt = theCont0_get()
//
in
  case+ opt of
  | None0() => ()
  | Some0(k0) => k0()
end // end of [theCont0_exec]
//
extern
fun
theCont1_exec_one(): void
and
theCont1_exec_loop(): void
//
implement
theCont1_exec_one
  ((*void*)) = let
//
val opt = theCont1_get()
//
in
  case+ opt of
  | None0() => ()
  | Some0(k0) => k0()
end // end of [theCont1_exec]
//
implement
theCont1_exec_loop
  ((*void*)) = let
//
fun
loop
(ms: int): void = let
//
val
opt = theCont1_get()
//
in
  case+ opt of
  | None0() => ()
  | Some0(k0) =>
    (
      k0();
      execute_after(ms, lam() => loop(ms))
    )
end
//
in
  loop(theNDelay_get())
end // end of [theCont1_loop_exec]
//
(* ****** ****** *)
//
extern
fun
theStartButton_action((*void*)): void = "mac#"
and
theResetButton_action((*void*)): void = "mac#"
and
thePauseButton_action((*void*)): void = "mac#"
and
theStep1Button_action((*void*)): void = "mac#"
and
theResumeButton_action((*void*)): void = "mac#"
//
(* ****** ****** *)

implement
theStartButton_action() =
{
//
val () =
  thePauseButton.enable()
//
val () =
  theStartButton.disable()
val () =
  theStep1Button.disable()
(*
val () = theResumeButton.disable()
*)
//
val () = theCont1_resume()
val () = theCont1_exec_loop((*void*))
//
} (* end of [theStartButton_action] *)

(* ****** ****** *)

implement
theResetButton_action() =
{
//
val () =
  theStartButton.enable()
val () =
  theStep1Button.enable()
//
val () =
  thePauseButton.disable()
val () =
  theResumeButton.disable()
//
val () = theCont0_reset((*void*))
val () = theCont1_reset((*void*))
//
} (* end of [theResetButton_action] *)

(* ****** ****** *)

implement
thePauseButton_action() =
{
//
val () =
  theStep1Button.enable()
val () =
  theResumeButton.enable()
//
val () =
  thePauseButton.disable()
//
val () = theCont1_pause((*void*))
//
} (* end of [thePauseButton_action] *)

(* ****** ****** *)

implement
theStep1Button_action() =
{
//
val () =
  theCont1_resume()
val () =
  theCont1_exec_one((*void*))
//
val () = theCont1_pause((*void*))
//
} (* end of [theStep1Button_action] *)

(* ****** ****** *)

implement
theResumeButton_action() =
{
//
val () = thePauseButton.enable()
//
val () = theStep1Button.disable()
val () = theResumeButton.disable()
//
val () = theCont1_resume((*void*))
val () = theCont1_exec_loop((*void*))
//
} (* end of [theResumeButton_action] *)

(* ****** ****** *)

(* end of [CPS-Animation-Control.dats] *)
