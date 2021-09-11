#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

#include "share/atspre_staload_libats_ML.hats"

#include "./../../libraries/class.dats"
#include "./../../libraries/myclass.dats"

//we always need this to make c happy
implement main0() = ()

// lab code availible at https://docs.google.com/document/d/1vYmBqOnlvW-kEdKaF3YRdj9-OSDOggcXNxk55UXskm8/edit#heading=h.edsv5tdw95hh


typedef cont1(res:t@ype) = (res) -<cloref1> void // same as
//                       = cfun(res, void)

typedef cont0()  = cfun(void)


//(from crash into ats: http://ats-lang.sourceforge.net/DOCUMENT/ATS2FUNCRASH/HTML/c1453.html#AEN1507)
fun k_fibo(n : int, next_time : cont1(int)) : void =
  if (n >= 2)
  then k_fibo ( n-1, lam(r1) => k_fibo(n-2, lam(r2) => next_time(r1+r2)))
  else next_time(n)

// can print the first 10 fib numbers like this
val () = k_fibo(0, lam(res)=>println!(res)) // What are the parametes?  What should I do with the answer?
val () = k_fibo(1, lam(res)=>println!(res))
val () = k_fibo(2, lam(res)=>println!(res))
val () = k_fibo(3, lam(res)=>println!(res))
val () = k_fibo(4, lam(res)=>println!(res))
val () = k_fibo(5, lam(res)=>println!(res))
val () = k_fibo(6, lam(res)=>println!(res))
val () = k_fibo(7, lam(res)=>println!(res))
val () = k_fibo(8, lam(res)=>println!(res))
val () = k_fibo(9, lam(res)=>println!(res))

// note that this is an inefficient implementation
//val () = k_fibo(1000, lam(x)=>println!(x)) //overflows

val () = println!()

// in a few labs we anylized how this code is evaluated (lam(res)=>println!(res) will be replaced with println, and simple caluatation will be preformed when possible)
val () = k_fibo(3, lam(res)=>println!(res))

//replace the body of k_fibo where n :=3  and next_time := println

//  if (3 >= 2)
//  then k_fibo ( 3-1, lam(r1) => k_fibo(3-2, lam(r2) => println(r1+r2)))
//  else println(3)

//3 >= 2 so it evaluates to the first branch

//  k_fibo ( 2, lam(r1) => k_fibo(1, lam(r2) => println(r1+r2)))

//replace the body of the outer k_fibo where n :=2  and next_time := [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))]

//  if (2 >= 2)
//  then k_fibo ( 2-1, lam(r1) => k_fibo(2-2, lam(r2) => [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))](r1+r2)))
//  else [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))](2)

//2 >= 2 so it evaluates to the first branch

//  k_fibo ( 1, lam(r1) => k_fibo(0, lam(r2) => [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))](r1+r2)))

//replace the body of the outer k_fibo where n :=1  and next_time := [lam(r1) => k_fibo(0, lam(r2) => [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))](r1+r2))]


//  if (1 >= 2)
//  then k_fibo ( 1-1, lam(r1) => k_fibo(1-2, lam(r2) => [lam(r1) => k_fibo(0, lam(r2) => [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))](r1+r2))](r1+r2)))
//  else [lam(r1) => k_fibo(2-2, lam(r2) => [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))](r1+r2))](1)

//but 1 >= 2 is false so evaluate to the else branch

// [lam(r1) => k_fibo(0, lam(r2) => [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))](r1+r2))](1)

//evaluate the firsy lam, raplace r1:=1 in the body

// k_fibo(0, lam(r2) => [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))](1+r2))

//We could expand the outer k_fibo but lets skip ahead because k_fibo(0, f) = f(0)

// [lam(r2) => [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))](1+r2))](0)

//evaluate

// [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))](1+0)

//evaluate

//  k_fibo(1, lam(r2) => println(1+r2))

//We could expand the outer k_fibo but lets skip ahead because k_fibo(1, f) = f(1)

//   (lam(r2) => println(1+r2))(1)

//evaluate

// println(1+1)

//It may be easier to visualize this when everything is lined up (after the first else branch)
// [lam(r1) => k_fibo(0, lam(r2) => [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))](r1+r2))](1)
//             k_fibo(0, lam(r2) => [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))]( 1+r2))
//                      [lam(r2) => [lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))]( 1+r2))](0)
//                                   lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))]( 1+ 0))
//                                   lam(r1) => k_fibo(1, lam(r2) => println(r1+r2))](    1))
//                                              k_fibo(1, lam(r2) => println( 1+r2))
//                                                       [lam(r2) => println( 1+r2)](1)
//                                                                   println( 1+ 1)
//                                                                   println(    2)


//you can extract values out of CPS using unsafe features like references or exceptions (this is of course unsafe)
val r = ref<int>(0)

val () = k_fibo(5, lam(res)=> ! r := res)

val () = println!( !r )

//exception Res of (int)
//
//val i  =  try
//            let
//              val () = k_fibo(5, lam(x)=> $raise(Res(x)) )
//            in
//              0 :int
//            end
//          with ~Res(x) => x
//
//val () = println!( i )

val () = println!()

// Question 1
val () = println!("Question 1")

// we can write a simple function in direct style that calls one function with the resultes of another
fun {A,B,C:t@ype} andthen(f:cfun(A,B), g:cfun(B,C), a:A):C = g(f(a))

// We can write the same function in CPS, look closely at how the types correspond with each other
fun {A,B,C:t@ype} andthen(f:cfun(A,cont1(B),void), g:cfun(B,cont1(C),void), a:A, next_time : cont1(C)):void =
  f(a, lam(b) => g(b, next_time ))

// we add a cloref annotation so that k_fibo is a cfun
fun k_fibo(n : int, next_time : cont1(int)) :<cloref1> void =
  if (n >= 2)
  then k_fibo ( n-1, lam(r1) => k_fibo(n-2, lam(r2) => next_time(r1+r2)))
  else next_time(n)

// and test it
val () = andthen<int,int,int>(k_fibo, k_fibo, 4 , lam(res)=>println!(res)) //fib(fib(4)) = fib(3) = 2

val () = println!()

// Question 2
val () = println!("Question 2")

// we took 2 aproaches to solve this problem in different labs

// the fist aproach recognizes that you can think of the problem as an infinite table where each coordinate represents a specific pair

//  (0,0) | (0,1) | (0,2) | ...
//  (1,0) | (1,1) | (1,2) | ...
//  (2,0) | (2,1) | (2,2) | ...
//   ...     ...     ...   ...

//we can enumerat the coordinates by crossin the diagonals

//    0   |   1   |   3   | ...
//    2   |   4   |   7   | ...
//    5   |   8   |  12   | ...
//   ...     ...     ...   ...

// we can find the next coordinate from the prevous coordinate by
fun next_coord(p:$tup(int,int)): $tup(int,int) =
  let
    val sum = p.0 + p.1
  in
    if p.0 < sum
    then $tup(p.0 + 1, p.1 - 1)
    else $tup(0      , sum + 1)
  end


// like stream_nth_opt but with fewer checks
fun {A:t@ype} stream_get_at(aas: stream(A), i:int): option0(A) =
  case+ !aas of
    | stream_nil()          => None0()
    | stream_cons(a, arest) =>
      if i = 0
      then Some0(a)
      else stream_get_at(arest, i - 1)

// and then we can recursively pair the coordinates together.  While being careful to behave correctly if one or both streams end
fun {A,B:t@ype} every_pair(aas:stream(A), bbs:stream(B)): stream($tup(A,B)) =
  let
    fun get(p:$tup(int,int)) : stream($tup(A,B)) =
      case+ (stream_get_at(aas, p.0), stream_get_at(bbs, p.1)) of
        | (Some0(a), Some0(b)) => $delay(stream_cons( $tup(a, b) , get(next_coord(p)) ))
        | (None0() , Some0(_)) => get(next_coord(p))
        | (Some0(_), None0() ) => get(next_coord(p))
        | (None0() , None0() ) => $delay(stream_nil())
  in
    get($tup(0,0))
  end


//we can test it
val nats:stream(int) =
  let
    fun plus_one(i:int):stream(int) = $delay(stream_cons( i, plus_one(i+1) ))
  in
    plus_one(0)
  end

val () = println!(every_pair(nats,nats) :stream($tup(int,int)))

val () = println!()
val () = println!()

// The second aproach uses "shells" to enumerate

//    0   |   2   |   5   | ...
//    3   |   1   |   6   | ...
//    7   |   8   |   4   | ...
//   ...     ...     ...   ...


// take the fist i elements (if they are there
fun {A:t@ype} take(aas: stream(A), i:int):stream(A) =
  if i = 0
  then $delay(stream_nil())
  else
    case+ !aas of
      | stream_nil()          => $delay(stream_nil())
      | stream_cons(a, arest) => $delay(stream_cons(a, take(arest,i-1)))


// pair a stream with a constant
fun {A,B:t@ype} pair(aas: stream(A), b:B):stream($tup(A,B)) =
  case+ !aas of
    | stream_nil()          => $delay(stream_nil())
    | stream_cons(a, arest) => $delay(stream_cons($tup(a,b), pair(arest,b)))

// pair a constant with a stream
fun {A,B:t@ype} pair2(a: A, bbs: stream(B)):stream($tup(A,B)) =
  case+ !bbs of
    | stream_nil()          => $delay(stream_nil())
    | stream_cons(b, brest) => $delay(stream_cons($tup(a,b), pair2(a,brest)))

// append 2 streams
fun {A:t@ype} append(xs: stream(A), ys: stream(A)):stream(A) =
  case+ !xs of
    | stream_nil()          => ys
    | stream_cons(x, xrest) => $delay(stream_cons(x, append(xrest, ys) ))


fun {A,B:t@ype} every_pair(aas: stream(A), bbs: stream(B)): stream($tup(A,B)) =
  let
    fun helper(i:int): stream($tup(A,B)) =
      $delay(
        case- (stream_get_at(aas,i), stream_get_at(bbs,i)) of
          | (Some0(a), Some0(b)) => stream_cons( $tup(a,b), append( pair(take(aas,i), b),  append( pair2(a, take(bbs,i)), helper(i+1) ) ) )
          | (None0() , Some0(b)) => !(append( pair(take(aas,i), b), helper(i+1) ))
          | (Some0(a), None0() ) => !(append( pair2(a, take(bbs,i)) , helper(i+1) ))
          | (None0() , None0() ) => stream_nil()
      )
  in
    helper(0)
  end

// and we can test it with
val () = println!(every_pair(nats,nats) : stream($tup(int,int)))

// It should be clear that there are many ways to enumerate all the pairs