
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

datatype
tree(a:t@ype) =
| tree_nil of ()
| tree_cons of (tree(a), a, tree(a))


extern
fun
{a:t@ype}
{res:t@ype}
tree_fold
(
t0: tree(a),
fopr: (res, a, res) -<cloref1> res, sink: res
) : res // end of [tree_fold]


fun
{a:t@ype}
tree_size(t0: tree(a)): int =
tree_fold<a><int>(t0, lam(tl, x, tr) => tl + 1 + tr, 0)

fun
{a:t@ype}
tree_height(t0: tree(a)): int =
tree_fold<a><int>(t0, lam(tl, x, tr) => 1 + max(tl, tr), 0)

fun
{a:t@ype}
tree_flatten(t0: tree(a)): list0(a) =
tree_fold<a><list0(a)>(t0, lam(tl, x, tr) => tl + list0_cons(x, tr), list0_nil())

(*
fun
{a:t@ype}
tree_is_perfect(t0: tree(a)): bool =
(
tree_fold<a><(bool, int)>
(t0, lam(tl, x, tr) => (tl.0 && tr.0 && (tl.1 = tr.1), tl.1+1+tr.1), (true, 0))).0
*)

fun
{a:t@ype}
tree_is_perfect(t0: tree(a)): bool = let
//
exception FALSE of ()
//
in

try

let
val size = 
tree_fold<a><int>
(t0, lam(tl, x, tr) => if (tl = tr) then tl+1+tr else $raise(FALSE), 0)
in
  true
end

with ~FALSE() => false

end
