(* ****** ****** *)

datatype weekday =
  | Monday of ()
  | Tuesday of ()
  | Wednesday of ()
  | Thurday of ()
  | Friday of ()

(* ****** ****** *)

fun
TGIF(x: weekday): bool =
(
case x of
(*
  | Monday() => false
  | Tuesday() => false
  | Wednesday() => false
  | Thurday() => false
*)
  | Friday() => true | _(*otherwise*) => false
)

(* ****** ****** *)

(* end of [weekday.dats] *)
