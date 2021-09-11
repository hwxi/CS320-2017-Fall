(* ****** ****** *)
(*
** Enigma Machine
*)
(* ****** ****** *)

#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"

(* ****** ****** *)

#staload "./../Enigma.sats"

(* ****** ****** *)
//
infixl (+) join
//
overload join with connector_join
//
(* ****** ****** *)

implement
Enigma_make
(
  rots, plug, refl
) = let
//
val rots_f = rotorseq_ftrans(rots)
val rots_b = rotorseq_btrans(rots)
//
val plug_f = plugboard_ftrans(plug)
val plug_b = plugboard_btrans(plug)
//
val refl_f = reflector_ftrans(refl)
(*
val refl_b = reflector_btrans(refl)
*)
//
in
  (plug_f join rots_f) join refl_f join (rots_b join plug_b)
end // end of [Enigma_make]

(* ****** ****** *)

(* end of [Enigma.dats] *)
