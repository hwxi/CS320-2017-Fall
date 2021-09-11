(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)
//
implement
list0_submaxord
  (xs) = let
//
fun
gte_x_ys
(
  x: int, ys: list0(int)
) : bool =
  list0_forall(ys, lam(y) => x >= y)
//
overload >= with gte_x_ys
//
fun
aux
(
xs: list0(int)
,
ys: list0(int)
) : list0(int) =
(
case+ xs of
| list0_nil() =>
  reverse(ys)
| list0_cons(x0, xs) =>
  if x0 >= ys
    then let
      val res1 = aux(xs, ys)
      val res2 = aux(xs, list0_cons(x0, ys))
    in
      if length(res1) > length(res2) then res1 else res2
    end
    else aux(xs, ys) 
)
//
in
  aux(xs, list0_nil())
end // end of [list0_submaxord]

(* ****** ****** *)

implement
main0 () =
{
//
val () =
println!
("Testing for list0_submaxord")
//
val xs =
g0ofg1
(
$list{int}
(4, 1, 2, 1, 3, 8, 9, 5, 6, 7, 1, 1, 1, 1, 1)
)
//
val ys = list0_submaxord(xs)
//
val () = println! ("xs = ", xs)
val () = println! ("ys = ", ys)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [list0_submaxord.dats] *)
