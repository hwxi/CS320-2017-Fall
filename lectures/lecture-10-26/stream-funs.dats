(* ****** ****** *)

#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"

(* ****** ****** *)

#include
"./../../libraries/class.dats"

(* ****** ****** *)
//
extern
fun
{a:t@ype}
stream_append
(stream(a), stream(a)): stream(a)
//
implement
{a}(*tmp*)
stream_append
(xs, ys) = $delay
(
case+ !xs of
| stream_nil() => !ys
| stream_cons(x, xs) =>
  stream_cons(x, stream_append<a>(xs, ys))
)
//
(* ****** ****** *)
//
extern
fun
{a:t@ype}
{b:t@ype}
stream_imap
( xs: stream(INV(a))
, fopr: cfun(int, a, b)): stream(b)
//
implement
{a}{b}
stream_imap(xs, fopr) = let
//
fun
auxmain
(
xs: stream(a), i: int
) : stream(b) = $delay
(
case !xs of
| stream_nil() =>
  stream_nil()
| stream_cons(x, xs) =>
  stream_cons(fopr(i, x), auxmain(xs, i+1))
)
//
in
  auxmain(xs, 0(*i*))
end // end of [stream_imap]
//
(* ****** ****** *)
//
extern
fun
{a,b:t@ype}
stream_zip
( xs: stream(INV(a))
, ys: stream(INV(b))): stream($tup(a, b))
//
implement
{a,b}
stream_zip
  (xs, ys) = $delay
(
case+ !xs of
| stream_nil() => stream_nil()
| stream_cons(x, xs) =>
  (
    case+ !ys of
    | stream_nil() => stream_nil()
    | stream_cons(y, ys) => stream_cons($tup(x, y), stream_zip<a,b>(xs, ys))
  )
)
//
(* ****** ****** *)
extern
fun
{a1
,a2:t@ype}
{b3:t@ype}
stream_map2
( xs1: stream(INV(a1))
, xs2: stream(INV(a2))
, fopr: cfun(a1, a2, b3)): stream(b3)

(*
implement
{a1,a2}{b3}
stream_map2(xs1, xs2, fopr) =
stream_map<$tup(a1,a2)><b3>
(stream_zip<a1,a2>(xs1, xs2), lam($tup(x1, x2)) => fopr(x1, x2))
*)

implement
{a1,a2}{b3}
stream_map2
  (xs, ys, fopr) = $delay
(
case+ !xs of
| stream_nil() => stream_nil()
| stream_cons(x, xs) =>
  (
    case+ !ys of
    | stream_nil() =>
      stream_nil()
    | stream_cons(y, ys) =>
      stream_cons(fopr(x, y), stream_map2<a1,a2><b3>(xs, ys, fopr))
  )
)

(* ****** ****** *)

(* end of [stream-funs.dats] *)
