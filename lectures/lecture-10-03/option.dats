(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

#include
"./../../libraries/class.dats"
#include
"./../../libraries/myclass.dats"

(* ****** ****** *)

extern
fun
{a:t@ype}
option2list0(option0(a)): list0(a)
extern
fun
{a:t@ype}
list2option(option0(a)): list0(a)

(* ****** ****** *)

implement
{a}
option2list0(opt) =
(
case+ opt of
| None0() => list0_nil()
| Some0(x) => list0_cons(x, list0_nil)
)

(* ****** ****** *)

implement
{a}
list2option0(xs) =
(
case+ xs of
| list0_nil() => None0()
| list0_cons(x, _) => Some0(x)
)


(* ****** ****** *)

