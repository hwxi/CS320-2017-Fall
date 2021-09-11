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
//
let
//
val
done = succ_intrep(ys)
//
in
  if ys[0] then $raise OverflowExn() else ys
end
//
end // end of [neg_intrep]
//
(* ****** ****** *)

implement
abs_intrep
  (xs) =
(
if xs[0]
  then neg_intrep(xs)
  else array0_tabulate(length(xs), lam(i) => xs[i])
// end of [if]
)

(* ****** ****** *)

implement
main0
(
(*void*)
) = let
//
val
i_7 = int2intrep(7)
val ((*void*)) =
(print_intrep(i_7); println!())
//
val
i_1000 = int2intrep(1000)
val ((*void*)) =
(print_intrep(i_1000); println!())
//
val
i_neg_1000 = neg_intrep(i_1000)
val ((*void*)) =
(print_intrep(i_neg_1000); println!())
//
val
i_abs_neg_1000 = abs_intrep(i_neg_1000)
val ((*void*)) =
(print_intrep(i_abs_neg_1000); println!())
//
val INTMIN =
array0_tabulate(NBIT, lam(i) => false)
val ((*void*)) = INTMIN[0] := true // sign
val ((*void*)) =
try
  ignoret(abs_intrep(INTMIN))
with ~OverflowExn() => println! ("Overflowed!!!")
//
in
  // nothing
end // end of [main0]

(* ****** ****** *)

(* end of [abs_intrep.dats] *)
