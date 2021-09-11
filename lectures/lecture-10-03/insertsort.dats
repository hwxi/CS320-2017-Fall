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
insertsort
(xs: list0(a), cmp: cfun(a, a, int)): list0(a)

implement
{a}
insertsort(xs, cmp) =
list0_foldleft<list0(a)><a>
(xs, list0_nil(), lam(res, x) => insord(res, x)) where
{
  fun
  insord(ys: list0(a), x0: a): list0(a) =
  (
    case+ ys of
    | list0_nil() =>
      list0_sing(x0)
    | list0_cons(y1, ys2) => let
        val sgn = cmp(y1, x0)
      in
        if sgn <= 0
          then list0_cons(y1, insord(ys2, x0))
          else list0_cons(x0, ys)
      end
   )
  
}

(* ****** ****** *)

val xs = g0ofg1($list{int}(9, 8, 6, 4, 5, 7))
val ys = insertsort<int>(xs, lam(x, y) => x - y)
val () = println! ("xs = ", xs)
val () = println! ("ys = ", ys)

(* ****** ****** *)

typedef int2 = @(int, int)

val x1 = @(1, 8)
val x2 = @(1, 6)
val x3 = @(0, 0)

(* ****** ****** *)
//
val xs =
g0ofg1($list{int2}(x1, x2, x3))
val ys =
insertsort<int2>(xs, lam(x, y) => x.0 - y.0)
//
val () = println! ("xs = ", xs)
val () = println! ("ys = ", ys)
//
(* ****** ****** *)

implement main0() = ()

(* ****** ****** *)

(* end of [insertsort.dats] *)
