(* ****** ****** *)
(*
** assign01
*)
(* ****** ****** *)
(*
##myatsccdef=\
patsopt -d $1 | atscc2js -o assign01_sol.js -i -
*)
(* ****** ****** *)
//
#define
ATS_MAINATSFLAG 1
#define
ATS_DYNLOADNAME
"assign01__dynload"
//
#define
ATS_EXTERN_PREFIX "assign01__"
#define
ATS_STATIC_PREFIX "assign01__"
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
#include
"./../assign01.dats"
//
(* ****** ****** *)
//
#include "./intsqrt.dats"
//
(* ****** ****** *)
//
extern
fun
intsqrt_funarg1_get(): int = "mac#"
//
%{^
function
intsqrt_funarg1_get()
{
  return parseInt(document.getElementById("intsqrt_funarg1").value);
}
%} (* end of [%{^] *)
//
(* ****** ****** *)
//
extern
fun
assign01_intsqrt_js
  ((*void*)): void = "mac#"
//
implement
assign01_intsqrt_js
  ((*void*)) = let
  val () =
  the_print_store_clear()
  val arg = intsqrt_funarg1_get()
  val () =
  println!
  ("intsqrt(", arg, ") = ", intsqrt(arg))
  // end of [val]
  val theOutput =
    document_getElementById("theOutput")
  // end of [val]
in
  xmldoc_set_innerHTML(theOutput, the_print_store_join())
end // end of [assign01_intsqrt_js]
//
(* ****** ****** *)

%{$
//
function
assign01__initize()
{
//
assign01__dynload(); return;
//
} // end of [assign01_initize]
%}

(* ****** ****** *)

%{$
//
jQuery(document).ready(function(){assign01__initize();});
//
%} // end of [%{$]

(* ****** ****** *)

(* end of [assign01_sol_js.dats] *)
