(* ****** ****** *)
(*
** SelectionSort
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
"SelectionSort__dynload"
//
#define
ATS_PACKNAME "SelectionSort"
#define
ATS_EXTERN_PREFIX "SelectionSort__"
#define
ATS_STATIC_PREFIX "_SelectionSort__"
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

#staload
UN = "prelude/SATS/unsafe.sats"

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
asize_get(): int = "mac#"
extern
fun
intmax_get(): int = "mac#"
extern
fun
ndelay_get(): int = "mac#"
//
%{^
function
asize_get()
{
  return parseInt
  (
    document.getElementById("param_asize").value
  ); // end-of-return
}
function
intmax_get()
{
  return parseInt
  (
    document.getElementById("param_intmax").value
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
//
val
theArray =
ref{array0(int)}(A) where
{
//
val A =
array0_make_elt{int}(0, 0)
//
}
//
(* ****** ****** *)
//
fun
theArray_show(): void = let
//
val A = theArray[]
//
in
//
(A).foreach()
(lam(i) => (if i > 0 then print "|"; print(A[i])))
//
end // end of [theArray_show]
//
(* ****** ****** *)
//
fun
randint
(asz: int): int =
if
asz >= 2
then
double2int(asz*JSmath_random())
else (0) // end of [if]
//
extern
fun
my_array0_tabulate
  {a:vt0p}
  ( asz: int
  , fopr: cfun(Nat, a)): array0(a)
//
implement
my_array0_tabulate
{a}(asz, fopr) = let
//
val
asz = g1ofg0(asz)
val
asz =
(if asz >= 0 then asz else 0): Nat
//
in
  $UN.cast(arrszref_tabulate_cloref{a}(asz, fopr))
end // end of [array0_tabulate]
//
fun
theArray_init
  ((*void*)): void = let
//
val
asz = asize_get()
val
intmax = intmax_get()
//
val A =
my_array0_tabulate{int}(asz, lam(i) => 1+randint(intmax))
//
in
  theArray[] := A  
end // end of [theArray_init]
//
(* ****** ****** *)
//
extern
fun
SelectionSort_stage((*void*)): void
//
extern
fun
array0_chart_make
(canvas: xmldoc, A: array0(int)): void
//
(* ****** ****** *)
//
implement
SelectionSort_stage
  ((*void*)) = let
//
val
theStage =
document_getElementById("theStage")
//
in
  array0_chart_make(theStage, theArray[])
end (* end of [SelectionSort_stage] *)
//
(* ****** ****** *)
//
extern
fun
{a:t@ype}
array0_swap
(A: array0(a), i: int, j: int): void
extern
fun
{a:t@ype}
array0_selection_sort
(
 A: array0(a), cmp: (a, a) -<cloref1> int
) : void // end of [array0_selection_sort]
//
(* ****** ****** *)

implement
{a}(*tmp*)
array0_selection_sort
  (A, cmp) = let
//
val n0 = array0_size(A)
//
fun
indmin
( i0: int
, i1: int): int =
if
(i1 < n0)
then let
val
sgn =
cmp(A[i0], A[i1])
in
if
sgn <= 0 
then indmin(i0, i1+1)
else indmin(i1, i1+1)
end // end of [then]
else i0 // end of [else]
//
fun
loop
(i0: int): void =
if
(i0 < n0)
then let
//
val i1 =
min(i0, i0+1)
val () =
array0_swap<a>(A, i0, i1)
//
in
  loop(i0+1)
end // end of [if]
//
in
  loop(0(*i0*))
end // end of [array0_selection_sort]

(* ****** ****** *)
//
extern
fun
{a:t@ype}
array0_kswap
(A: array0(a), i: int, j: int, k0: cfun(void)): void
//
extern
fun
{a:t@ype}
array0_selection_ksort
(
 A: array0(a), cmp: (a, a) -<cloref1> int, k0: cfun(void)
) : void // end of [array0_selection_ksort]
//
(* ****** ****** *)

implement
{a}(*tmp*)
array0_selection_ksort
  (A, cmp, k0) = let
//
val n0 = array0_size(A)
//
fun
indmin
( i0: int
, i1: int): int =
if
(i1 < n0)
then let
val
sgn =
cmp(A[i0], A[i1])
in
if
sgn <= 0 
then indmin(i0, i1+1)
else indmin(i1, i1+1)
end // end of [then]
else i0 // end of [else]
//
fun
loop
( i0: int
, k0: cont0()): void =
if
(i0 < n0)
then let
  val i1 = indmin(i0, i0+1)
in
  array0_kswap<a>
  (A, i0, i1, lam() => loop(i0+1, k0))
end // end of [then]
else k0() // end of [else]
//
in
  loop(0(*i0*), k0)
end // end of [array0_selection_ksort]

(* ****** ****** *)

implement
{a}(*tmp*)
array0_swap
(A, i, j) = let
  val tmp = A[i]
in
  A[i] := A[j]; A[j] := tmp
end // end of [array0_swap]

(* ****** ****** *)

implement
{a}(*tmp*)
array0_kswap
(A, i, j, k0) = let
//
(*
val
() =
alert
( "kswap: "
+ String(i)
+ " -> "
+ String(j)
) (* end of [val] *)
*)
//
val () = array0_swap<a>(A, i, j)
//
in
  SelectionSort_stage(); theCont1_save(k0)
end // end of [array0_kswap]

(* ****** ****** *)

//
implement
theCont0_init() = let
//
val () =
theNDelay_set(ndelay_get())
//
val () = theArray_init()
val () = SelectionSort_stage()
//
in
//
lam
(
// argless
) => let
in
//
array0_selection_ksort<int>
( theArray[]
, lam(x, y) => compare(x, y)
, lam() =>
  let val () =
    alert("SelectionSort: Done!") in theResetButton_action()
  end // end of [let]
)
//
end // end of [lam]
//
end // end of [theCont0_init]

(* ****** ****** *)
//
extern
fun
JSarray_chart_make
( cnvs: xmldoc
, data: JSarray(int)
, labels: JSarray(string)) : void = "mac#"
//
(* ****** ****** *)

implement
array0_chart_make
  (canvas, A) = let
//
val
asz = A.size((*void*))
//
val
data =
JSarray_tabulate_cloref
  {int}(asz, lam(i) => A[i])
//
val
labels =
JSarray_tabulate_cloref
  {string}(asz, lam(i) => "")
//
in
  JSarray_chart_make(canvas, data, labels)
end // end of [array0_chart_make]

(* ****** ****** *)

%{$
//
var
theChart = null;
//
var
canvas =
document_getElementById
  ("theStage");
var
ctx2d =
canvas.getContext("2d");
//
function
JSarray_chart_make
(ctx2d, data, labels)
{
//
if(theChart)
{
  theChart.destroy();
}
//
theChart = new Chart(ctx2d,
{
type: 'bar',  
data: {
  labels: labels,
  datasets: [
    {
      data: data,
      label: '# of units',
      borderWidth: 1,
      borderColor: 'rgba(0, 0, 0, 1.0)',
      backgroundColor: 'rgba(0, 0, 0, 0.75)',
    }
  ],
}, // end of [data]
options: {
  legend: { display: false },
  scales: {
    xAxes: [{ ticks: { display: false } }],
    yAxes: [{ ticks: { beginAtZero: true } }],
  },
  tooltips: { enabled: false },
  animation: { duration: 0/*no*/ },
}, // end of [options]
}
);
} // end of [JSarray_chart_make]
%}

(* ****** ****** *)

%{$
//
function
SelectionSort__initize()
{
//
CPS_Animation_Control__dynload
(
// argumentless
); SelectionSort__dynload(); return;
//
} // end of [SelectionSort__initize]
//
%} // end of [%{$]

(* ****** ****** *)

%{$
//
jQuery(document).ready(function(){SelectionSort__initize();});
//
%} // end of [%{$]

(* ****** ****** *)

(* end of [SelectionSort.dats] *)
