(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)
//
implement
list0_average
  (xs) = let
in

list0_reverse
(
(
list0_foldleft<$tup(int, double, list0(double))><double>
(
xs,
$tup
(
0, 0.0, list0_nil()
),
lam(res, x) => let
  val n1 = res.0 + 1
  val s1 = res.1 + x in $tup(n1, s1, list0_cons(s1/n1, res.2))
end // end of [lam]
)
).2
)

end // end of [list0_average]

(* ****** ****** *)

implement
main0() = () where
{
//
val xs =
g0ofg1
(
$list{double}
(1.0, 2.0, 3.0, 4.0, 5.0)
)
//
val ys = list0_average(xs)
val () = println! ("ys = ", ys)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [list0_average.dats] *)
