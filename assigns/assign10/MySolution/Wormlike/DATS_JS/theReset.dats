(* ****** ****** *)
(*
** Scene setup
*)
(* ****** ****** *)
//
#include "./theParams.hats"
//
#include
"{$LIBATSCC2JS}/staloadall.hats"
//
(* ****** ****** *)
//
#staload "./main.sats"
//
(* ****** ****** *)

(*
implement
theBoard_initialize
  ((*void*)) = let
//
val
theBoard = theBoard_get()
//
val N = min(XLEN, YLEN)
fun
add_blocks() =
(N).foreach()
(
lam(i) =>
if i mod 2 = 0 then
  (
   theBoard[i, i] := BLOCK;
   theBoard[N-1-i, i] := BLOCK;
  )
) (* add_blocks *)
//
fun
xrand(): int =
  double2int(XLEN*JSmath_random())
fun
yrand(): int =
  double2int(YLEN*JSmath_random())
//
fun
add_prize
(
// argless
) : void = let
  val x = xrand()
  and y = yrand()
//
  val knd = theBoard[x, y]
//
in
  if knd = 0
    then theBoard[x, y] := PRIZE else add_prize()
  // end of [if]
end // end of [add_prize]
//
fun
add_prizes() = (50).repeat()(lam() => add_prize())
//
in
  add_blocks(); add_prizes()
end // end of [theBoard_initialize]
*)

(* ****** ****** *)

implement
theBoard_initialize
  ((*void*)) =
(
  alert("Please display a scene of your initials!")
)

(* ****** ****** *)

(* end of [theReset.dats] *)
