#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

#include "share/atspre_staload_libats_ML.hats"

//we always need this to make c happy
implement main0() = ()

// we reviewed some intuition for the Curry-Howard corespondence. Now lets put it into practice in ATS.


//list

// definition of lists
datatype myList (A:t@ype) =
  | nil  of ()
  | cons of (A,myList(A))

//from this definition we can build concrete lists
val ls1 = cons(1,cons(2,cons(3,nil()))) : myList(int)
val ls2 = cons('h',cons('i',nil() ))    : myList(char)
//...

// we can define functions over lists
fun {A:t@ype} get(ls: myList(A), i:int): A =
  if i = 0
  then case- ls of
        | cons(head, _) => head
  else  case- ls of
        | cons(_, tail) => get(tail, i-1)

// or
fun {A:t@ype} get(ls: myList(A), i:int): A =
  case- ls of
    | cons(head, tail) =>
      if i = 0
      then head
      else  get(tail, i-1)

// and the other functions...

// length

// list_append


// definition of greaterThenOrEq
dataprop greaterThenOrEq(int, int) =
  | {i : int}       eq  (i  , i  ) of ()
  | {x, y : int}    step(x+1, y  ) of (greaterThenOrEq(x,y))


// from this definition we can build concrete proofs of greaterThenOrEq
prval proof1 = eq()                           : greaterThenOrEq(42 , 42 )
prval proof2 = step( eq() )                   : greaterThenOrEq(101, 100)
prval proof3 = step(step(step(step( eq() )))) : greaterThenOrEq(7  , 3  )

// it might be helpful to see the last one with explicit type annotations
prval proof3 =
  step(
    step(
      step(
        step(
          eq() : greaterThenOrEq(3, 3) // since 3 == 3
        )      : greaterThenOrEq(4, 3) //       4 >= 3
      )        : greaterThenOrEq(5, 3) //       5 >= 3
    )          : greaterThenOrEq(6, 3) //       6 >= 3
  )            : greaterThenOrEq(7, 3) //       7 >= 3, QED.


// we can define proofs over greaterThenOrEq
prfun addN {x, y, n:int | n >= 0} .< n >. (proof: greaterThenOrEq(x,y) , nAgain:int(n)): greaterThenOrEq(x+n,y) =
   if nAgain = 0
   then proof
   else step(addN(proof, nAgain-1) )


// from this proofs we can build concrete proofs of greaterThenOrEq
prval proof2 = addN(eq(), 899) : greaterThenOrEq(999, 100)

//notice the similarities between proving and programing

// Fib relation (same as last time, except we chose different names)
dataprop Fib              (int, int) =
|               doubleZero(0  , 0  ) of ()                         // fib(0) = 0
|               doubleOnes(1  , 1  ) of ()                         // fib(1) = 1
| {x, m, n:int} FibStep   (x  , n+m) of ( Fib(x-2,m), Fib(x-1,n) ) // fib(x) = fib(x-2) + fib(x-1)


// from this definition we can build concrete proofs over different inputs and outputs of Fib
prval prooffib0is0 = doubleZero()                        : Fib(0,0)
prval prooffib1is1 = doubleOnes()                        : Fib(1,1)
prval prooffib2is1 = FibStep(doubleZero(), doubleOnes()) : Fib(2,1)
prval prooffib3is2 = FibStep(doubleOnes(), prooffib2is1) : Fib(3,2)
prval prooffib4is3 = FibStep(prooffib2is1, prooffib3is2) : Fib(4,3)
prval prooffib5is5 = FibStep(prooffib3is2, prooffib4is3) : Fib(5,5)
prval prooffib6is8 = FibStep(prooffib4is3, prooffib5is5) : Fib(6,8)

// You can recognize that proofs are like programs and programs are like proofs.
// ATS is nice in how they can be used at the same time

// last week we proved the inefficient version of fib correct
fun fib{n:nat} (n: int(n)): [r:int] (Fib (n, r) | int(r) ) =
  if n = 0
  then (doubleZero() | 0)
  else if n = 1
       then (doubleOnes() |1)
       else //fib(n-1) + fib(n-2)
          let
            val (proof1 | ans1) = fib(n-1)
            val (proof2 | ans2) = fib(n-2)
          in
            (FibStep(proof2,proof1) | ans1 + ans2 )
          end

val (_ | ans) = fib(40)
val () = println!(ans)  // 102334155, slow, but correct


// the tail recursive fib is much more efficient, too make things easier to prove, we will "look ahead" instead of "looking back"
fun fib (n: int):int =
  let
    fun loop(i:int, current:int, next:int):int =
      if i = n
      then current
      else loop(i+1, next, current + next)
  in
    loop(0, 0, 1)
  end

val ans = fib(40)

val () = println!(ans)  // 102334155, fast, but maybe buggy?

// we can prove that the tail recursive fib is correct (from http://www.ats-lang.org/Examples.html)

fun fib {n:nat} (n: int(n)):[r:int] (Fib(n, r) | int(r))  =
  let
    fun loop{i,current,next:int} (currentProof:Fib(i,current),  nextProof:Fib(i+1,next) | i:int(i), current:int(current), next:int(next)):[r:int] (Fib(n, r) | int(r)) =
      if i = n
      then (currentProof | current)
      else loop(nextProof, FibStep(currentProof, nextProof) | i+1, next, current + next)
  in
    loop( doubleZero(), doubleOnes() | 0, 0, 1)
  end

val (_ | ans) = fib(40)
val () = println!(ans)  // 102334155, fast AND correct


// We can define a list that have a dependently typed size, (the size will not be treacked at runtime, we will prove the functions are ok at compile time)
datatype SafeList (A:t@ype, int) =
  |           nil (  A    , 0  ) of ()
  | {x : nat} cons(  A    , x+1) of (A, SafeList(A,x))  // needs to be nat instead of in to make proofs easier

//from this definition we can build concrete lists
val ls1 = cons(1,cons(2,cons(3,nil()))) : SafeList(int,  3)
val ls2 = cons('h',cons('i',nil() ))    : SafeList(char, 2)
// or even
val ls3 = cons("good",cons("luck",cons("on",cons("the",cons("final",nil()))))) : SafeList(string, 5)

// a proven correct length function
fun {a:t@ype} safeLength {n:nat} .<n>. (xs: SafeList (a, n)): int (n) =
  case+ xs of
  | nil()        => 0
  | cons(_, xs1) => 1 + safeLength<a>(xs1)

// restricted length function that only works on non empty lsts
fun {A:t@ype} safeGet{n,i:int | n > 0 && i >= 0 &&  n > i}(index: int(i), ls: SafeList(A,n)): A =
  let
    val+ cons(head, tail) = ls //ATS is samrt enough to know that the list is not empty
  in
    if index = 0
    then head
    else safeGet(index-1,tail)
  end





fun{a:t@ype} safeAppend{m,n:nat} .<m>. (xs: SafeList (a, m), ys: SafeList(a, n)) : SafeList (a, m+n) =
  case+ xs of
  | nil()       => ys
  | cons(x, xs) => cons(x, safeAppend<a>(xs, ys))


val s = safeGet(5,safeAppend(ls1,ls1)) //will compile

//val s = safeGet(6,safeAppend(ls1,ls1)) //will not compile



// mark thoughts:
//  proofs have the potential to help write programs
//  some combination of automation, User interface, theory, and informal convincing needs to happen first


// where to go from here?

// more ATS:
//  A (Not So Gentle) Introduction To Systems Programming In ATS by Aditya Siram https://www.youtube.com/watch?v=zt0OQb1DBko&t=38s
//  520 next semester
//  the rest of Introduction to Programming in ATS http://ats-lang.sourceforge.net/DOCUMENT/INT2PROGINATS/HTML/INT2PROGINATS-BOOK-onechunk.html
//  the google groups ats-lang-club, and stackoverflow
//  Talk to Hongwei (or me)

// kind of like ATS:
//  SML, ocaml, scala, haskell, Agda
//  apply at Jane St. https://www.janestreet.com/join-jane-street/process/

// dependent types outside of ATS:
//  Agda (basicly Haskell with dependent types)
//    a very minimal presentation of these concepts
//    http://people.inf.elte.hu/divip/AgdaTutorial/Index.html
//    plenty of videos
//
//  Coq
//    very academic, more "powerful" but more complicated
//    good inroductory stuff: https://softwarefoundations.cis.upenn.edu/
//
//  also: Idris, lean, isabelle
//
//  Talk to Hongwei or me

// other intresting languages:
//  Lisp family (a whole different universe of functional programers)
//  prolog (a delcarative math language)
