(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)

implement
{a}(*tmp*)
list2mytrees
(
  xs
) = let
//
typedef
mytrees =
list0(mytree(a))
//
val n0 = length(xs)
//
in
//
if
(n0 > 0)
then
(
if
(n0 = 1)
then
list0_sing
(
mytree_sing(xs[0])
)
else
list0_concat
(
int_list0_map<mytrees>
( n0-1
, lam(i) =>
  let
    val xs1 =
      list0_take_exn(xs, i+1)
    val xs2 =
      list0_drop_exn(xs, i+1)
    val ys1 = list2mytrees(xs1)
    val ys2 = list2mytrees(xs2)
  in
    list0_map(list0_cross(ys1, ys2), lam($tup(y1,y2)) => mytree_pair(y1, y2))
  end // end of [lam]
)
)
)
else list0_nil((*void*))
//
end // end of [list2mytrees]

(* ****** ****** *)

implement
main0() = () where
{
//
val xs =
g0ofg1($list{int}(1, 2, 3))
val ys = list2mytrees<int>(xs)
val () = println! ("|ys(3)| = ", length(ys))
//
val xs =
g0ofg1($list{int}(1, 2, 3, 4))
val ys = list2mytrees<int>(xs)
val () = println! ("|ys(4)| = ", length(ys))
//
val xs =
g0ofg1($list{int}(1, 2, 3, 4, 5))
val ys = list2mytrees<int>(xs)
val () = println! ("|ys(5)| = ", length(ys))
//
val xs =
g0ofg1($list{int}(1, 2, 3, 4, 5, 6))
val ys = list2mytrees<int>(xs)
val () = println! ("|ys(6)| = ", length(ys))
//
} (* end of [val] *)

(* ****** ****** *)

(* end of [list2mytrees.dats] *)
