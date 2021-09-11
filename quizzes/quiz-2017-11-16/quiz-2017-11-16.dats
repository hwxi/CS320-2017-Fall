(* ****** ****** *)

#include
"share/atspre_staload.hats"

(* ****** ****** *)

typedef intcont = (int) -<cloref1> int
//
fun kf(n: int, k0: intcont): int =
  if n = 0 then k0(k0(0)) else kf(n-1, lam(res) => k0(n-res))
and kf0(n: int): int = kf(n, lam res => res)

val () = println! ("kf0(10) = ", kf0(10))

(* ****** ****** *)

typedef intcont = (int) -<cloref1> int
//
fun kf(n: int, k1: intcont, k2: intcont): int =
  if n = 0
    then k1(k2(0)) else kf(n-1, k2, lam(res) => k1(n+res))
  // end of [if]
and kf0(n: int): int = kf(n, lam res => res, lam res => res)

val () = println! ("kf0(10) = ", kf0(10))

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
//
val () =
println! ("tricky(10) = ", tricky(10))

(* ****** ****** *)

fun
reset
(
 r: ref(int)
) : int =
let val i = !r in !r := 0; i end

val
tricky = let
//
fun f
(
 r: ref(int), i: int
) : int = let
  val () = !r := !r + 1
in
//
if(i < 2)
then reset(r) else f(r, i-2) + f(r, i-1)
//
end (* end of [f] *)
//
val r = ref<int> (0)
//
in
  lam (i:int): int =<cloref1> f(r, i)
end // end of [tricky]

val () =
println! ("tricky(5) = ", tricky(5))

(* ****** ****** *)

implement main0((*void*)) = ((*void*))

(* ****** ****** *)

(* end of [quiz-2017-11-16.dats] *)

