(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share\
/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)
//
#include
"./../../../libraries/class.dats"
#include
"./../../../libraries/myclass.dats"
//
(* ****** ****** *)
//
#staload UN = $UNSAFE
#include "./../list0_submaxord.dats"
//
(* ****** ****** *)

implement
list0_submaxord
  (xs) = let
//
val
xs = array0_make_list(xs)
val n0 = length(xs)
//
val memo =
array0_make_elt<Option(list0(int))>
  (n0, None)
//
fun
max
(
xs: list0(int)
,
ys: list0(int)
) : list0(int) =
if
length(xs)
>=
length(ys) then xs else ys
//
fun
aux
(i: int): list0(int) =
(
auxmax(xs[i], i+1, list0_nil())
)

and
auxmax
(
x0: int, j: int, res: list0(int)
) : list0(int) =
(
  if
  (j < n0)
  then
  (
    if xs[j] < x0
      then auxmax(x0, j+1, res)
      else auxmax(x0, j+1, max(res, aux'(j)))
    // end of [if]
  ) else list0_cons(x0, res) // end of [if]
)
//
and
aux'
(i: int) : list0(int) = aux(i)
//
in
  int_foreach(n0, lam(i) => ignoret(aux(n0-1-i)));
  int_foldleft(n0, nil0(), lam(res, i) => max(res, aux(i)))
end // end of [list0_submaxord]

(* ****** ****** *)
//
#staload
TIME =
"libats/libc/SATS/time.sats"
#staload
STDLIB =
"libats/libc/SATS/stdlib.sats"
//
(* ****** ****** *)

implement
main0() = () where
{
//
val N1 = 10000
val N2 = 10000
//
val xs =
g0ofg1
(
$list{int}
( 4, 1, 2, 1, 3, 8, 9, 5
, 6, 7, 8, 1, 1, 1, 1, 1
)
)
val ys = list0_submaxord(xs)
val () = println! ("xs = ", xs)
val () = println! ("ys = ", ys)
//
val () =
$STDLIB.srandom
($UN.cast($TIME.time()))
//
implement
grandom_val<int>
  ((*void*)) = randint(N2)
//
val xs =
g0ofg1(grandom_list<int>N1)
val ys = list0_submaxord(xs)
(*
val () = println! ("xs = ", xs)
*)
val () = println! ("ys = ", ys)
val () = println! ("|ys| = ", length(ys))
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [list0_submaxord.dats] *)
