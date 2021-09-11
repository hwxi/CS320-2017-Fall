(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign06_sol_dats
// How to compile:
// myatscc assign06_sol.dats
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

#include "./../assign06.dats"

(* ****** ****** *)

#define SNUL ""

(* ****** ****** *)
//
implement
canvas_make
(nrow, ncol) =
matrix0_make_elt<string>(nrow, ncol, SNUL)
//
(* ****** ****** *)
//
implement
canvas_clear(canvas) =
matrix0_iforeach_row<string>
(canvas, lam(i, j, x) => canvas[i, j] := SNUL)
//
(* ****** ****** *)

implement
canvas_display
  (canvas) = let
//
val ncol = ncol(canvas)
//
in

matrix0_iforeach_row<string>
(
//
canvas
,
lam(i, j, x) => (print(x); if (j+1) = ncol then println!())
//
) (* end of [matrix0_iforeach_row] *)

end // end of [canvas_display]

(* ****** ****** *)

implement
main0() = () where
{
//
val C0 = canvas_make(10, 20)
val () = matrix0_iforeach_row<string>(C0, lam(i, j, _) => C0[i,j] := "X")
val () = canvas_display( C0 )
//
} (* end of [val] *)

(* ****** ****** *)

(* end of [assign06_sol.dats] *)
