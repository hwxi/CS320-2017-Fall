(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)
//
#include
"$PATSHOMELOCS\
/effectivats-divideconquer/mylibies.hats"
//
#staload $DivideConquer
//
(* ****** ****** *)

(*
fun
fibo(n: int): int =
if n < 2 then n else fibo(n-1) + fibo(n-2)
*)

(* ****** ****** *)

extern
fun fibo(n: int): int
  
(* ****** ****** *)

assume
input_t0ype = int
assume
output_t0ype = int

(* ****** ****** *)

implement
fibo(n) =
DC_solve<>(n) where
{
//
implement
DC_base_test<>(n) =
if
(n <= 1)
then true else false
//
implement
DC_base_solve<>(n) = n
//
implement
DC_divide<>(n) =
list0_cons(n-1, list0_cons(n-2, list0_nil()))
//
implement
DC_conquer_combine<>(x0, rs) = (rs[0] + rs[1])
//
} (* end of [where] *)

(* ****** ****** *)

implement
main0() =
{
val () =
println!("fibo(10) = ", fibo(10))
}

(* ****** ****** *)

(* end of [fibo.dats] *)
