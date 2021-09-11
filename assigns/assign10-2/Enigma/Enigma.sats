(* ****** ****** *)
(*
** Enigma Machine
*)
(* ****** ****** *)
//
// Total: 40 points
//
// There are up to 20 points
// for an implementation that compiles
// to JS to be run insider a web browser
//
(* ****** ****** *)
//
staload
"libats/ML/SATS/basis.sats"
//
(* ****** ****** *)

abstype rotorseq = ptr
abstype plugboard = ptr
abstype reflector = ptr

(* ****** ****** *)

typedef
connector =
cfun(stream(char), stream(char))

(* ****** ****** *)
//
fun
connector_join
  (AB: connector, BC: connector): connector
//
(* ****** ****** *)

fun
rotorseq_ftrans(init: rotorseq): connector
fun
rotorseq_btrans(init: rotorseq): connector

fun
plugboard_ftrans(init: plugboard): connector
fun
plugboard_btrans(init: plugboard): connector

fun
reflector_ftrans(init: reflector): connector
fun
reflector_btrans(init: reflector): connector

(* ****** ****** *)
//
fun
Enigma_make(rotorseq, plugboard, reflector): connector
//
(* ****** ****** *)

(* end of [Enigma.sats] *)
