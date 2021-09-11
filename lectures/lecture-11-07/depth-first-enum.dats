(* ****** ****** *)
//
// Depth-first enumeration
//
(* ****** ****** *)

#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"

(* ****** ****** *)
(*
** What is a graph?
*)
abstype node
typedef nodelst = list0(node)
//
(* ****** ****** *)

extern
fun{}
node_get_children(node): nodelst
overload .children with node_get_children

(* ****** ****** *)

extern
fun{}
node_dfsenum(nx0: node): stream(node)

extern
fun{}
list0_stream_flatten
  : list0(stream(node)) -> stream(node)

(* ****** ****** *)

implement
{}
list0_stream_flatten
  (xss) = $delay
(
case+ xss of
| list0_nil() => stream_nil()
| list0_cons(xs, xss) =>
  !(stream_append<node>(xs, list0_stream_flatten(xss)))
)

(* ****** ****** *)

implement
{}
node_dfsenum(nx0) = $delay
(
let
  val nxs = nx0.children()
in
  stream_cons
  ( nx0
  , list0_stream_flatten
    (list0_map<node><stream(node)>
     (nxs, lam(nx) => node_dfsenum(nx))
    )
  )
end
)

(* ****** ****** *)

(* [depth-first-enum.dats] *)
