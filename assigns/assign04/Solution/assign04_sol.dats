(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign04_sol_dats
// How to compile:
// myatscc assign04_sol.dats
//
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
#include "./../assign04.dats"
//
#include
"./../../../libraries/class.dats"
#include
"./../../../libraries/myclass.dats"
//
(* ****** ****** *)

implement
csv_line_get_at
  (line, i0) = let
//
fn
isCOMMA
(
 c: char
) : bool = (c = ',')
//
fun
aux1
(
cs: list0(char), i: int
) : option0(list0(char)) =
if i < i0 then let
  val cs =
  list0_skip_until
    (cs, lam(c) => isCOMMA(c))
  // end of [val]
in
  case+ cs of
  | list0_nil() => None0()
  | list0_cons(_, cs) => aux1(cs, i+1)
end else Some0(cs) // end of [else]
//
val opt = aux1(string_explode(line), 0)
//
in
//
case+ opt of
| None0() => None0()
| Some0(cs) =>
  Some0(string_implode(list0_take_until(cs, lam(c) => isCOMMA(c))))
//
end // end of [csv_line_get_at]

(* ****** ****** *)
//
#define
NDX100
"./../../../mydata/NDX100-index.csv"
//
implement
NDX100_adj_close_list
  ((*void*)) = let
//
val
lines =
fpath_get_lines_stringlst
  (NDX100)
//
val-
list0_cons(_, lines) = lines
//
in
//
list0_mapopt
( lines
, lam(x) =>
  option0_map
  (
    csv_line_get_at(x, 5), lam(x) => g0string2float_double(x)
  )
) (* list0_mapopt *)
//
end // end of [NDX100_adj_close_list]
//
(* ****** ****** *)

#define sqrt252 15.8745

(* ****** ****** *)

implement
NDX100_volatility_lifetime
  ((*void*)) = let
//
val
prices =
NDX100_adj_close_list()
//
val
changes =
aux0(prices) where
{
fun
aux0
(
xs: list0(double)
) : list0(double) = let
//
val-
list0_cons
  (x, xs) = xs in aux1(x, xs)
//
end // end of [aux0]
//
and
aux1
(
x0: double,
xs: list0(double)
) : list0(double) =
(
case+ xs of
| list0_nil() =>
  list0_nil()
| list0_cons(x1, xs) =>
  list0_cons((x1-x0)/x0, aux1(x1, xs))
)
} (* end of [changes] *)
//
val
changes = list0_cons(0.0, changes)
//
in
  sqrt252 * list0_stdev(changes)  
end // end of [NDX100_volatility_lifetime]

(* ****** ****** *)

implement
main0() =
{
//
(*
val
line = "\
19851001,\
110.620003,\
112.160004,\
110.565002,\
112.139999,\
112.139999,\
153160000\
" // end of [line]
//
(*
val opt = csv_line_get_at(line, 0)
val ((*void*)) = println! ("opt = ", opt)
*)
//
val-Some0(x) = csv_line_get_at(line, 0)
val ((*void*)) = println! ("Date =\t", x)
//
val-Some0(x) = csv_line_get_at(line, 1)
val ((*void*)) = println! ("Open =\t", x)
//
val-Some0(x) = csv_line_get_at(line, 2)
val ((*void*)) = println! ("High =\t", x)
//
val-Some0(x) = csv_line_get_at(line, 3)
val ((*void*)) = println! ("Low =\t", x)
//
val-Some0(x) = csv_line_get_at(line, 4)
val ((*void*)) = println! ("Close =\t", x)
val-Some0(x) = csv_line_get_at(line, 5)
val ((*void*)) = println! ("Adj. Close =\t", x)
val-Some0(x) = csv_line_get_at(line, 6)
val ((*void*)) = println! ("Volume =\t", x)
//
*)
//
(*
val
prices = NDX100_adj_close_list()
val ((*void*)) =
println! (list0_take_exn<double>(prices, 100))
*)
//
val
volat =
NDX100_volatility_lifetime()
//
val ((*void*)) = println! ("volat = ", volat)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [assign04_sol.dats] *)
