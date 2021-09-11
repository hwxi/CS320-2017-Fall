(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)
//
implement
expr_simplify
  (e0) =
(
case+ e0 of
| X() => e0
| I(i) => e0
| Add(e1, e2) => let
    val e1 = expr_simplify(e1)
    val e2 = expr_simplify(e2)
  in
    case+ e1 of
    | I(0) => e2
    | _(*nz*) =>
      (
        case+ e2 of
        | I(0) => e1 | _ => Add(e1, e2)
      )
  end // end of [Add]
| Sub(e1, e2) => let
    val e1 = expr_simplify(e1)
    val e2 = expr_simplify(e2)
  in
    case+ e2 of
    | I(0) => e1 | _(*nz*) => Sub(e1, e2)
  end // end of [Sub]
| Mul(e1, e2) => let
    val e1 = expr_simplify(e1)
    val e2 = expr_simplify(e2)
  in
    case+ e1 of
    | I(1) => e2
    | I(0) => I(0)
    | _(*not-0-1*) =>
      (
        case+ e2 of
        | I(1) => e1
        | I(0) => I(0)
        | _(*not-0-1*) => Mul(e1, e2)
      )
  end // end of [Mul]
)
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
val e1 = expr_simplify(e0)
//
val () = println! ("e0 = ", e0)
val () = println! ("e1 = ", e1)
//
} (* end of [main0] *)
//
(* ****** ****** *)

(* end of [expr_simplify.dats] *)
