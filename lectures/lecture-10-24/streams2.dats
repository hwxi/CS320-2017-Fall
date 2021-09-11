#include "share/atspre_staload.hats"

//#include "share/atspre_staload_libats_ML.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"

#include "./../../libraries/class.dats"
#include "./../../libraries/myclass.dats"

//we always need this to make c happy
implement main0() = ()


// BostonHacks: https://bostonhacks.io/


// midterm review: answers will be posted soon


// more streams!

//recall from last time:

// what is lazyness?
//  + lazyness means we don't compute things until we need them, and we save the result of computation if we need it again

// which part can we do already, which part is "magic"?
//  + last week we saw that we could delay computations by wrapping them in functions that take no inputs.
//  + But every time we call the function we will need to redo the computation, theis is where the new keyword "delay" comse in

//we can use delay to make some computation lazy
// $delay ( <expression of type A > ) : lazy(A)
// remember lazy(A) is a type

// for instance
val lazynum:lazy(int) = $delay( 10 )

// remember that ! unpacks it
val () = println!( !lazynum )


// last time we wrote our own streams, today we will use the ATS standard streams
// they are documented here: http://ats-lang.sourceforge.net/LIBRARY/prelude/SATS/DOCUGEN/HTML/stream.html


// make a stream that contains the letters in your name

val name:stream(string) =
  $delay(stream_cons( "T",
  $delay(stream_cons( "O",
  $delay(stream_cons( "M",
  $delay(stream_nil())
  ))
  ))
  ))

// note the $delay look at the definition of stream from last week to see why it is needed


// how can we get the 2nd letter?
val letter = (case- !name of
                | stream_cons(_, ame) => (case- !ame of
                                            | stream_cons(a, _) => a ) ) :string


val () = println!( letter )
// note the ! look at the definition of stream from last week to see why it is needed
// note that we are useing the unsafe case- match since we do not expect to see a nil in those positions
// note that println! gets confused without the explicit annotation " :string "

// this is equivelent to
val letter =
  let
    val- stream_cons(_, ame) = !name
    val- stream_cons(a, _  ) = !ame
  in
    a :string
  end

val () = println!( letter )
val () = println!()


// make a function that takes a member of type A and returns a const stream of As
fun {A:t@ype} const_stream(a:A):stream(A) = $delay(stream_cons( a, const_stream(a) ))


// there are several ways to print.


val () = println!(name :stream(string))


val greatings = const_stream( "hi")

//will print out the first couple cells of an infinite stream
val () = println!(greatings :stream(string))
val () = println!()



// the disscussion about how to print streams is a little less relivent now that println! support has been added, but I will include it for completeness:

// you can take the first elements of a stream as a list and print them

val name_20 = stream_take_exn<string>(name, 3)  // cannot index further if the stream is finite, you may need to be explicit about the type parameter
val name_20 = list0_of_list_vt(name_20 ) //do a list to list conversion
val () = println! (name_20) //print the list out in the normal way

val () = println! (list0_of_list_vt(stream_take_exn<string>(greatings, 20))) //or stack it all at once
val () = println!()


// As I mentioned, the difficutly with printing is that you don't necisarily know how to print A.  A could be a cfun for instance.
// Bue we can write our own print function as long as something is able to print A
fun  {A:t@ype} myprint_stream(s:stream(A), i:int, how_to_print:cfun(A,void) ) :void =
  if i <= 0
  then print("...")
  else case+ !s of
    | stream_nil() => ()
    | stream_cons(a, rest) =>
      let
        val () = how_to_print(a)
        val () = print(", ")
      in
        myprint_stream<A>(rest, i-1, how_to_print)
      end

val () = myprint_stream<string>(name, 20, lam(s) => print(s) )
val () = println!()
val () = myprint_stream<string>(greatings, 20, lam(s) => print(s) )
val () = println!()