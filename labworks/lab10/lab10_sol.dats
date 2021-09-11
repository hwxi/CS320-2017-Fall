#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

#include "share/atspre_staload_libats_ML.hats"

#include "./../../libraries/class.dats"
#include "./../../libraries/myclass.dats"

//#staload DFS = "./../../lectures/lecture-11-07/depth-first-enum.dats"

//we always need this to make c happy
implement main0() = ()

// Lab doc available at https://docs.google.com/document/d/1J0JDtjm80KaJGw7Gw1v9FWq7EEp75-RXxBZoXG1TmBI/edit#


//recall the direct style functions

fun addOne(i:int): int = i + 1

fun {A:t@ype} repeat(n:int, init:A, work: cfun(A, A)): A =
  if n = 0
  then init
  else repeat(n-1, work(init), work)


// this will cuase an type error becuase addOne is not a cloref function
// val () = println!(repeat<int>(5, 0, addOne))

fun addOne(i:int):<cloref1> int = i + 1
val () = println!(repeat<int>(5, 0, addOne)) // 5
val () = println!()


//convert addOne to CPS
fun addOne(i:int, next: cfun(int,void) ):<cloref1> void = next(i + 1)

//we can call it like
val () = addOne(2, lam i => println!(i))
val () = println!()

//convert repeat to CPS
fun {A:t@ype} repeat(n:int, init:A, work: cfun(A, cfun(A,void), void), done: cfun(A,void) ): void =
  if n = 0
  then done(init)
  else work(init , lam a => repeat(n-1, a, work, done))


val () = repeat<int>(5, 0, addOne, lam i => println!(i)) // 5
val () = println!()

// but in CPS style the "work" function can do unexpected things
fun addOne(i:int, next: cfun(int,void) ):<cloref1> void = println!(i)

val () = repeat<int>(5, 0, addOne, lam i => println!(i)) // a single 0
val () = println!()
// if next is never used, it will never exicute.  In this case "repeat" will never recurse

// most people expected that it would do this,
fun addOne(i:int, next: cfun(int,void) ):<cloref1> void = ( println!(i); next(i + 1))

val () = repeat<int>(5, 0, addOne, lam i => println!(i)) // a single 0,1,2,3,4,5
val () = println!()

// it is possible to do intresting things with this:

// a referenc to a function that does nothing
val nextref = ref<cfun(void)>( lam () => () )

// we can call the function in the refference like:
val () = (!nextref)()
// but it doesn't do anything yet...

// remember that this is "unsafe" since the value may be changed any time
//val () = (!rnext := (lam () =<cloref1> println!("OH NO") ))

// addOne can "pause" the computation by storing what to do next in nextref
fun addOne(i:int, next: cfun(int,void) ):<cloref1> void = ( println!(i); !nextref := (lam () =<cloref1> next(i + 1)) )

val () = repeat<int>(5, 0, addOne, lam i => println!(i)) // 0
val () = println!()

val () = (!nextref)() // 1
val () = (!nextref)() // 2
val () = (!nextref)() // 3
val () = (!nextref)() // 4
val () = (!nextref)() // 5
val () = (!nextref)() // The nextref is never clean so it wil keep printing 5
val () = (!nextref)() // 5
val () = (!nextref)() // 5
val () = println!()

//This implementation mixes the pausing logic and the computation.  we can cleanly seperate these conserns with the following code

fun addOne(i:int, next: cfun(int,void) ):<cloref1> void = next(i + 1)

fun {A:t@ype} repeat( n:int,
                      init:A,
                      work: cfun(A, cfun(A,void), void),
                      pause: cfun(A, cfun(A,void), void),
                      done: cfun(A,void)
                    ): void =
  if n = 0
  then done(init)
  else pause(init, lam x => work(x , lam a => repeat(n-1, a, work, pause, done)))

// then we can implement differnent pause behavior

// no puasing
fun {A:t@ype} noPause(a:A, done: cfun(A,void)):<cloref1> void = done(a)

// puase with the reference
fun {A:t@ype} pauseWithRef(a:A, done: cfun(A,void)):<cloref1> void = (!nextref := (lam () =<cloref1> done(a)) )

// many other puasing strategies could be written...

val () = repeat<int>(5, 0, addOne, noPause     , lam i => println!(i)) // 5

val () = repeat<int>(5, 0, addOne, pauseWithRef, lam i => println!(i)) // ...


val () = println!(".")
val () = (!nextref)() // ...
val () = println!(".")
val () = (!nextref)() // ...
val () = println!(".")
val () = (!nextref)() // ...
val () = println!(".")
val () = (!nextref)() // ...
val () = println!(".")
val () = (!nextref)() // 5
val () = println!(".")
val () = (!nextref)() // The nextref is never clean so it wil keep printing 5
val () = println!(".")
val () = (!nextref)() // 5


// we cause go further and pass along pause to work and done, so that they can pause their computation as well with the same strategy
// alternatively we might decide to limit the work function and rewrite it in the direct style



// I will not give the full Sudoku solution since none of the labs finished it and I would like to go over it later.  See QueenPuzzle.dats and http://ats-lang.sourceforge.net/EXAMPLE/EFFECTIVATS/GraphSearch/main.html

//The qestions we want to ask are

//how do we want to represent the partial solutions ($DFS.node)?

//how do we get new partial solutions from an existing patial solution ($DFS.node_get_children)?



//how do we want to represent the partial solutions ($DFS.node)?

//some options where
//assume $DFS.node = array0 (array0( option0(int) )) // None0 if the space is not filled
//assume $DFS.node = list0($tup(int,int,int)) // first 2 are the coordinates, the last is the value

//how do we get new partial solutions from an existing patial solution ($DFS.node_get_children)?
// for array0 (array0( option0(int) )) pick first none and give new nodes where the none is repaced with every valid number
// for list0($tup(int,int,int)) pick first unasigned coordinate, cons the old soluotion with those coordinates and every valid number
