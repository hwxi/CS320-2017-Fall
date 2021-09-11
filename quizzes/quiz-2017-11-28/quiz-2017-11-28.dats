(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)
//
fun f(x: int): int = f(2*x + 1)
//
// val () = f(0) // It loops forever
//
(* ****** ****** *)
//
typedef
intcont = (int) -<cloref1> int
//
fun
kf(n: int, k1: intcont, k2: intcont): int =
  if n = 0
    then k2(0) else kf(n-1, k2, lam(res) => k1(n+res))
  // end of [if]
and
kf0(n: int): int = kf(n, lam res => res, lam res => res)

val-25 = kf0(10) // HX: 25 is returned
//
(* ****** ****** *)
//
val
MYSTREAM =
fstream(0) where
{
fun
fstream
(n: int): stream(int) =
(
  $delay
  (stream_cons
   (n, stream_map(fstream(n+1), lam(x) => x+x+1))
  )
)
}
//
// None of the above // 79
val () = println!(MYSTREAM[4])
//
(* ****** ****** *)
//
fun
f(n: int): int =
if n = 0 then 0 else 10*f(n/2) + n%2
//
// None of the above // 1111111111 // 10 1's
val () = println!("f(1023) = ", f(1023))
//
(* ****** ****** *)

implement main0((*void*)) = ()

(* ****** ****** *)

(* end of [quiz-2017-11-28.dats] *)
