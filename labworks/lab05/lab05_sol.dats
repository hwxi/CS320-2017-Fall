#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

//#include "share/atspre_staload_libats_ML.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"

//we always need this to make c happy
implement main0() = ()

// lab doc at https://docs.google.com/document/d/12eRsLRloBC8x7E1H0rxzTJRiVFreyPy-uT4LJnoigIs/edit#heading=h.1aq5jl247pk1


// we have seen a number of syntactic constructs at this point

// if
// let
// case
// where
// functions

// each one forms an expression as long as some constraints are met.

// for instance we can from an int epreseeion from

// constants
val i = 23 :int

// an if expression
val i = (if true // if this is an expression of type bool
         then 34 // if this is an expression of type int
         else 20 // if this is an expression of type int
         ) :int

// a let expression
val i = (let
         //anything
         in
           35 // if this is an expression of type int
         end
         ) :int

// a case expression
val i = (case+ "hi" of // is a pattern
           | "hello"    => 1 // if this is an expression of type int
           | "good bye" => 2 // if this is an expression of type int
           | _          => 3 // if this is an expression of type int
//           ...  every case matches to an expression of type int
           ) :int

//we can nest these any way we would like
val i = (let
         in
           case+ "hi" of
                      | "hello"    => 1
                      | "good bye" => 2
                      | _          =>
                        if true
                        then 34
                        else 20
         end
         ) :int

//this is also true for the void type
val v = println!("hi") :void

val v = (if true             // if this is an expression of type bool
         then ()             // if this is an expression of type void
         else println!("hi") // if this is an expression of type void
         ) :void

val v = (let
         in
           println!("hi") // if this is an expression of type void
         end
         ) :void


val v = (case+ "hi" of // is a pattern
           | "hello"    => ()  // if this is an expression of type void
           | "good bye" => println!("bye") // if this is an expression of type void
           | x          => println!(x)     // if this is an expression of type void
//           ...  every case matches to an expression of type void
           ) :void



//it is important to note that declarations are NOT typed expressions!
//  val i = ( val x = 3) :int
//from this perspective we can see why we need somthing like a let block to consume expressions of type void

//also note that "!a := b" is an expession of type void
val v = (
    let
      val a = ref<string>("a")
    in
      (!a := "b")
    end
    ) :void


//question 2

// is a trick question, no position has the queen

//corrected version of shuffle
fun shuffle(i:int, a:ref(string), b:ref(string), c:ref(string)):void =
 let
   val tmp = !a
   val () = (!a := !b)
   val () = (!b := !c)
   val () = (!c := tmp)
 in
   if i > 0
   then shuffle(i-1, a,b,c)
   else ()
 end

fun threecard_monty():void =
 let
   val pos0 = ref<string>("queen of hearts")
   val pos1 = ref<string>("ace of spades")
   val pos2 = ref<string>("3 of clubs")
   val () = shuffle(3, pos0, pos1, pos2)
 in
   println!( !pos2 ) //which position has the queen
 end

//the queen will be in position 2
val () = threecard_monty()


// Review exceptions

// we can now declare new exceptions
exception AnException of ()
exception Other of (cfun(int, int))


val i: int = (try
                (4  :int) // if this is an expression of type int
              with
              | ~AnException() => 2    // if this is an expression of type int
              | ~Other(f)      => f(2) // if this is an expression of type int
             ) :int

