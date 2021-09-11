#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

#include "share/atspre_staload_libats_ML.hats"

#include "./../../libraries/class.dats"
#include "./../../libraries/myclass.dats"

#staload DFS = "./../../lectures/lecture-11-07/depth-first-enum.dats"

//we always need this to make c happy
implement main0() = ()

// Lab doc available at https://docs.google.com/document/d/1PSr_COYiilM-3e4cDqXeYiJvOioU7mTjsRxYuFQjPm4/edit?usp=sharing

//  quiz review: quiz-2017-11-16.dats 1st question

typedef intcont = (int) -<cloref1> int

fun kf(n: int, k0: intcont): int =
  if n = 0 then k0(k0(0)) else kf(n-1, lam(res) => k0(n-res))
and kf0(n: int): int = kf(n, lam res => res)

// Becuase there are no side effects, and we dont expect to run out of stack frame we can reason about this function using "equational reasoning"
// To do this we pretend evaluation order doesn't matter, and rewrite a term according to the functions applied to it

// kf0(10)

// kf(10, id)

// kf(10-1, lam(res) => id(10-res))
// kf(9   , lam(res) =>    10-res )

// kf(9-1, lam(res) => [lam(res') => 10-res'    ] (9-res))
// kf(8  , lam(res) =>               10-(9-res)          )
// kf(8  , lam(res) =>                1+   res           )

// kf(8-1, lam(res) => [lam(res') => 1+res'   ](8-res))
// kf(7  , lam(res) =>               1+(8-res)        )

// kf(7-1, lam(res) => [lam(res') => 1+(8-res'   )](7-res))
// kf(6  , lam(res) =>               1+(8-(7-res))        )
// kf(6  , lam(res) =>               1+ 1+   res          )      * here you should notice that we are adding 1 every time n goes down by 2 (that means we will add 5 in the base case)

// kf(6-1, lam(res) => [lam(res') => 1+1+res'   ](6-res))
// kf(5  , lam(res) =>               1+1+(6-res)        )

// kf(5-1, lam(res) => [lam(res') => 1+1+6-res'](5-res))
// kf(4  , lam(res) =>               1+1+1+res         )

// kf(4-1, lam(res) => [lam(res') => 1+1+1+res'   ](4-res))
// kf(3  , lam(res) =>               1+1+1+(4-res)        )

// kf(3-1, lam(res) => [lam(res') => 1+1+1+4-res'](3-res))
// kf(2  , lam(res) =>               1+1+1+1+res         )

// kf(2-1, lam(res) => [lam(res') => 1+1+1+1+res'   ](2-res))
// kf(1  , lam(res) =>               1+1+1+1+(2-res)        )

// kf(1-1, lam(res) => [lam(res') => 1+1+1+1+2-res'](1-res))
// kf(0  , lam(res) =>               1+1+1+1+1+res         )

// kf(0, lam(res) => 5+res))                                     * you could jump to here if you noticed the pattern
// [lam(res) => 5+res]([lam(res) => 5+res)](0))
// [lam(res) => 5+res](             5+0       )
//              5+5
//              10

val () = println! ("kf0(10) = ", kf0(10))



//  quiz review: quiz-2017-11-28.dats 1st question
typedef intcont = (int) -<cloref1> int

fun kf(n: int, k1: intcont, k2: intcont): int =
  if n = 0
  then k2(0)
  else kf(n-1, k2, lam(res) => k1(n+res))

fun kf0(n: int): int = kf(n, lam res => res, lam res => res)

//we can use the same rewriting teqnique

// kf0(10)

// kf(10, lam res => res, lam res => res)
// kf(10, id            , id            )

// kf(10-1, id, lam(res) => id(10+res))
// kf(9   , id, lam(res) =>    10+res )

// kf(9-1, lam(res) => 10+res, lam(res) => id(9+res))
// kf(8  , lam(res) => 10+res, lam(res) =>    9+res )

// kf(8-1, lam(res) => 9+res, lam(res) => [lam(res') => 10+res'   ](8+res))
// kf(7  , lam(res) => 9+res, lam(res) =>               10+(8+res)        )    * notice the patterne that weare summing up the odd numbers or the even numbers

// kf(7-1, lam(res) => 10+(8+res), lam(res) => [lam(res) => 9+res    ](7+res))
// kf(6  , lam(res) => 10+(8+res), lam(res) =>              9+(7+res)        )

// ... could continue this

//to figure our if we are using the odd or even function

// n  k1   k2
// 7  odd  even
// 6  even odd
// 5  odd  even
// 4  even odd
// 3  odd  even
// 2  even odd
// 1  odd  even
// 0  even(odd)

//so the answer is 9+7+5+3+1 = 25

val () = println! ("kf0(10) = ", kf0(10))


//  quiz review: quiz-2017-11-28.dats 2nd question

//val MYSTREAM = fstream(0) where
//  {
//  fun fstream (n: int): stream(int) =
//    (
//      $delay (stream_cons(n, stream_map(fstream(n+1), lam(x) => x+x+1)) )
//    )
//}

//agian, remove delays and write stream_cons as cons for clarity

// MYSTREAM
// fstream(0)
// cons(0, map( fstream(0+1)                                     , lam(x) => x+x+1))
// cons(0, map( fstream(  1)                                     , lam(x) => x+x+1))
// cons(0, map(cons(1, stream_map(fstream(1+1), lam(x) => x+x+1 ), lam(x) => x+x+1))
// cons(0, map(cons(1, stream_map(fstream( 2 ), lam(x) => x+x+1 ), lam(x) => x+x+1))

// cons(0, cons((lam(x) => x+x+1)1, map(map(fstream(2), lam(x) => x+x+1 ), lam(x) => x+x+1))
// cons(0, cons(           1+1+1  , map(map(fstream(2), lam(x) => x+x+1 ), lam(x) => x+x+1))
// cons(0, cons(             3    , map(map(fstream(2), lam(x) => x+x+1 ), lam(x) => x+x+1))


// cons(0, cons(3, map(map(fstream(2)                               , lam(x) => x+x+1 ), lam(x) => x+x+1))
// cons(0, cons(3, map(map(cons(2, map(fstream(3), lam(x) => x+x+1)), lam(x) => x+x+1 ), lam(x) => x+x+1))

// cons(0, cons(3, map(cons(2+2+1,map(map(fstream(3), lam(x) => x+x+1)), lam(x) => x+x+1 ), lam(x) => x+x+1))
// cons(0, cons(3, map(cons(5    ,map(map(fstream(3), lam(x) => x+x+1)), lam(x) => x+x+1 ), lam(x) => x+x+1))

// cons(0, cons(3, cons(5+5+1,map(map(map(fstream(3), lam(x) => x+x+1)), lam(x) => x+x+1 ), lam(x) => x+x+1))
// cons(0, cons(3, cons(11   ,map(map(map(fstream(3), lam(x) => x+x+1)), lam(x) => x+x+1 ), lam(x) => x+x+1))

//...

// or notice the pattern:
// (lam(x) =>  x+ x+1)(lam(x) =>  x+ x+1)(lam(x) => x+x+1)(lam(x) => x+x+1)4
// (lam(x) =>  x+ x+1)(lam(x) =>  x+ x+1)(lam(x) => x+x+1)           4+4+1
// (lam(x) =>  x+ x+1)(lam(x) =>  x+ x+1)(lam(x) => x+x+1)             9
// (lam(x) =>  x+ x+1)(lam(x) =>  x+ x+1)           9+9+1
// (lam(x) =>  x+ x+1)(lam(x) =>  x+ x+1)            19
// (lam(x) =>  x+ x+1)(lam(x) => 19+19+1)
// (lam(x) =>  x+ x+1)              39
// (lam(x) => 39+39+1)
//               79


//
fun f(n: int): int =
  if n = 0
  then 0
  else 10*f(n/2) + n%2

// f(1024-1) = 1111111111
// f(512-1)  = 111111111
// f(256-1)  = 11111111
// f(128-1)  = 1111111
// f(64-1)   = 111111
// f(32-1)   = 11111
// f(16-1)   = 1111
// f(8-1)    = 111
// f(4-1)    = 11
// f(2-1)    = 1
// f(1-1)    = 0

val () = println!()
val () = println!()

// given:
fun staircase_count(i:int):int =
  if i < 0
  then 0
  else if i = 0
       then 1
       else staircase_count(i - 1) + staircase_count(i - 3)

val () = println!(staircase_count(10))

// tail recursive:
fun staircase_count(i:int):int =
  let
    fun helper(count:int, x1:int, x2:int, x3:int):int =
      if count <= 0
      then x1
      else helper(count-1, x1 + x3, x1, x2)
  in
    helper(i, 1, 0, 0)
  end

val () = println!(staircase_count(10))


// given in CPS:
fun staircase_countk(i:int, next:cfun(int, void)):void =
  if i < 0
  then next(0)
  else if i = 0
       then next(1)
       else staircase_countk(i - 1, lam res1 => staircase_countk(i - 3, lam res3 => next(res1+res3)) )

val () = staircase_countk(10, lam res => println!(res))

// tail recursive in CPS:

//transform from the outside in, outer function fist
fun staircase_countk(i:int, done:cfun(int, void)):void =
  let
    fun helper(count:int, x1:int, x2:int, x3:int): int =
      if count <= 0
      then x1
      else helper(count-1, x1 + x3, x1, x2)
  in
    done(helper(i, 1, 0, 0))
  end

val () = staircase_countk(10, lam res => println!(res) ) // check no mistakes

//transfom the inner function

fun staircase_countk(i:int, done:cfun(int, void)):void =
  let
    fun helper(count:int, x1:int, x2:int, x3:int, next:cfun(int, void)): void =
      if count <= 0
      then next(x1)
      else helper(count-1, x1 + x3, x1, x2, next)
  in
    helper(i, 1, 0, 0, done)
  end

val () = staircase_countk(10, lam res => println!(res) ) // check no mistakes

val () = println!()

// stream review
val staircase_counts: stream(int) =
  let
    fun helper(x1:int, x2:int, x3:int):stream(int) =
      $delay(stream_cons( x1, helper(x1 + x3, x1, x2) ))
  in
    helper(1, 0, 0)
  end

val () = println!(staircase_counts : stream(int))


// or you can bw a little silly
val staircase_counts:stream(int) =
  let
    fun loop(i:int):stream(int) =
      $delay(stream_cons(staircase_count(i), loop(i+ 1)))
  in
    loop(0)
  end

val () = println!(staircase_counts : stream(int))


//lazyness review

val q : lazy(lazy(lazy(int))) = $delay( $delay( $delay( 3 ) ) )
val () = println!( !(!(!(q))) ) //3


val x: lazy(lazy(int)) = $delay((println!( "hard work") ;
                            $delay(( println!( "MORE hard work") ; 3
                                  ))
                               ))

val _ = !x
val () = println!("..")
val _ = !(!x)
val () = println!("..")
val _ = !x


// graph search:

// interfach to play a game of "hangman"
extern fun isLetter(c:char, pos:int): bool


val allLetters:list0(char) =
  let
    fun aux(c:char):list0(char) =
      list0_cons(c, if c = 'z'
                    then list0_nil()
                    else aux(c+1))
  in
    aux('a')
  end


typedef node = $DFS.node  // lets us not have to write $DFS.node every time

assume $DFS.node = list0(char) // the type for our partial solution, in this case the prefix

implement {} $DFS.node_get_children(partialSolution:node) : $DFS.nodelst =
  list0_map(list0_filter(allLetters, lam c => isLetter(c, length(partialSolution))),
  (lam c => list0_cons(c, partialSolution) ) )

val partialSolutions = $DFS.node_dfsenum(list0_nil()) //the most partial solutions, the empty prefix

//  can see all the partial solutions
val () = println!(partialSolutions: stream(list0(char)))

// in our casse we want the last solution
fun {A:t@ype} last(sa:stream(A)): A =
    case- !sa of
      | stream_cons(a, tail) => (
          case+ !tail of
            | stream_nil() => a
            | _            => last(tail)
         )

//and reversed
val () = println!(list0_reverse(last<list0(char)>(partialSolutions)))

//for a 10 char word even this toy example beats trying out every full solution
//26 * 10 <<<<<<<< 26 ^ 10





















































































































fun {A:t@ype} listGetOpt(ls:list0(A), pos:int): option0(A) =
  case+ ls of
    | list0_cons(a, tail) => if pos = 0
                             then Some0(a)
                             else listGetOpt(tail, pos -1)
    | list0_nil()         => None0()

implement isLetter(c:char, pos:int): bool =
  let
    val ls:list0(char) = string_explode("goodluckonthemidterm")
    val opt = listGetOpt<char>(ls, pos)
  in
    case+ opt of
      | Some0(x) => (x = c)
      | None0()  => false
  end

