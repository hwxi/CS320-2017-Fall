(* ****** ****** *)
(*
** HanoiTowers
*)
(* ****** ****** *)
(*
##myatsccdef=\
patsopt -d $1 | \
atscc2js -o $fname($1)_dats.js -i -
*)
(* ****** ****** *)
//
#define
ATS_MAINATSFLAG 1
//
#define
ATS_DYNLOADNAME
"HanoiTowers__dynload"
//
#define
ATS_PACKNAME "HanoiTowers"
#define
ATS_EXTERN_PREFIX "HanoiTowers__"
#define
ATS_STATIC_PREFIX "_HanoiTowers__"
//
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

typedef pole = int

(* ****** ****** *)
//
extern
fun
move(src: pole, dst: pole): void
//
extern
fun
nmove
(n: int, src: pole, dst: pole, tmp: pole): void
//
(* ****** ****** *)
//
implement
nmove
( n
, src, dst, tmp) =
if
(n > 0)
then
(
nmove(n-1, src, tmp, dst);
move(src, dst);
nmove(n-1, tmp, dst, src);
)
// end of [if] // end of [nmove]
//
(* ****** ****** *)
//
typedef cont0() = cfun(void)
//
//
extern
fun
k_move(src: pole, dst: pole, k: cont0()): void
//
extern
fun
k_nmove
(n: int, src: pole, dst: pole, tmp: pole, k: cont0()): void
//
(* ****** ****** *)
//
implement
k_nmove
( n
, src, dst, tmp
, k0 ) =
if
(n > 0)
then
(
k_nmove
( n-1, src, tmp, dst
, lam() => k_move(src, dst, lam() => k_nmove(n-1, tmp, dst, src, k0)))
) 
else k0((*void*))
// end of [if] // end of [k_nmove]
//
(* ****** ****** *)
//
#staload
"./../../CPS-Animation-Control.dats"
//
(* ****** ****** *)
//
(*
#define N 8
*)
extern
fun N_get(): int
extern
fun N_set(int): void
//
(* ****** ****** *)

local

val N = ref{int}(8)

in (* in-of-local *)
//
implement N_get() = N[]
implement N_set(n) = (N[] := n)
//
end // end of [local]

(* ****** ****** *)
//
extern
fun
height_get(): int = "mac#"
extern
fun
ndelay_get(): int = "mac#"
//
%{^
function
height_get()
{
  return parseInt
  (
    document.getElementById("param_height").value
  ); // end-of-return
}
function
ndelay_get()
{
  return parseInt
  (
    document.getElementById("param_ndelay").value
  ); // end-of-return
}
%}
//
(* ****** ****** *)
//
implement
execute_after
  (ms, fwork) =
(
//
$extfcall(void, "setTimeout", cloref2fun0(fwork), ms)
//
) (* end of [execute_after] *)
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

assume button = xmldoc

(* ****** ****** *)

implement
theStartButton =
document_getElementById("theStartButton")
implement
theResetButton =
document_getElementById("theResetButton")
implement
thePauseButton =
document_getElementById("thePauseButton")
implement
theStep1Button =
document_getElementById("theStep1Button")
implement
theResumeButton =
document_getElementById("theResumeButton")

(* ****** ****** *)
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
implement
button_enable(btn) =
$extfcall(void, "button_enable", btn)
implement
button_disable(btn) =
$extfcall(void, "button_disable", btn)
//
(* ****** ****** *)
//
val () =
{
//
(*
val () =
alert("param_initize")
*)
//
val () = theResetButton.enable()
//
val () = theStartButton.disable()
val () = thePauseButton.disable()
val () = theStep1Button.disable()
val () = theResumeButton.disable()
//
} (* end of [HonaiTowers_setup] *)
//
(* ****** ****** *)

local

val A =
array0_make_elt{int}(0, 0)

in (* in-of-local *)

val
thePoles =
array0_make_elt{array0(int)}(3, A)

end // end of [local]

(* ****** ****** *)

(*
//
implement
k_move
(src, dst, k0) =
let val () = move(src, dst) in k0() end
//
implement
k_move
(src, dst, k0) =
let val () = move(src, dst) in save_cont(k0) end
//
*)

(* ****** ****** *)
//
extern
fun
HanoiTowers_stage
  ((*void*)): void
//
(* ****** ****** *)

implement
k_move
(src, dst, k0) = let
//
(*
val
() =
alert
( "k_move: "
+ String(src)
+ " -> "
+ String(dst)
) (* end of [val] *)
*)
//
val
src =
thePoles[src]
val
dst =
thePoles[dst]
//
val i =
array0_find_index(src, lam(i) => src[i] > 0)
val j = 
array0_find_index(dst, lam(j) => dst[j] > 0)
val j = (if j >= 0 then j else dst.size()): int
//
val di = src[i]
val () = src[i] := 0
val () = dst[j-1] := di
//
in
  HanoiTowers_stage(); theCont1_save(k0)
end // end of [k_move]

(* ****** ****** *)
//
extern
fun
thePoles_init
  ((*void*)): void
//
implement
thePoles_init
  ((*void*)) =
{
//
val N = N_get()
val N = g1ofg0(N)
val N = max(N, 0)
//
val src = 0 and dst = 1 and tmp = 2
val () =
thePoles[src] := array0_make_elt{int}(N, 0)
val () =
thePoles[dst] := array0_make_elt{int}(N, 0)
val () =
thePoles[tmp] := array0_make_elt{int}(N, 0)
//
val xs =
thePoles[src]
val () =
(xs).foreach()(lam(i) => xs[i] := i+1)
//
} (* end of [thePoles_init] *)
//
(* ****** ****** *)
//
extern
fun
thePoles_show
  ((*void*)): void
//
implement
thePoles_show() = let
//
val p0 = thePoles[0]
val p1 = thePoles[1]
val p2 = thePoles[2]
//
val H0 = array0_size(p0)
//
fun
dshow1
(di: int): void =
if
(di > 0)
then
(
print("O"); dshow1(di-1); print("O")
) else print("|")
//
fun
dshow2
(W: int, di: int): void =
if
(W > 2*di)
then
(
print(" "); dshow2(W-2, di); print(" ")
)
else dshow1(di)
//
val W0 = 2*H0 + 6
//
in
(
H0
).foreach()
(
lam(i) =>
(
dshow2(W0, p0[i]);
dshow2(W0, p1[i]); dshow2(W0, p2[i]); println!()
)
)
end // end of [thePoles_show]

(* ****** ****** *)
//
implement
HanoiTowers_stage
  ((*void*)) = let
//
val
theStage =
document_getElementById
  ("theStage")
//
val () =
the_print_store_clear()  
//
val () = thePoles_show()
//
val res = the_print_store_join()
//
in
  xmldoc_set_innerHTML(theStage, res)
end // end of [HanoiTowers_stage]
//
(* ****** ****** *)
//
implement
theCont0_init() = let
//
val () =
N_set(height_get())
val () =
theNDelay_set(ndelay_get())
//
val () = thePoles_init()
val () = HanoiTowers_stage()
//
in
//
lam
(
// argless
) => let
//
val N = N_get()
val src = 0 and dst = 1 and tmp = 2
//
in
//
k_nmove
( N, src, dst, tmp
, lam() =>
  let val () =
    alert("HanoiTowers: Done!") in theResetButton_action()
  end // end of [let]
)
//
end // end of [lam]
//
end // end of [theCont0_init]

(* ****** ****** *)

%{$
//
function
HanoiTowers__initize()
{
//
CPS_Animation_Control__dynload
(); HanoiTowers__dynload(); return;
//
} // end of [HanoiTowers__initize]
%}

(* ****** ****** *)

%{$
//
jQuery(document).ready(function(){HanoiTowers__initize();});
//
%} // end of [%{$]

(* ****** ****** *)

(* end of [HanoiTowers.dats] *)
