(* ****** ****** *)
(*
** DivideConquer
** with memoization:
** Fibonacci numbers
**
*)
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
#staload UN = $UNSAFE
//
(* ****** ****** *)

#staload
"libats/ML/SATS/hashtblref.sats"

(* ****** ****** *)

#include "./../../libraries/class.dats"

(* ****** ****** *)
//
#define
DIVIDECONQUER_MEMO 1
//
#include
"$PATSHOMELOCS\
/atscntrb-bucs320-divideconquer/mylibies.hats"
//
#staload $DivideConquer
#staload $DivideConquer_memo
//
(* ****** ****** *)
//
extern
fun
list0_submaxord
(xs: list0(int)): list0(int)
//
(* ****** ****** *)

assume
input_t0ype = int
assume
output_t0ype = $tup(int, list0(int))

(* ****** ****** *)

implement
list0_submaxord
  (xs) = let
//
val
xs =
array0_make_rlist(xs)
//
val
n0 = array0_length(xs)
//
val () = $tempenver(xs)
//
implement
DivideConquer$base_test<>
  (i) =
(
if i > 0 then false else true
)
//
implement
DivideConquer$base_solve<>
  (i) =
  $tup(1, list0_sing(xs[i]))
//
//
implement
DivideConquer$divide<>
  (i) = let
//
val x0 = xs[i]
//
fun
loop
(
 j: int, res: list0(int)
) : list0(int) =
(
if
(j >= 0)
then
(
if
(x0 <= xs[j])
  then loop(j-1, cons0(j, res))
  else loop(j-1, res)
// end of [if]
)
else res // end of [if]
)
//
in
  loop(i-1, list0_nil(*void*))
end // end of [DivideConquer$divide]
//
implement
DivideConquer$conquer$combine<>
  (i, rs) = let
  val r0 =
  list0_foldleft<output>
  ( rs
  , $tup(0, nil0)
  , lam(r0, r1) =>
    if r1.0 >= r0.0 then r1 else r0
  )
in
  $tup(r0.0+1, cons0(xs[i], r0.1))
end // end of [DivideConquer$conquer$combine]
//
(*
val
theTable =
$UN.cast(0)
val () =
$tempenver(theTable)
implement
DivideConquer_memo$table_get<>
  ((*void*)) = theTable
implement
DivideConquer_memo$table_set<>
  (theTable) = ((*void*))
*)
//
val
theTable2 =
array0_make_elt<option0(output)>
  (n0, None0())
val () =
$tempenver(theTable2)
//
implement
DivideConquer$solve$memo_get<>
  (i) =
(
case+
theTable2[i]
of (*case+*)
| None0() => None_vt()
| Some0(r) => Some_vt(r)
)
implement
DivideConquer$solve$eval$memo_set<>
  (i, r) =
(
theTable2[i] := Some0(r)
)
//
fun
solve
(i: int): output =
DivideConquer$solve<>(i)
//
in
//
(
array0_foldleft<output>
(
xs
,
$tup(0, nil0())
,
lam(r0, i) => let
  val r1 = solve(i)
in
  if r1.0 >= r0.0 then r1 else r0
end
)
).1 // end of [array0_foldleft]
//
end // end of [list0_submaxord]

(* ****** ****** *)
//
#staload
TIME = "libats/libc/SATS/time.sats"
#staload
STDLIB = "libats/libc/SATS/stdlib.sats"
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

(* end of [list0_submaxord_memo.dats] *)
