(* ****** ****** *)

#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"

(* ****** ****** *)

implement main0() = {}

(* ****** ****** *)
//
fun
f(x: int): int =
if x > 0 then 2 * f(x-1) - 1 else 0
//
val () = println!("f(1000) = ", f(1000))
//
(* ****** ****** *)
//
fun
f(n: int): int =
if n = 0
  then 0 else 10*f(n/2) + 1 - n%2
// end of [if]
//
val () = println!("f(1023) = ", f(1023))
//
(* ****** ****** *)
//
fun kf(n: int, k0: int -<cloref> int): int =
  if n = 0 then k0(k0(0)) else kf(n-1, lam(res) => k0(n*n-res))
and kf0(n: int): int = kf(n, lam res => res)
//
val () = println!("kf0(10) = ", kf0(10))
//
(* ****** ****** *)
//
typedef intcont = int -<cloref> int
//
fun kf(n: int, k1: intcont, k2: intcont): int =
  if n = 0
    then k1(0)
    else kf(n-1, lam(res) => k2(res+n), lam(res) => k1(res-n))
  // end of [if]
and kf0(n: int): int = kf(n, lam res => res, lam res => res)
//
val () = println!("kf0(10) = ", kf0(10))
//
(* ****** ****** *)
//
val global: int = 0
//
val
tricky = let
//
fun f
(
  i: int
) : int = let
  val global = global + i
in
  if i > 0 then f(i-1) else global
end (* end of [f] *)
//
in
  lam (i:int): int =<cloref1> f(i)
end // end of [tricky]

val () = println!("tricky(10) = ", tricky(10))

(* ****** ****** *)

val
global = ref<int>(0)
//
val
tricky = let
//
fun f
(
  i: int
) : int = let
  val () = !global := !global + i
in
  if i > 0 then f(i-1) else !global
end (* end of [f] *)
//
in
  lam (i:int): int =<cloref1> f(i)
end // end of [tricky]

val () = println!("tricky(10) = ", tricky(10))

(* ****** ****** *)

val
global = ref<int>(0)
//
val
tricky = let
//
fun f
(
  i: int
) : int = let
  val () = !global := i - !global
in
  if i > 0 then f(i-1) else !global
end (* end of [f] *)
//
in
  lam (i:int): int =<cloref1> f(i)
end // end of [tricky]

val () = println!("tricky(10) = ", tricky(10))

(* ****** ****** *)

val
tricky = let
//
fun f
(
  r: ref(int), i: int
) : int = let
  val () = !r := !r + 1
in
  if i <= 2 then !r else f(r, i-2) + f(r, i-1)
end (* end of [f] *)
//
val r = ref<int> (0)
//
in
  lam (i:int): int =<cloref1> f(r, i)
end // end of [tricky]

val () = println!("tricky(5) = ", tricky(5))

(* ****** ****** *)

(* end of [final_test.dats] *)
