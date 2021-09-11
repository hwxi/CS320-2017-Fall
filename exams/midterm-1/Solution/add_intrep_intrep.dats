(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)
//
extern
fun
succ_intrep
(xs: intrep): bool
//
implement
succ_intrep
  (xs) = let
//
val n0 =
  length(xs)
//
val n1 = (n0 - 1)
//
in
//
int_forall
( length
  ( xs )
, lam(i) => let
    val i' = n1 - i
  in
    if
    xs[i']
    then (xs[i'] := false; true) else (xs[i'] := true; false)
  end (* end of [lam] *)
) (* end of [int_forall] *)
//
end // end of [succ_intrep]
//
(* ****** ****** *)
//
extern
fun
neg_intrep
(x0: intrep): intrep
//
implement
neg_intrep
  (xs) = let
//
val n0 = length(xs)
val ys = array0_tabulate(n0, lam(i) => ~(xs[i]))
//
in
  ignoret(succ_intrep(ys)); ys
end // end of [neg_intrep]
//
(* ****** ****** *)
//
implement
add_intrep_intrep
  (xs, ys) = let
//
val n0 =
  length(xs)
//
val res =
array0_make_elt<bool>(n0, false)
//
in
//
res where
{
val () =
ignoret
(
int_foldright<bool>
( length
  ( xs )
, lam(i, c) =>
  (
    case+
    (xs[i], ys[i]) of
    | (true, true) => (res[i] := c; true)
    | (true, false) => (res[i] := ~c; c)
    | (false, true) => (res[i] := ~c; c)
    | (false, false) => (res[i] := c; false)
  ) (* end of [lam] *)
, false(* carry = 0 *)
) (* end of [int_foldleft] *)
)
//
val () =
if (xs[0] && ys[0]) && (~res[0]) then $raise OverflowExn()
val () =
if (~xs[0] && ~ys[0]) && (res[0]) then $raise OverflowExn()
//
} (* end of [where] *)
//
end // end of [add_intrep_intrep]
//
(* ****** ****** *)

implement
main0
(
(*void*)
) = let
//
val
i_1000 = int2intrep(1000)
val
i_neg_1000 = neg_intrep(i_1000)
//
val ((*void*)) =
(print_intrep(i_1000); println!())
val ((*void*)) =
(print_intrep(i_neg_1000); println!())
//
val
i_zero =
add_intrep_intrep(i_1000, i_neg_1000)
val ((*void*)) =
(print_intrep(i_zero); println!())
//
val INTMAX =
array0_tabulate(NBIT, lam(i) => true)
val ((*void*)) = INTMAX[0] := false
val ((*void*)) =
try
(
ignoret(add_intrep_intrep(INTMAX, i_1000))
)
with ~OverflowExn() => println! ("Overflowed!!!")
//
//
in
  // nothing
end // end of [main0]

(* ****** ****** *)

(* end of [add_intrep_intrep.dats] *)
