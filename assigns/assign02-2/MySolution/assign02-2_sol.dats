(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign02-2_sol_dats
// How to compile:
// myatscc assign02-2_sol.dats
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

#include "./../assign02-2.dats"

(* ****** ****** *)

#ifdef
MAIN_NONE
#then
#else

implement
main0() = () where
{
//
val
myfile = myfile_open("./Makefile")
val _0_ =
myfile_foldleft
(myfile, 0, lam(_, line) => let val () = println!(line) in 0 end)
//
val
myfile = myfile_open("./DATA/numbers.txt")
val _0_ =
myfile_foldleft
(myfile, 0, lam(_, line) => let val () = println!(line) in 0 end)
//
val
myfile = myfile_open("./DATA/numbers.txt")
val tally =
myfile_foldleft<int>(myfile, 0, lam(res, line) => res + g0string2int(line))
//
val ((*void*)) = println! ("tally = ", tally)
//
} (* end of [main0] *)

#endif // end of #ifdef(MAIN_NONE)

(* ****** ****** *)

(* end of [assign02-2_sol.dats] *)
