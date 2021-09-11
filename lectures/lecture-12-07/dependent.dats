#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

#include "share/atspre_staload_libats_ML.hats"

//we always need this to make c happy
implement main0() = ()

// we reviewed some intuition for the Curry-Howard corespondence. Now lets put it into practice in ATS.


// How can we encode what it means for a number to be even?

datatype isEven(int) =
  |         isEvenZero(0  ) of ()           // 0 is even
  | {n:int} isEvenStep(n+2) of (isEven(n))  // for all n if n is even, then n+2 is even

// we can construct simple proofs that any specific number is even
val proof0IsEven =                       isEvenZero()   : isEven(0)
val proof2IsEven =            isEvenStep(isEvenZero())  : isEven(2)
val proof4IsEven = isEvenStep(isEvenStep(isEvenZero())) : isEven(4)
// and so on ...

//val proof3IsEven = (nothing can go here without an error?) : isEven(3)

// ATS is doing some cool stuff behind the scenes for this reasong about arithmetic to work
// To take advantage of this you should convert deffinitions from subtraction and multiplication to addition where possible

// however in this case it doesn't matter and we can use either definition
datatype isEven(int) =
  |         isEvenZero(0) of ()             // 0 is even
  | {n:int} isEvenStep(n) of (isEven(n-2))  // if n-2 is even, then n is even


// prove that for all n if n is even then n + 8 is even
// to do this we write a function:
fun plus8StillEven{n:int}(nAgain:int(n), isEvennProof:isEven(n)): isEven(n+8) = isEvenStep(isEvenStep(isEvenStep(isEvenStep( isEvennProof ))))

// int(n) forces the input of nAgain to be the same as n

// we could use this proof function to proove 16 is even
val proof16IsEven = plus8StillEven(8, plus8StillEven(0, isEvenZero())) : isEven(16)

// There is one big problem with "proving" something with a regular ATS fun: ATS functions can run forever

// so we can write
fun plus8StillEven{n:int}(nAgain:int(n), isEvennProof:isEven(n)): isEven(n+8) = plus8StillEven(nAgain, isEvennProof)

// or worse:
fun badProof(): isEven(3) = badProof()

//luckily ATS is designed to handle proofs writen as terminating functions

// to work aound this we can turn "datatype" into "dataprop"
dataprop isEven(int) =
  |         isEvenZero(0  ) of ()           // 0 is even
  | {n:int} isEvenStep(n+2) of (isEven(n))  // for all n if n is even, then n+2 is even

// "val" into a proof val: "prval"
prval proof0IsEven =                       isEvenZero()   : isEven(0)
prval proof2IsEven =            isEvenStep(isEvenZero())  : isEven(2)
prval proof4IsEven = isEvenStep(isEvenStep(isEvenZero())) : isEven(4)

//val proof3IsEven = (nothing can go here without an error!) : isEven(3)

// "fun" into a proof val: "prfun", and we need a termination metric, in this case we can use () since there is no recursive call
prfun plus8StillEven{n:int}  .< () >.  (nAgain:int(n), isEvennProof:isEven(n)): isEven(n+8) = isEvenStep(isEvenStep(isEvenStep(isEvenStep( isEvennProof ))))

prval proof16IsEven = plus8StillEven(8, plus8StillEven(0, isEvenZero())) : isEven(16)

// now we cannot write badProof without an error
//prfun badProof(): isEven(3) = badProof()

// infact we never really needed the nAgain

//                   for all n:int                           if n is even,  n+8 is even
prfun plus8StillEven{        n:int}  .< () >.  (isEvennProof:isEven(n)   ): isEven(n+8) = isEvenStep(isEvenStep(isEvenStep(isEvenStep( isEvennProof ))))

// "dataprop"s, "prval"s, and "prfun"s will be checked but not compiled into the final exicutable


// we can encode a greater then or equal relation
dataprop GreaterThanOrEqualTo(int,int) =
| {n  :int} isEq         (n  ,n) of ()                          //for all n   ,                   n >= n
| {n,m:int} isGreaterStep(n+1,m) of (GreaterThanOrEqualTo(n,m)) //for all n,m , if  n >= m then n+1 >= m

// again we can easily proove specific things
prval proof1GTE1 =                             isEq()   : GreaterThanOrEqualTo(1,1)
prval proof3GTE1 = isGreaterStep(isGreaterStep(isEq())) : GreaterThanOrEqualTo(3,1)
//prval proof3GTE7 = (nothing can go here!) : GreaterThanOrEqualTo(3,7)

// and we can prove that
//                   for all n:nat,                                                  n >= 0
prfun natsAreGreater{        n:nat} .< n >.  (nAgain: int(n)) : GreaterThanOrEqualTo(n,   0) =
  if nAgain = 0
  then isEq()
  else isGreaterStep(natsAreGreater(nAgain-1))


// we can encode the Fib relation
dataprop Fib(int,int) =
|              Fib0   (0  , 0    ) of ()
|              Fib1   (1  , 1    ) of ()
|{r1,r2,i:int} FibStep(i+2, r1+r2) of (Fib(i, r1), Fib(i+1, r2)  )


prval prooffib0is0 = Fib0()                             : Fib(0,0)
prval prooffib1is1 = Fib1()                             : Fib(1,1)
prval prooffib2is1 = FibStep(Fib0()      , Fib1()      ): Fib(2,1)
prval prooffib3is2 = FibStep(Fib1()      , prooffib2is1): Fib(3,2)
prval prooffib4is3 = FibStep(prooffib2is1, prooffib3is2): Fib(4,3)
prval prooffib5is5 = FibStep(prooffib3is2, prooffib4is3): Fib(5,5)
prval prooffib6is8 = FibStep(prooffib4is3, prooffib5is5): Fib(6,8)
// ...


// siple fib
fun fib(n:int):int =
  if n = 0
  then 0
  else if n = 1
       then 1
       else fib(n-1) + fib(n-2)

// fib proven correct
fun fib{n:nat} (n: int(n)): [r:int] (Fib (n, r) | int(r) ) =
  if n = 0
  then (Fib0() | 0)
  else if n = 1
       then (Fib1() |1)
       else //fib(n-1) + fib(n-2)
          let
            val (proof1 | ans1) = fib(n-1)
            val (proof2 | ans2) = fib(n-2)
          in
          (FibStep(proof2,proof1) | ans1 + ans2 )
          end

val (_ | ans) = fib(6)

val  () = println!(ans)  // 8

// see Chapter 11, http://www.ats-lang.org/Examples.html, http://ats-lang.sourceforge.net/htdocs-old/ATS.html
