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
val () = println! ("e0 = ", e0)
val () = println! ("f0(10) = ", expr_compile(e0)(10))
//
} (* end of [main0] *)
//
(* ****** ****** *)

(* end of [expr_compile.dats] *)
