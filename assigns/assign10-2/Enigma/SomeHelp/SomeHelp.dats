(* ****** ****** *)
(*
** A special counter
** that increases by 1
** the first time, and then 2,
** and then 3, and then 4, etc.
*)
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

#include
"./../../../../libraries/class.dats"

(* ****** ****** *)
//
typedef
fstream(int) =
cfun(stream(int), stream(int))
//
(* ****** ****** *)
//
extern
fun
SpecialCounter_make((*void*)): fstream(int)
//
(* ****** ****** *)

implement
SpecialCounter_make
  ((*void*)) = let
//
val theDelta = ref<int>(1)
//
fun
auxmain
(
xs: stream(int)
) : stream(int) = $delay
(
case+ !xs of
| stream_nil() =>
  stream_nil()
| stream_cons(x, xs) => let
    val d0 = theDelta[]
    val () = theDelta[] := d0+1
  in
    stream_cons(x+d0, auxmain(xs))
  end // end of [stream_cons]
)
//
in
  lam(xs) => auxmain(xs)
end // end of [SpecialCounter_make]

(* ****** ****** *)

val
theNats =
from(0) where
{
fun from(i:int): stream(int) = $delay(stream_cons(i, from(i+1)))
} (* end of [theNats] *) // end of [val]

(* ****** ****** *)

val
theSpecialCounter = 
SpecialCounter_make()

(* ****** ****** *)

val
theTrans =
theSpecialCounter(theNats)

(* ****** ****** *)

val () = println!(theTrans)

(* ****** ****** *)

implement main0() = ((*void*))

(* ****** ****** *)

(* end of [SomeHelp.dats] *)
