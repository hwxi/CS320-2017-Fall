(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)
//
implement
expr_compile
  (e0) =
(
case+ e0 of
| X() => lam(x) => x
| I(i) => lam(_) => i
| Add(e1, e2) => add(expr_compile(e1), expr_compile(e2))
| Sub(e1, e2) => sub(expr_compile(e1), expr_compile(e2))
| Mul(e1, e2) => mul(expr_compile(e1), expr_compile(e2))
) where
{
//
typedef fexpr = cfun(int, int)
//
fun
add(f1: fexpr, f2: fexpr): fexpr = lam(x) => f1(x) + f2(x)
and
sub(f1: fexpr, f2: fexpr): fexpr = lam(x) => f1(x) - f2(x)
and
mul(f1: fexpr, f2: fexpr): fexpr = lam(x) => f1(x) * f2(x)
//
} (* end of [expr_compile] *)
//
(* ****** ****** *)
//
implement
equal_expr_expr
  (e1, e2) = let
//
fun
deg(e0: expr): int =
(
case+ e0 of
| X() => 1
| I(i) => 0
| Add(e1, e2) => max(deg(e1), deg(e2))
| Sub(e1, e2) => max(deg(e1), deg(e2))
| Mul(e1, e2) => op+(deg(e1), deg(e2))
)
//
val f1 = expr_compile(e1)
val f2 = expr_compile(e2)
val N0 = max(deg(e1), deg(e2))
//
in
  int_forall(N0+1, lam(n) => (f1(n) = f2(n)))
end // end of [equal_expr_expr]
//
(* ****** ****** *)
//
implement
main0((*void*)) =
{
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
println!
("equal_expr_expr(e0, e0) = ", equal_expr_expr(e0, e0))
val () =
println!
("equal_expr_expr(e0, e1) = ", equal_expr_expr(e0, e1))
val () =
println!
("equal_expr_expr(e1, X*X) = ", equal_expr_expr(e1, Mul(X(), X())))
//
} (* end of [main0] *)
//
(* ****** ****** *)

(* end of [equal_expr_expr.dats] *)
