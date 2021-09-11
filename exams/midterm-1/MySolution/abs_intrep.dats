(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)

(*
implement
abs_intrep(xs) = ...
*)

(* ****** ****** *)
(*
//
// HX:
// In order to use the testing code,
// you need to implement neg_intrep
// (to negate a number)
//
*)
(* ****** ****** *)
//
implement
main0
(
(*void*)
) = let
(*
//
val
i_1000 = int2intrep(1000)
val ((*void*)) =
(print_intrep(i_1000); println!())
//
val
i_neg_1000 = neg_intrep(i_1000)
val ((*void*)) =
(print_intrep(i_neg_1000); println!())
//
val
i_abs_neg_1000 = abs_intrep(i_neg_1000)
val ((*void*)) =
(print_intrep(i_abs_neg_1000); println!())
//
*)
in
  // nothing
end // end of [main0]

(* ****** ****** *)

(* end of [abs_intrep.dats] *)
