(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign07-2_sol_dats
// How to compile:
// myatscc assign07-2_sol.dats
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

#include
"./../assign07-2.dats"

(* ****** ****** *)
//
#define EPISILON 10E-6
//
(* ****** ****** *)
//
local

typedef poly = list0(int)

fun
poly_cons
(x0: int, xs: poly): poly =
(
case+ xs of
| list0_nil() =>
  if x0 = 0
    then list0_nil()
    else list0_sing(x0)
  // end of [list0_nil]
| list0_cons _ => list0_cons(x0, xs)
)

fun
poly_add
(xs: poly, ys: poly): poly =
(
case+ xs of
| list0_nil() => ys
| list0_cons(x1, xs2) =>
  (
    case+ ys of
    | list0_nil() => xs
    | list0_cons
        (y1, ys2) =>
      (
        poly_cons(x1+y1, poly_add(xs2, ys2))
      )
  ) (* end of [list0_cons] *)
)

fun
poly_sub
(xs: poly, ys: poly): poly =
(
case+ xs of
| list0_nil() => ys
| list0_cons(x1, xs2) =>
  (
    case+ ys of
    | list0_nil() => xs
    | list0_cons
        (y1, ys2) =>
      (
        poly_cons(x1-y1, poly_sub(xs2, ys2))
      )
  ) (* end of [list0_cons] *)
)

fun
poly_m
(x0: int, xs: poly): poly =
(
if
(x0 = 0)
then list0_nil()
else list0_map<int><int>(xs, lam(x) => x0 * x)
)

fun
poly_mul
(xs: poly, ys: poly): poly =
(
case+ xs of
| list0_nil() =>
  list0_nil()
| list0_cons(x1, xs2) =>
  (
    case+ ys of
    | list0_nil() =>
      list0_nil()
    | list0_cons
        (y1, ys2) =>
      (
        poly_cons
        ( x1*y1
        , poly_add
          ( poly_add
            ( poly_m(x1, ys2)
            , poly_m(y1, xs2)
            )
          , poly_cons(0, poly_mul(xs2, ys2))
          )
        )
      )
  ) (* end of [list0_cons] *)
)

in

implement
expr_normalize(e0) =
(
case+ e0 of
| X() =>
  list0_cons
  (0, list0_sing(1))
| I(i) =>
  poly_cons(i, list0_nil())
| Add(e1, e2) =>
  poly_add(expr_normalize(e1), expr_normalize(e2))
| Sub(e1, e2) =>
  poly_sub(expr_normalize(e1), expr_normalize(e2))
| Mul(e1, e2) =>
  poly_mul(expr_normalize(e1), expr_normalize(e2))
)
  
end // end of [local]
//
(* ****** ****** *)

implement
{a}(*tmp*)
streamize_list_split
  (xs) = let
//
fun
auxmain
(
xs: list0(a)
,
ys: list0(a)
) :
stream
(
$tup(list0(a), list0(a))
) = $delay
(
case+ xs of
| list0_nil() => stream_nil()
| list0_cons
    (x1, xs2) =>
  (
    stream_cons
    ( $tup(list0_reverse(ys), xs)
    , auxmain(xs2, list0_cons(x1, ys)))
  )
)
//
in
//
  case+ xs of
  | list0_nil() => stream_make_nil()
  | list0_cons(x, xs) => auxmain(xs, list0_sing(x))
//
end // end of [streamize_list_split]

(* ****** ****** *)

implement main0((*void*)) =
{
//
// Please add your own testing code
//
val
e0 =
Sub
(
Mul
(
Add(I(0), I(1)), X()
)
,
I(0)
)
//
val e1 = Mul(e0, e0)
//
val () =
println! ("e0 = ", expr_normalize(e0))
val () =
println! ("e1 = ", expr_normalize(e1))
//
val () =
println!
("equal_expr_expr(e0, e0) = ", equal_expr_expr(e0, e0))
//
val () =
println!
("equal_expr_expr(e0, e1) = ", equal_expr_expr(e0, e1))
//
val () =
println!
("equal_expr_expr(e1, X*X) = "
, equal_expr_expr(e1, Mul(X(), X())))
//
val () =
println!
("equal_expr_expr(e1, (X+1)*(X-1)+1) = "
, equal_expr_expr(e1, Add(Mul(Add(X(),I(1)), Sub(X(),I(1))),I(1))))
//
(*
val
xsyss =
streamize_list_split<int>
(g0ofg1($list{int}(1, 2, 3, 4, 5)))
implement
fprint_tupbox$sep<>(out) = fprint(out, " | ")
val () = println! ("xsyss = ", xsyss)
*)
//
val xs =
g0ofg1($list{int}(1, 2, 3))
val ys = list2mytrees<int>(xs)
val () = println! ("|ys(3)| = ", length(ys))
//
val xs =
g0ofg1($list{int}(1, 2, 3, 4))
val ys = list2mytrees<int>(xs)
val () = println! ("|ys(4)| = ", length(ys))
//
val xs =
g0ofg1($list{int}(1, 2, 3, 4, 5))
val ys = list2mytrees<int>(xs)
val () = println! ("|ys(5)| = ", length(ys))
//
val xs =
g0ofg1($list{int}(1, 2, 3, 4, 5, 6))
val ys = list2mytrees<int>(xs)
val () = println! ("|ys(6)| = ", length(ys))
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [assign07-2_sol.dats] *)
