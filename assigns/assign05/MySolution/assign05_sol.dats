(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign05_sol_dats
// How to compile:
// myatscc assign05_sol.dats
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share\
/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)
//
#include
"./../../../libraries/class.dats"
#include
"./../../../libraries/myclass.dats"
//
(* ****** ****** *)

#include "./../assign05.dats"

(* ****** ****** *)

implement
{a}(*tmp*)
mylist2list0
  (xs) = let
//
fun
aux
(xs: mylist(a)): list0(a) =
(
case+ xs of
| mylist_nil() => list0_nil()
| mylist_cons(x, xs) => list0_cons(x, aux(xs))
| mylist_snoc(xs, x) => list0_extend(aux(xs), x)
| mylist_append(xs, ys) => list0_append(aux(xs), aux(ys))
| mylist_reverse(xs) => list0_reverse(aux(xs))
)
//
in
  aux(xs)
end // end of mylist2list0
//
(* ****** ****** *)

(* end of [assign05_sol.dats] *)
