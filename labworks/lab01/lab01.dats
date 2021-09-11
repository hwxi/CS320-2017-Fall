#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

//we always need this to make c happy
implement main0() = ()

//lab doc availible at https://docs.google.com/document/d/19b_JkUuam8e7s5VavoiCicHX6Ccry1b9upjMjgt9GYY/edit#heading=h.8ckro1unw43a

//Question 1
fun is_even(n:int):bool =
 let
   val () = println!("important debug information: ", n)
 in
   if n = 0
   then true
   else if n = 1
   then false
   else is_even(n - 2) //is tail recursive
 end


val () = println!( "is_even(11) = ", is_even(11))

val () = println!( "is_even(100000) = ", is_even(100000))

//Question 2
fun biggest_prime(n:int):int =
  let
    fun iter(i:int, big_prime:int): int =
      let
        fun iter2(k:int):bool =
          if k >= i
          then true
          else if i % k = 0
          then false
          else iter2(k+1)
      in
        if i < n
        then if iter2(2)
          then iter(i+1,i)
          else iter(i+1,big_prime)
        else big_prime
      end
  in
    iter(1,1)
  end

val () = println!( "biggest_prime(10) = ", biggest_prime(10))

//Question 3
fun repeat_twice(f: int -> int): int -<cloref1> int = lam n => f(f(n))

fun square(n: int): int = (n*n)

val () = println!( "repeat_twice(square)(2) = ", (repeat_twice(square)(2)))