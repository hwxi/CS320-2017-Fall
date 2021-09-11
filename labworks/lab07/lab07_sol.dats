#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

#include "share/atspre_staload_libats_ML.hats"

#include "./../../libraries/class.dats"
#include "./../../libraries/myclass.dats"

//we always need this to make c happy
implement main0() = ()

// lab doc at https://docs.google.com/document/d/1uBTszd8Z_G-D4PRgddPhA-0bC7bwmYE8Z-jOgLTnSEU/edit?usp=sharing

// remember from last time

// how to construct a finite stream
val name = $delay(stream_cons( "T",
           $delay(stream_cons( "O",
           $delay(stream_cons( "M",
           $delay(stream_nil())
           ))
           ))
           ))


// how to print a stream
val () = println!(name :stream(string))

// make a simple infinite stream
fun {A:t@ype} const_stream(a:A):stream(A) = $delay(stream_cons( a, const_stream(a) ))

val ones = const_stream(1)

val () = println!(ones               :stream(int   ))
val () = println!(const_stream("hi") :stream(string))


val nats:stream(int) =
  let
    fun plus_one(i:int):stream(int) = $delay(stream_cons( i, plus_one(i+1) ))
  in
    plus_one(0)
  end


val () = println!(nats :stream(int) )

val () = println!()
val () = println!()


//double_stream: it was was posible to arange the delay differently, but this is the most lazy version

// nats = 0, 1, 2, 3, 4, ...
// double_stream(nats) = 0, 0, 1, 1, 2, 2, ...
fun {X:t@ype} double_stream(xs:stream(X)): stream(X) =
$delay(
  case+ !xs of
    | stream_nil()            => stream_nil()
    | stream_cons(head, tail) => stream_cons(head, $delay(stream_cons(head, double_stream(tail))))
  )


val () = println!(double_stream(nats) :stream(int) )

val () = println!()
val () = println!()

//n_stream: there were a couple slightly different ways to do it, the most important thing is that the recursive call is lazy

// nats = 0, 1, 2, 3, 4, ...
// n_stream(3, nats) = 0, 0, 0, 1, 1, 1, 2, 2, 2, ...
fun {X:t@ype} n_stream(n:int, xs:stream(X)): stream(X) =
  let
    fun prepend(count:int, x:X, tail:stream(X)):stream(X) =
      if count > 0
      then $delay(stream_cons(x, prepend(count-1, x, tail) ) )
      else tail
  in
    $delay(
      case+ !xs of
        | stream_nil()            => stream_nil()
        | stream_cons(head, tail) => !( prepend(n, head, n_stream(n,tail) ))
    )
  end

val () = println!(n_stream(3, nats) :stream(int))

// or

fun {X:t@ype} repeat(n:int,x:X): stream(X) =
  $delay(
    if n <= 0
    then stream_nil()
    else stream_cons(x,repeat(n-1,x))
    )

fun {X:t@ype} n_stream(n:int, xs:stream(X)): stream(X) =
  $delay(
    case+ !xs of
      | stream_nil()            => stream_nil()
      | stream_cons(head, tail) => ! (stream_append(repeat(n,head), n_stream(n,tail)))
  )

val () = println!(n_stream(3,nats) :stream(int) )

// or even this way that makes the stream lazy

fun {X:t@ype} prepend(n:int, x:X, xs:lazy(stream(X))): stream(X) =
   if n > 0
   then $delay(stream_cons(x, prepend(n-1, x, xs)))
   else !xs

fun {X:t@ype} n_stream(n:int, xs:stream(X)): stream(X) =
   case+ !xs of
       | stream_nil()         => $delay(stream_nil())
       | stream_cons(x, tail) => prepend(n, x, $delay(n_stream(n, tail)))

val () = println!(n_stream(3,nats) :stream(int) )

val () = println!()
val () = println!()

//alternate_stream: this is similar to merge in the standard library.  It was unstated how finite streams should be treated, any reasonable interpertation was fine.

// nats = 0, 1, 2, 3, 4, ...
// ones = 1, 1, 1, 1, 1, ...
// alternate_stream(nats, ones) =  0, 1, 1, 1, 2, 1, 3, 1, ...
fun {X:t@ype} alternate_stream(ls:stream(X), rs:stream(X)): stream(X) =
  case- (!ls, !rs) of
    | (stream_nil()              , _                          ) => rs
    | (_                         , stream_nil()               ) => ls
    | ( stream_cons(lhead, ltail),  stream_cons(rhead, rtail) ) =>
      $delay(stream_cons(lhead,
      $delay(stream_cons(rhead,
      alternate_stream(ltail,rtail)
      ))))


val () = println!(alternate_stream(nats, ones) :stream(int))

//or more cleverly

fun {X:t@ype} alternate_stream(ls:stream(X), rs:stream(X)): stream(X) =
   case !ls of
       | stream_nil()           => rs
       | stream_cons(l, l_tail) => $delay(stream_cons(l,alternate_stream(rs, l_tail)))

val () = println!(alternate_stream(nats, ones) :stream(int))


//or assue the alternation stops when the first stream stops

fun {X:t@ype} alternate_stream(ls:stream(X), rs:stream(X)): stream(X) =
  $delay(
    case- (!ls, !rs) of
      | (stream_nil()             , _                        ) => stream_nil()
      | ( _                       , stream_nil()             ) => stream_nil()
      | (stream_cons(lhead, ltail), stream_cons(rhead, rtail)) =>
        stream_cons(lhead,
          $delay( stream_cons(rhead, alternate_stream(ltail,rtail) )) )
  )

val () = println!(alternate_stream(nats, const_stream(1)) :stream(int) )

val () = println!()
val () = println!()


// split_stream: this problem requires more thought, it cannot be solved in the direct manner of the prevous problems

fun {X:t@ype} every_other(xs:stream(X)): stream(X) =
  $delay(
      case+ !xs of
      | stream_nil() => stream_nil()
      | stream_cons(x, part) => (
            case- !part of
              | stream_nil() => stream_cons(x, $delay(stream_nil()))
              | stream_cons(_, tail) => stream_cons(x, every_other(tail))
      )
  )

// nats = 0, 1, 2, 3, 4, ...
// split_stream(nats) = $tup(
//                           0, 2, 4, 6, ...
//                          ,
//                           1, 3, 5, 7, ...
//                          )
fun {X:t@ype} split_stream(xs:stream(X)): $tup(stream(X),stream(X)) =
  case- !xs of
    | stream_nil() => $tup($delay(stream_nil()),$delay(stream_nil()))
    | stream_cons(x, left) =>
      $tup(
        every_other(xs),
        every_other(left)
      )


val $tup(left,right) = split_stream(nats)
val () = println!(left :stream(int)) //evens

val () = println!(right :stream(int)) //odds


// or (with the helper every_other above)
fun {X:t@ype} tail(xs:stream(X)): stream(X) =
   case !xs of
       | stream_nil()  => $delay(stream_nil())
       | stream_cons(_, l_tail) => l_tail

fun {X:t@ype} split_stream(xs:stream(X)): $tup(stream(X),stream(X)) =
   $tup( every_other(xs), every_other(tail(xs)))


val $tup(left,right) = split_stream(nats)
val () = println!(left :stream(int)) //evens

val () = println!(right :stream(int)) //odds



// THIS IS NOT A SOLUTION! Many labs went in this direction at first (partly becuase I made a mistake).
fun {X:t@ype} split_stream(xs:stream(X)): $tup(stream(X),stream(X)) =
  case- !xs of
    | stream_nil() => $tup($delay(stream_nil()),$delay(stream_nil()))
    | stream_cons(x, part) => (
      case- !part of
        | stream_nil() => $tup(
                            $delay(stream_cons(x, $delay(stream_nil()))),
                            $delay(stream_nil())
                          )
        | stream_cons(y, tail) =>
          let
            val $tup(left,right) = split_stream(tail)  // is not lazy so it "runs forever"
          in
            $tup(
              $delay(stream_cons(x, left)),
              $delay(stream_cons(y, right))
            )
          end
    )

// val $tup(left,right) = split_stream(nats) cuases a stack overflow