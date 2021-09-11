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


fun
list0_mult(xs: list0(int)): int =
(
case+ xs of
| list0_nil() => 1
| list0_cons(x, xs) => x * list0_mult(xs)
)

fun
list0_mult2(xs: list0(int)): int =
(
case+ xs of
| list0_nil() => 1
| list0_cons(x, xs) =>
  if x = 0 then 0 else x * list0_mult2(xs)
)


fun
list0_mult3
(xs: list0(int)): int = let
  
  exception ZERO of ()
  
  fun
  aux(xs: list0(int)): int =
  (
  case+ xs of
  | list0_nil() => 1
  | list0_cons(x, xs) =>
    if x = 0 then $raise(ZERO) else x * aux(xs)
  )

in
   try aux(xs) with ~ZERO() => 0
end

val xs = g0ofg1($list{int}(0, 1, 2, 3, 4))

val () = println! ("list0_mult3(", xs, ") = ", list0_mult3(xs))

implement main0() = ()


