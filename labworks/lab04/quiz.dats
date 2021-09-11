#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

//#include "share/atspre_staload_libats_ML.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"

//we always need this to make c happy
implement main0() = ()




fun f(i:int):int =
  if i < 2
  then i
  else if f(i/2) > 100     // NOT tail recursive
  then f(i-2)              //     tail recursive
  else 2*f(i/2)            // NOT tail recursive

val () = println!(f(0))
val () = println!(f(1))
val () = println!(f(2))
val () = println!(f(3))
val () = println!(f(4))
val () = println!(f(5))

val () = println!("...")
val () = println!(f(99))
val () = println!(f(100))
val () = println!(f(101))
val () = println!(f(102))
val () = println!(f(103))
val () = println!(f(104))
val () = println!(f(105))
val () = println!("...")
val () = println!(f(10000))

