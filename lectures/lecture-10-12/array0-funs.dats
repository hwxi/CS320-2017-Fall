(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

#include
"./../../libraries/class.dats"
#include
"./../../libraries/myclass.dats"

(* ****** ****** *)
//
fun{a:t@ype}
array_length
(A: array0(a)): int = size(A)
//
(* ****** ****** *)
//
fun
array_tally(A: array0(int)): int =
int_foldleft<int>
(length(A), 0, lam(res, i) => res + A[i])
//
(* ****** ****** *)
//
fun
myprint_array0(A: array0(int)): void =
int_foreach(length(A), lam(i) => println!(A[i]))
//
(* ****** ****** *)
//
extern
fun
{r:t@ype}
{a:t@ype}
array0_foldleft
(
xs: array0(INV(a)), r0: r, fopr: cfun(r, a, r)
) : (r) // end of [array0_foldleft]
//
implement
{res}{a}
array0_foldleft(xs, r0, fopr) =
int_foldleft<res>
(length(xs), r0, lam(res, i) => fopr(res, xs[i]))
//
(* ****** ****** *)
//
extern
fun
{a:t@ype}
{r:t@ype}
array0_foldright
(
xs: array0(INV(a)), fopr: cfun(a, r, r), r0: r
) : (r) // end of [array0_foldright]
//
implement
{a}{res}
array0_foldright
  (xs, fopr, r0) = let
//
val n0 = length(xs)
//
in
//
int_foldleft<res>
(n0, r0, lam(res, i) => fopr(xs[n0 - 1 - i], res))
//
end // end of [array0_foldright]
//
(* ****** ****** *)
//
extern
fun
{a:t@ype}
array0_foreach
(xs: array0(INV(a)), fwork: cfun(a, void)): void
//
implement
{a}
array0_foreach(xs, fwork) =
int_foreach<>(length(xs), lam(i) => fwork(xs[i]))
//
(* ****** ****** *)
//
extern
fun
{a:t@ype}
array0_mapto
(xs: array0(INV(a)), fopr: cfun(a, a)): void
//
implement
{a}
array0_mapto(xs, fopr) =
int_foreach<>(length(xs), lam(i) => xs[i] := fopr(xs[i]))
//
(* ****** ****** *)
//
extern
fun
{a:t@ype}
array0_imapto
(xs: array0(INV(a)), fopr: cfun(int, a, a)): void
//
implement
{a}
array0_imapto(xs, fopr) =
int_foreach<>(length(xs), lam(i) => xs[i] := fopr(i, xs[i]))
//
(* ****** ****** *)
//
val A0 =
array0_make_elt<int>(6, 0(*init*))
val () = myprint_array0(A0)
//
val () =
array0_imapto<int>(A0, lam(i, x) => i * i)
val () = myprint_array0(A0)
//
(* ****** ****** *)

implement main0 () = ()

(* ****** ****** *)

(* end of [array0-funs.dats] *)
