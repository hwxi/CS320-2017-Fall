(* ****** ****** *)
(*
//
##myatsccdef=\
patsopt -d $1 | atscc2r34 -i - > $fname($1)_dats.R
//
*)
(* ****** ****** *)
//
// HX:
//
// How to compile:
// myatscc assign04_sol_R.dats
// How testing is done:
// Rscript ./assign04_sol_R_dats.R
//
(* ****** ****** *)
//
#define
ATS_MAINATSFLAG 1
#define
ATS_DYNLOADNAME "my_dynload"
//
(* ****** ****** *)
//
#define
LIBATSCC2R34_targetloc
"$PATSHOME/contrib/libatscc2r34"
//
(* ****** ****** *)
//
#include
"{$LIBATSCC2R34}/mylibies.hats"
//
(* ****** ****** *)
//
#define
NDX100_fname
"./../../../mydata/NDX100-index.csv"
//
(* ****** ****** *)
//
extern
fun
mystock_lifetime_volatility(fname: string): double
//
(* ****** ****** *)

implement
mystock_lifetime_volatility
  (fname) = let
//
typedef
dframe = R34dframe(double)
//
val
dframe =
$extfcall
( dframe
, "read.csv"
, fname, $extval(optarg,"header=TRUE")
) (* end of [val] *)
//
val
Adj_Close_data =
getcol_by(dframe, "Adj.Close")
//
val n0 = length(Adj_Close_data)
//
val ((*void*)) = assertloc(n0 >= 2)
//
val
Daily_price_changes =
(
R34vector_tabulate_cloref{double}
( n0-1
, lam(i) =>
  fopr(Adj_Close_data[i+1], Adj_Close_data[i+2]))
) where
{
  fn fopr(x: double, y: double): double = pred(y/x)
}
//
in
  sqrt(252*variance(Daily_price_changes))
end // end of [mystock_lifetime_volatility]

(* ****** ****** *)

val () =
println!
( "NDX100: annualized volatility = "
, mystock_lifetime_volatility(NDX100_fname))

(* ****** ****** *)

%{^
######
if
(
!(exists("libatscc2r34.is.loaded"))
)
{
  assign("libatscc2r34.is.loaded", FALSE)
}
######
if
(
!(libatscc2r34.is.loaded)
)
{
  sys.source("./../../../libraries/LIBATSCC/libatscc2r34_all.R")
}
######
%} // end of [%{^]

(* ****** ****** *)

%{$
my_dynload()
%} // end of [%{$]

(* ****** ****** *)

(* end of [assign04_sol_R.dats] *)
