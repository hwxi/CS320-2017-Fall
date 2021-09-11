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

implement
{res}{a}
mylist_foldleft
(xs0, res, fopr) = let
//
fun
auxl
(
xs: mylist(a), res: res
) : res =
(
case+ xs of
| mylist_nil() => res
| mylist_cons(x, xs) =>
  auxl(xs, fopr(res, x))
| mylist_snoc(xs, x) =>
  fopr(auxl(xs, res), x)
| mylist_append(xs, ys) =>
  auxl(ys, auxl(xs, res))
//
| mylist_reverse(xs) => auxr(xs, res)
//
)
//
and
auxr
(
xs: mylist(a), res: res
) : res =
(
case+ xs of
| mylist_nil() => res
| mylist_cons(x, xs) =>
  fopr(auxr(xs, res), x)
| mylist_snoc(xs, x) =>
  auxr(xs, fopr(res, x))
| mylist_append(xs, ys) =>
  auxr(xs, auxr(ys, res))
//
| mylist_reverse(xs) => auxl(xs, res)
//
)
//
in
  auxl(xs0, res)
end // end of [mylist_foldleft]

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
val xs5 = mylist_append(xs3, xs4)
//
val ys0 = mylist2list0<int>(xs5)
val ((*void*)) = println! ("xs5 = ", ys0)
//
val ((*void*)) = println! ("xs5[0] = ", mylist_get_at<int>(xs5, 0))
val ((*void*)) = println! ("xs5[1] = ", mylist_get_at<int>(xs5, 1))
val ((*void*)) = println! ("xs5[2] = ", mylist_get_at<int>(xs5, 2))
val ((*void*)) = println! ("xs5[3] = ", mylist_get_at<int>(xs5, 3))
val ((*void*)) = println! ("xs5[4] = ", mylist_get_at<int>(xs5, 4))
val ((*void*)) = println! ("xs5[5] = ", mylist_get_at<int>(xs5, 5))
val ((*void*)) = println! ("xs5[6] = ", mylist_get_at<int>(xs5, 6))
val ((*void*)) = println! ("xs5[7] = ", mylist_get_at<int>(xs5, 7))
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [mylist_foldleft.dats] *)
