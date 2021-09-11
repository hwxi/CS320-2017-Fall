(* ****** ****** *)
(*
** Game Abstraction
*)
(* ****** ****** *)
//
// HX: for accessing LIBATSCC2JS 
//
#define
LIBATSCC2JS_targetloc
"$PATSHOME/contrib\
/libatscc2js/ATS2-0.3.2" // latest stable release
//
#include
"{$LIBATSCC2JS}/staloadall.hats" // for prelude stuff
#staload
"{$LIBATSCC2JS}/SATS/print.sats" // for print into a store
//
(* ****** ****** *)

abstype move
abstype state

(* ****** ****** *)
//
extern
fun
game_state_move
(st: state, mv: move): state
//
(* ****** ****** *)
//
extern
fun
game_state_moves
(state, stream(move)): stream(state)
//
(* ****** ****** *)
//
implement
game_state_moves
(
  st0, mvs
) =
stream_scan_cloref
( mvs, st0
, lam(st, mv) => game_state_move(st, mv))
//
(* ****** ****** *)
//
extern
fun
the_game_moves(): stream(move)
//
(* ****** ****** *)
//
extern
fun
the_game_state0(): state
extern
fun
the_game_states(): stream(state)
//
implement
the_game_states() =
game_state_moves(the_game_state0(), the_game_moves())
//
(* ****** ****** *)

(* end of [abstract0.dats] *)
