#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

//#include "share/atspre_staload_libats_ML.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"

#include "./../../libraries/class.dats"
#include "./../../libraries/myclass.dats"

//we always need this to make c happy
implement main0() = ()

//lab doc availible at https://docs.google.com/document/d/1_g760lOcgtIm2_5VOx2zSd5dxxWtYsZXpPj4x2g5fEo/edit#heading=h.edsv5tdw95hh


// question 1

fun repeat(f: int -> int, n: int): cfun(int, int) =
  if n > 0
  then lam x => f(repeat(f, n-1)(x))
  else lam x => x

val () = println!(repeat(lam(x:int)=>x+1, 10)(0))

val () = println!()

// question 2

fun repeat(f: bool -> bool, n:int): cfun(bool, bool) =
  if n = 0
  then lam x => x
  else lam x => f( repeat(f, n-1)(x) )


fun repeat(f: bool -> bool, n:int): cfun(bool, bool) =
  if n = 0
  then lam x => x
  else lam x => f( repeat(f, n-1)(x) )

fun {Y:t@ype} repeat(f: Y -> Y, n:int): cfun(Y, Y) =
  if n = 0
  then lam x => x
  else lam x => f( repeat(f, n-1)(x) )

val () = println!(repeat<int>(lam(x:int)=>x+1, 10)(0))

val () = println!()


// question 3

fun every_smaller(i:int): int =
  let
    fun loop(x:int):int =
      if x <= 0
      then 0
      else loop(x-1) + x
  in
    loop(i-1)
  end

val () = println!(1+2+3+4+5+6+7+8+9)
val () = println!(every_smaller(10))

fun every_smaller(i:int): int = int_foldleft<int>(i, 0, lam (res, x)=> res + x )

val () = println!(every_smaller(10))

val () = println!()

fun bad_question(i:int): cfun(int, bool) =
  if i <= 0
  then lam x => false
  else lam x => if i - 1 = x
                then true
                else bad_question(i-1)(x)

val () = println!(bad_question(3) (2)) // true
val () = println!(bad_question(3) (3)) // false
val () = println!(bad_question(3) (4)) // false

val () = println!()

fun bad_question(i:int): cfun(int, bool) =
  int_foldleft<cfun(int, bool)>(i,
                                lam x => false, //initial function
                                lam (res, x)=> (lam (y:int):bool =>
                                                                   if y = x
                                                                   then true
                                                                   else res(y-1)
                                                )
                                )


val () = println!(bad_question(3) (2)) // true
val () = println!(bad_question(3) (3)) // false
val () = println!(bad_question(3) (4)) // false

val () = println!()

//of course there is a much easier way to solve this without recursion:
fun bad_question(i:int): cfun(int, bool) = lam x => i > x

val () = println!(bad_question(3) (2)) // true
val () = println!(bad_question(3) (3)) // false
val () = println!(bad_question(3) (4)) // false

val () = println!()
