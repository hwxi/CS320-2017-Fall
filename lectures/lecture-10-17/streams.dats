#include "share/atspre_staload.hats"
#include "share/atspre_staload_libats_ML.hats"

//#include "./../../libraries/class.dats"
//#include "./../../libraries/myclass.dats"

//we always need this to make c happy
implement main0() = ()


// lazyness means we only compute values when we need them and save them so they don't need to be recomputed

// functions that don't take parameters let you schedual computations for later
typedef BadLazy(A) = cfun(A)

//for instance:
fun slowComp():<cloref1> int =
  let
    val () = println!("loonng time ....")
  in
    1+1
  end

// we can evaluate the lazy value with ()
val i = slowComp()
val () = println!(i)

//we can pass around BadLazy values
fun decide(bl:BadLazy(int)):int =
  if true //complicated logic
  then bl() + 1 //only compute the value when needed
  else 4

val () = println!(decide(slowComp))
val () = println!()

//however the result is not saved and must be recomputed

//this is solved with the delay keyword and lazy type
val slowComp2:lazy(int) =
  $delay(
    let
      val () = println!("loonng time !!!")
    in
      1+2
    end
  )


val i = !slowComp2
val () = println!(i)

val i = !slowComp2 //the value is not recomputed
val () = println!(i)


fun decide(bl:lazy(int)):int =
  if true //complicated logic
  then !bl + 1 //only compute the value when needed, or use the one that was already computed
  else 4


val i = decide(slowComp2)  //the value is not recomputed
val () = println!(i)
val () = println!()

//remember that types can interact
val x1:lazy(lazy(int)) =
  $delay( $delay(
    let
       val () = println!("HI!!!!")
    in
       999
    end
  ) )

//we need the exact amount of ! to get the value.  Too many or too few will result in a type error.
val () = println!( !(!x1) )
val () = println!()

//we can use lazyness to build a lazy list (normally called a stream)

//one way to do this is
datatype mystream(A:t@ype) =
  | mystream_nil  of ()
  | mystream_cons of (A, lazy(mystream(A)) )

// but this stream requires the first value to be computed, so we can make a lazier stream as they are defined in ATS

datatype mystream_con(A:t@ype) =
  | mystream_nil  of ()
  | mystream_cons of (A, mystream(A))
where  mystream(A:t@ype) = lazy(mystream_con(A)) //just a mutual typedef

//now we don't even know if a stream is empty until we unpack it

//we can build streams using the constructors (but we need to delay the right things)
val ls:mystream(int) = $delay( mystream_cons(1, $delay( mystream_nil() ) ) )

//we can pattern match as long as we unpack the correct values
val a =
  case+ !ls of //NOTE: we unpack with !
    | mystream_nil()      => 100
    | mystream_cons(x, _) => x

val () = println!(a:int) // 1
val () = println!()

//we can create a large list
fun longg(i:int):mystream(int) =
    $delay(
      if i=0
      then mystream_nil()
      else
        let
          val () = println!("loonng time ???") //pretend that it takes a long time to implement every celll
        in
          mystream_cons(i, longg(i - 1))
        end
    )

//equivelently:
fun longgg(i:int):mystream(int) =
  if i=0
  then $delay(mystream_nil())
  else
    let
      val () = println!("loonng time ???") //pretend that it takes a long time to implement every celll
    in
      $delay( mystream_cons(i, longgg(i - 1)) )
    end

//we can print just the first values we are intrested in
fun myprint(ls:mystream(int), i:int):void =
  if i <= 0
  then println!("...")
  else
    case+ !ls of
      | mystream_nil()         => ()
      | mystream_cons(x, rest) =>
        let
          val () = println!(x)
        in
          myprint(rest,i-1)
        end

val () = myprint(longg(10000),10) // only 10 "hard computations" are done
val () = println!()


//perhaps the most intresting thing about streams is that they can modle infinite data

// and infinite stream of 42s
val fortytwo =
  let
    fun fortytwos():mystream(int) =
        $delay(
              mystream_cons(42, fortytwos())
        )
  in
    fortytwos()
  end

val () = myprint(fortytwo,10)
val () = println!()

// and infinite stream of fibs
val fibs =
  let
    fun help(i:int,j:int):mystream(int) =
        $delay(
              mystream_cons(i, help(j, i+j) )
        )
  in
    help(0,1)
  end

val () = myprint(fibs,20)
val () = println!()

// and infinite stream of positive numbers
val pos =
  let
    fun help(i:int):mystream(int) =
        $delay(
              mystream_cons(i, help(i+1) ) //note that the recursion help(i+1) is ok becuase of lazyness!
        )
  in
    help(1)
  end

val () = myprint(pos,100)
val () = println!()

//we can implement several combinators on streams

fun {A,B:t@ype} mystreammap(s:mystream(A), f:cfun(A,B)): mystream(B) =
  $delay(
    case+ !s of
      | mystream_nil()         =>  mystream_nil()
      | mystream_cons(x, rest) =>  mystream_cons(f(x), mystreammap(rest, f))
  )

fun {A:t@ype} mystreamfilter(s:mystream(A), f:cfun(A,bool)): mystream(A) =
  $delay(
    case+ !s of
      | mystream_nil()         =>  mystream_nil()
      | mystream_cons(x, rest) =>
        if f(x)
        then mystream_cons(x, mystreamfilter(rest,f) )
        else !(mystreamfilter(rest,f))
  )

//we do have to be careful when using infinite data, this is ok:
val () = myprint(mystreamfilter(pos, (lam(x) =>  x < 10) ), 5 )

//but this will crash
//  val () = myprint(mystreamfilter(pos, (lam(x) =>  x < 10) ), 15 )
//becuase there is no way for the program to know that there is another x less then 10 without doing infinite work

val () = println!()

// an infinite stream of all the numbers greater then or equal to 2
val from2 =
  let
    fun help(i:int):mystream(int) =
        $delay(
              mystream_cons(i, help(i+1) )
        )
  in
    help(2)
  end

// an infinite stream of all the primes
val primes =
  let
    fun helper(s:mystream(int)):mystream(int) =
      $delay(
        case+ !s of
          | mystream_cons(prime, rest) => mystream_cons(prime, helper(mystreamfilter( rest, lam(x) => x % prime <> 0)))
          | mystream_nil()             => mystream_nil() // this never actual happens becuase the stream is infinite
        )
  in
      helper(from2)
  end

val () = myprint(primes, 100 )
val () = println!()

//we can write combinators over streams
fun {A:t@ype} mystreamappend(l:mystream(A), r:mystream(A)): mystream(A) =
  $delay(
    case+ !l of
      | mystream_nil()         => !r
      | mystream_cons(x, rest) => mystream_cons(x, mystreamappend(rest,r) )
  )

fun {A,B:t@ype} mystreamzip(l:mystream(A), r:mystream(B)): mystream($tup(A,B)) =
  $delay(
    case+ (!l , !r) of
      | (mystream_nil()         , _                      ) => mystream_nil()
      | ( _                     , mystream_nil()         ) => mystream_nil()
      | (mystream_cons(lx,lrest), mystream_cons(rx,rrest)) => mystream_cons($tup(lx,rx), mystreamzip(lrest, rrest) )
  )

// once we have good library of combinators we can do lots of intresting things with infinite data