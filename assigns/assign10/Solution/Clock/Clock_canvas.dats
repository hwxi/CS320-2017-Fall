(* ****** ****** *)
//
typedef
canvas = matrix0(string)
//
(* ****** ****** *)
//
// HX: implemented
//
extern
fun
canvas_make
(nrow: int, ncol: int): canvas
//
(* ****** ****** *)
//
// HX: both implemented
//
extern
fun
canvas_clear(canvas: canvas): void
extern
fun
canvas_display(canvas: canvas): void
//
(* ****** ****** *)
//
// HX: 10 points
// For combining
// two canvases horizontally
// where the two are assumed to
// have the same number of rows
//
extern
fun
cbind_canvas_canvas
(c1: canvas, c2: canvas): canvas
//
(* ****** ****** *)
//
// HX: 20 points
//
// [digit] is a digit:
// 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
//
extern
fun
canvas_draw_digit
(canvas: canvas, digit: int): void
//
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
matrix0_foreach_row<string>
(canvas, lam(i, j) => canvas[i, j] := SNUL)
//
(* ****** ****** *)

implement
canvas_display
  (canvas) = let
//
val ncol = ncol(canvas)
//
in

matrix0_foreach_row<string>
(
//
canvas
,
lam(i, j) =>
let
val x = canvas[i,j]
in
(print(x); if (j+1) = ncol then println!())
end // end of [let]
//
) (* end of [matrix0_iforeach_row] *)

end // end of [canvas_display]

(* ****** ****** *)

implement
cbind_canvas_canvas
(c1, c2) = let
//
val nrow1 = nrow(c1)
val nrow2 = nrow(c2)
val ((*void*)) = assertloc(nrow1 = nrow2)
val ncol1 = ncol(c1)
val ncol2 = ncol(c2)
//
in
//
matrix0_tabulate<string>
(nrow1,
 ncol1+ncol2,
 lam(i, j) => if j < ncol1 then c1[i,j] else c2[i,j-ncol1]
)
//
end // end of [cbind_canvas_canvas]

(* ****** ****** *)

(* end of [Clock_canvas.dats] *)
