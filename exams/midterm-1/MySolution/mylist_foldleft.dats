(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)
//
extern
fun
{a:t@ype}
mylist_length
(xs: mylist(a)): int
//
extern
fun
{a:t@ype}
mylist_get_at
(xs: mylist(a), i: int): a
//
(* ****** ****** *)
//
// HX:
// Here is some code making use of
// mylist_foldleft
//
(* ****** ****** *)
//
implement
{a}(*tmp*)
mylist_length
  (xs) =
  mylist_foldleft<int><a>(xs, 0, lam(r, _) => r+1)
//
(* ****** ****** *)

exception
MylistSubscriptExn of ()

(* ****** ****** *)

implement
{a}(*tmp*)
mylist_get_at
  (xs, i) = let
//
exception Found of (a)
//
in

try
(
let val _ =
mylist_foldleft<int><a>
(xs, 0, lam(r, x) => if i = r then $raise Found(x) else r+1)
in
  $raise MylistSubscriptExn()
end
)
with ~Found(x) => x

end // end of [mylist_get_at]

(* ****** ****** *)
//
(*
implement
{res}{a}
mylist_foldleft
(xs0, res, fopr) = ...
*)
//
(* ****** ****** *)

fun
{a:t@ype}
mylist2list0
(
xs: mylist(a)
) : list0(a) = let
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

(* ****** ****** *)

implement
main0() = () where
{
//
val xs0 = mylist_nil()
val xs1 = mylist_cons(1, xs0)
val xs2 = mylist_snoc(xs1, 2)
val xs3 = mylist_append(xs2, xs2)
val xs4 = mylist_reverse(xs3)
//
val ys0 = mylist2list0<int>(xs4)
val ((*void*)) = println! ("ys0 = ", ys0)
//
val ((*void*)) = println! ("xs4[0] = ", mylist_get_at<int>(xs4, 0))
val ((*void*)) = println! ("xs4[1] = ", mylist_get_at<int>(xs4, 1))
val ((*void*)) = println! ("xs4[2] = ", mylist_get_at<int>(xs4, 2))
val ((*void*)) = println! ("xs4[3] = ", mylist_get_at<int>(xs4, 3))
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [mylist_foldleft.dats] *)
