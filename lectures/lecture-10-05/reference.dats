
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

(*
fun
{a:t@ype}
ref_make_elt(x: a): ref(a)
fun
{a:t@ype}
ref_get_elt(r0: ref): a
fun
{a:t@ype}
ref_set_elt(r0: ref, x0: a): void
fun
{a:t@ype}
ref_exch_elt(r0: ref, new: a): a(*old*)
*)

(* ****** ****** *)

val r = ref<int>(0)
val-(0) = ref_get_elt<int>(r)
val-(0) = !r // !r = 0
val ( ) = !r := 1
val-(1) = !r // !r = 1

(* ****** ****** *)

implement main0() = ()

(* ****** ****** *)

(* end of [reference.dats] *)

