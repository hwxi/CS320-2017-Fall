(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign03_sol_dats
// How to compile:
// myatscc assign03_sol.dats
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

#include "./../assign03.dats"

(* ****** ****** *)

(*
** Please implement
//
** succ_intrep
** add_intrep_intrep
** mul_int_intrep
** mul_intrep_intrep
** intrep_make_int
** print_intrep // print a intrep-value
//
*)

(* ****** ****** *)
//
implement
succ_intrep(xs) =
(
case+ xs of
| nil0() =>
  list0_sing(1)
| cons0(x, xs) => let
    val x1 = x + 1
  in
    if x1 < BASE
      then cons0(x1, xs)
      else cons0(x1-BASE, succ_intrep(xs))
    // end of [if]
  end // end of [cons0]
)
//
(* ****** ****** *)
//
fun
add_int_intrep
(
x0: int
,
ys: intrep
) : intrep =
if
(x0 > 0)
then
(
case+ ys of
| nil0() =>
  intrep_make_int(x0)
| cons0(y, ys) => let
    val xy = x0 + y
    val d0 = xy % BASE
    val d1 = xy / BASE
  in
    cons0(d0, add_int_intrep(d1, ys))
  end // end of [cons0]
)
else (ys) // end of [else]
//
(* ****** ****** *)

implement
add_intrep_intrep
(
  xs, ys
) =
(
case+
(xs, ys) of
| (nil0(), _(*ys*)) => ys
| (_(*xs*), nil0()) => xs
| (cons0(x, xs), cons0(y, ys)) => let
     val xy = x + y
     val xys = add_intrep_intrep(xs, ys)
  in
    if xy < BASE
      then cons0(xy, xys)
      else cons0(xy-BASE, succ_intrep(xys))
  end // end of [cons0, cons0]
)

(* ****** ****** *)

implement
mul_int_intrep
  (x, ys) = (
//
if
(x > 0)
then
(
  case+ ys of
  | nil0() => nil0()
  | cons0(y, ys) => let
      val xy = x * y
      val d0 = xy % BASE
      val d1 = xy / BASE
    in
      cons0(d0, add_int_intrep(d1, mul_int_intrep(x, ys)))
    end // end of [cons0]
)
else list0_nil(*void*)
//
) (* end of [mul_int_intrep] *)

(* ****** ****** *)

implement
mul_intrep_intrep
  (xs, ys) = let
//
fun
auxmain
(xs: intrep): intrep =
(
  case+ xs of
  | nil0() =>
    list0_nil()
  | cons0(x, xs) =>
    add_intrep_intrep
    ( mul_int_intrep(x, ys)
    , cons0(0, mul_intrep_intrep(xs, ys))
    ) (* end of [cons0] *)
)
//
in
//
case+ ys of
| nil0() => nil0() | cons0 _ => auxmain(xs)
//
end // end of [mul_intrep_intrep]

(* ****** ****** *)

implement
intrep_make_int
  (x0) =
(
if
(x0 > 0)
then let
  val d0 = x0 % BASE
  val d1 = x0 / BASE
in
  cons0(d0, intrep_make_int(d1))
end // end of [then]
else list0_nil() // end of [else]
)

(* ****** ****** *)
//
implement
print_intrep(xs) =
(
case+ xs of
| nil0() =>
  (print!(0); 0)
| cons0 _ =>
  list0_foldright<int><int>
    (xs, lam(x, res) => (print!(x); res+1), 0)
  // end of [list_cons0]
)
//
(* ****** ****** *)

fun
Factorial
  (n: int): intrep =
(fix
 loop
 (
  i: int, res: intrep
 ) : intrep =<cloref1>
   if i < n
     then
     (
     loop(i+1, mul_int_intrep(i+1, res))
     )
     else (res)
   // end of [if]
)(0, list0_sing(1))

(* ****** ****** *)

overload print with print_intrep of 1000

(* ****** ****** *)

implement
main0(argc, argv) = let
//
val arg1 =
(
if argc >= 2
  then g0string2int(argv[1]) else 0
) : int // end of [val]
//
val factorial = Factorial(arg1)
//
in
  print! ("Factorial(", arg1, ") = ");
  ignoret(print_intrep(Factorial(arg1))); print_newline()
end // end of [main0]

(* ****** ****** *)

(* end of [assign03_sol.dats] *)
