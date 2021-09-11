(* ****** ****** *)

#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"

(* ****** ****** *)

(*
#include
"./../lecture-11-07/depth-first-enum.dats"
*)
#staload DFS =
"./../lecture-11-07/depth-first-enum.dats"

(* ****** ****** *)

typedef node = $DFS.node

(* ****** ****** *)

assume $DFS.node = list0(int)

(* ****** ****** *)

#define N 8

(* ****** ****** *)

implement
{}
$DFS.node_get_children
  (nx0) = let
//
fun
test
(xs: list0(int)): bool = let
  val-list0_cons(x0, xs) = xs
in
  (xs).iforall()(lam(i, x) => (x != x0) && abs(x-x0) != (i+1))
end

//
val nxs =
(N).list0_map(TYPE{list0(int)})(lam(i) => list0_cons(i, nx0))
//
in
  (nxs).filter()(lam nx => test(nx))
end // end of [$DFS.node_get_children]

(* ****** ****** *)

val
theNodes = $DFS.node_dfsenum(list0_nil())

(* ****** ****** *)
//
val
theNodes_sol =
(theNodes).filter()(lam(nx) => length(nx) = N)
//
(* ****** ****** *)

implement
main0() =
{
//
val () =
println!
("The total number of solutions is ", length(theNodes_sol))
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [QueenPuzzle.dats] *)
