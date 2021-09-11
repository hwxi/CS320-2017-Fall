(* ****** ****** *)
(*
** Sketching mergesort
*)
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

extern
fun
{a:t@ype}
mergesort
(xs: list0(a), cmp: cfun(a, a, int)): list0(a)

(* ****** ****** *)
//
implement
{a}(*tmp*)
mergesort
(xs, cmp) =
(
if
(length(xs) <= 1)
then xs
else let
//
val
$tup(xs1, xs2) = split(xs)
//
val ys1 = mergesort<a>(xs1, cmp)
val ys2 = mergesort<a>(xs2, cmp)
//
in
  merge(ys1, ys2)
end // end of [mergesort]
) where
{
  extern
  fun
  merge : (list0(a), list0(a)) -> list0(a)
  and
  split : (list0(a)) -> $tup(list0(a), list0(a))
} (* end of [mergesort] *)
//
(* ****** ****** *)

(* end of [mergesort.dats] *)
