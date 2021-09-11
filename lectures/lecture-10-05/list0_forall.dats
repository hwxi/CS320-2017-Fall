(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

#include
"./../../libraries/class.dats"

(* ****** ****** *)

extern
fun{}
int_forall
(n: int, test: cfun(int, bool)): bool

(* ****** ****** *)

implement
{}
int_forall(n, test) = let
//
exception FALSE of ()
//
in
//
try
int_foldleft<bool>
(n, true, lam(res, i) => if test(i) then true else $raise(FALSE))
with ~FALSE() => false
//
end // end of [int_forall]

(* ****** ****** *)

