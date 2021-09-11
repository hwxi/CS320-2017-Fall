(* ****** ****** *)

#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"

(* ****** ****** *)
//
val theX = 1
fun foo(x: int): int =
let
  val theX = theX + 1 in theX + x
end
val () =
println!
("foo(0)+foo(1) = ", foo(0)+foo(1))
//
(* ****** ****** *)
//
val theX = ref<int>(1)
fun foo(x: int): int =
let
  val () = !theX := !theX + 1 in !theX + x
end
val () =
println!
("foo(0)+foo(1) = ", foo(0)+foo(1))
//
(* ****** ****** *)
//
fun
foo(n: int, s: int): int =
if n = 1 then s else
  (if n % 2 = 0 then foo(n/2, s+1) else foo(3*n+1, s+1))
val () = println! ("foo(10, 0) = ", foo(10, 0))
//
(* ****** ****** *)
//
val
MYSTREAM =
fstream() where
{
//
fun
fstream
(
// argless
) : stream(int) =
$delay
(
stream_cons
(1, stream_map(fstream(), lam(x) => x*x+1))
)
//
} (* end of [val] *)
//
(* ****** ****** *)

exception EXIT of ()

(* ****** ****** *)

val () =
try
MYSTREAM.iforeach()
(lam(i, x) =>
 if i < 4 then println! (x) else $raise EXIT())
with ~EXIT() => ()

(* ****** ****** *)

implement main0() = ()

(* ****** ****** *)

(* end of [quiz-2017-11-02.dats] *)
