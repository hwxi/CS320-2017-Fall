(* ****** ****** *)

#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"

(* ****** ****** *)

#include "./../assign02-2.dats"

(* ****** ****** *)

(*
extern
fun
{res:t0ype}
myfile_foldleft
(myfile, res, cfun(res, string, res)): res
*)
extern
fun
myfile_foreach
(lines: myfile, fwork: (string(*line*)) -<cloref1> void): void
//
implement
myfile_foreach(lines, fwork) =
let
val _ =
myfile_foldleft<int>(lines, 0, lam(res, line) => (fwork(line); 0))
in
  // nothing
end

(* ****** ****** *)

val
lines = myfile_open("./test01.dats")

(* ****** ****** *)

(*
val () = myfile_foreach(lines, lam(line) => println!(line))
*)

(* ****** ****** *)

implement main0() = ()

(* ****** ****** *)

(* end of [test01.dats] *)
