#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

//#include "share/atspre_staload_libats_ML.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"

#include "./../../libraries/class.dats"
#include "./../../libraries/myclass.dats"

//we always need this to make c happy
implement main0() = ()


// lab doc at https://docs.google.com/document/d/1WgeK3wiJqMJAxE6yYN4JR_i1SXomiFzEE_d9vJfWjoM/edit#heading=h.nq1pmueh2hu0


// some good questions that came up in lab

// "an example using the indexed for each of arrays"

val squares = array0_tabulate(10, lam(x)=>x*x)

val () = array0_iforeach<int>(squares, lam(i,x)=> println!(i, ": ", x) )


// "how do closures work?"

// closures allow us to capture things from the environment, and they are represented with the cfun type
// it is simpler to work just with them
// to do so we would need to annotate all of out functions with <cloref1>
fun double_fun(x:int):<cloref1> int = 2*x
val _  = double_fun:cfun(int,int)

//this is often cumbersome so when we don't expect the function to be called we leave the annotation off
fun double_fun2(x:int): int = 2*x

//val _  = double_fun2:cfun(int,int) // but it is now no longer of type cfun(int,int)

//it is of the type
val _  = double_fun2: int -> int
//which can be harder to work with


//for example, normally we will take cfun as inputs (because they are easier to work with)
fun higher_order(fopr:cfun(int,int)):<cloref1> int = fopr(fopr(1))

val () = println!(higher_order(lam(x)=>2*x))    // lambdas can infer if they should be closures or not by type inference
val () = println!(higher_order(double_fun))     // if we define the function elsewhere it needs to be the correct type (including <cloref1>)
//val () = println!(higher_order(double_fun2))  // does not typecheck or compile becuase double_fun2 is not cfun(int,int)

// the reverse is also possible
fun higher_order2(fopr: int -> int ): int = fopr(fopr(1))

val () = println!(higher_order2(lam(x)=>2*x))   // lambdas can infer if they should be closures or not by type inference
val () = println!(higher_order2(double_fun2))
//val () = println!(higher_order2(double_fun))  // does not compile




// question 1

// we can defin f with nieve recursion
fun f(x:int):int =
  if x < 0
  then 0
  else if x = 0
  then 1
  else f(x-1) + 2*f(x-2) - f(x-4)


val () = println!(f(0))
val () = println!(f(1))
val () = println!(f(2))
val () = println!(f(3))
val () = println!(f(4))
val () = println!(f(5))

// note that this implementation is too slow to get
//val () = println!(f(50))

val () = println!()


fun f(x:int):int =
  let
    fun helper(count:int, res0:int, res1:int, res2:int, res3:int) :int =
      if count <= 0
      then res0
      else helper(count - 1, res0 + 2*res1 - res3, res0, res1, res2)
  in
    helper(x, 1,0,0,0)
  end

val () = println!(f(0))
val () = println!(f(1))
val () = println!(f(2))
val () = println!(f(3))
val () = println!(f(4))
val () = println!(f(5))

// note that this implementation is fest enough to get this (though the ints have overflowed)
val () = println!(f(50))

val () = println!()


// question 2

fun {A,B,C:t@ype} curry(f:cfun(A,B,C)): cfun(A,cfun(B,C)) = lam(a:A) => lam(b:B) => f(a,b)

//remember this is the same as
fun {A,B,C:t@ype} higher_order(f:cfun(A,B,C)) : cfun(A,cfun(B,C)) =
  let
    fun output(a:A):<cloref1> cfun(B,C) =
      let
        fun output2(b:B):<cloref1> C = f(a,b)
      in
        output2
      end
  in
    output
  end

// the inverse is
fun {A,B,C:t@ype} uncurry(f:cfun(A,cfun(B,C))): cfun(A,B,C) = lam(a:A, b:B) => f(a)(b)


// question 3

//We could define the datatype as
datatype student  =
 | freshman  of (string)
 | sophomore of ()
 | junior    of ()
 | senior    of (bool)



fun expect_to_graduate(s:student):int =
  case+ s of
    | freshman(_) => 4
    | sophomore() => 3
    | junior()    => 2
    | senior(b)   => if b then 1 else 2


fun make_student(year:int):student =
  if year <= 1
  then freshman("sport") //need to provide a nickname
  else if year = 2
  then sophomore()
  else if year = 3
  then junior()
  else senior(true) //need to provide a bool


// It is worth repeating that datatypes are completely defiend by their constructors,
//   the only way to create a member of a datatype is with its constructors
//   and the onnly way to handle a datatype is by pattern matching its constructors

//this reasoning holds even to the extreame case of a datatype with no constructors
datatype empty = |
// there is no way to ever construct it


// question 4

fun make_student(year:int):option0(student) =
  if year = 1
  then Some0(freshman("sport"))
  else if year = 2
  then Some0(sophomore())
  else if year = 3
  then Some0(junior())
  else if year = 4
  then Some0(senior(true))
  else None0()

//or
fun make_student(year:int):option0(student) =
  case+ year of
    | 1 => Some0(freshman("sport"))
    | 2 => Some0(sophomore()      )
    | 3 => Some0(junior()         )
    | 4 => Some0(senior(true)     )
    | _ => None0()


// or with exceptions
exception not_a_student of (string,int)

fun make_student(year:int):student =
  if year = 1
  then freshman("sport")
  else if year = 2
  then sophomore()
  else if year = 3
  then junior()
  else if year = 4
  then senior(true)
  else $raise(not_a_student("whhoops wrong year", year))


fun make_student(year:int):student =
  case+ year of
    | 1 => freshman("sport")
    | 2 => sophomore()
    | 3 => junior()
    | 4 => senior(true)
    | _ => $raise( not_a_student("whhoops wrong year", year) )


//the following explanians how it should be cought

fun studentstr(s:student):string =
  case+ s of
    | freshman(_) => "fresmen"
    | sophomore() => "sophmore"
    | junior()   => "junior"
    | senior(b)  => "senior"

fun makestr(year:int):string =
  try
    studentstr(make_student(year))
  with
  | ~not_a_student(_, _) => "super senior"

val () = println!(makestr(5))


// question 5

fun {A:t@ype} swap(x:ref(A), y:ref(A)): void =
  let
    val tmp = !x
    val () = !x := !y
    val () = !y := tmp
  in
    ()
  end

val ref1 = ref<string>("hi")
val ref2 = ref<string>("bye")

val () = println!( !ref1 )
val () = println!( !ref2 )

val () = println!()

val () = swap(ref1, ref2)

val () = println!( !ref1 )
val () = println!( !ref2 )

val () = println!()


// question 6


fun {A:t@ype} reverse(arr:array0(A)): void =
  let
    val l      = length(arr) -1
    val middle = l/2
    fun swap(i:int) =
      if i < middle
      then
        let
          val tmp = arr[i]
          val ()  = arr[i]   := arr[l-i]
          val ()  = arr[l-i] := tmp
        in
          swap(i+1)
        end
      else ()
  in
    swap(0)
  end

val arr = array0_tabulate(4, lam(x)=>x)

val () = println!((arr[0]):int)
val () = println!((arr[1]):int)
val () = println!((arr[2]):int)
val () = println!((arr[3]):int)

val () = println!()
val () = reverse(arr)


val () = println!((arr[0]):int)
val () = println!((arr[1]):int)
val () = println!((arr[2]):int)
val () = println!((arr[3]):int)
