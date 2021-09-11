#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

//#include "share/atspre_staload_libats_ML.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"

//we always need this to make c happy
implement main0() = ()

// lab doc at https://docs.google.com/document/d/13WJYmICz8yj7-Va67GqWslXaoMtHTM4UA0i7RjavDUw/edit

datatype mylist (A:t@ype) =
  | nil  of ()
  | cons of (A, mylist(A))


fun {A:t@ype} filter(ls:mylist(A), f: cfun(A,bool)):mylist(A) =
  case+ ls of
    | nil()        => nil()
    | cons(a,tail) => if f(a)
                      then cons(a,filter(tail,f))
                      else filter(tail,f)

fun {A, B:t@ype} map(ls:mylist(A), f: cfun(A,B)):mylist(B) =
  case+ ls of
    | nil()        => nil()
    | cons(a,tail) => cons(f(a),map(tail,f))

//flatten( [[1,2],[3,4],[5]] ) = [1,2,3,4,5]
fun {A:t@ype} flatten(lsls:mylist(mylist(A))):mylist(A) =
  case+ lsls of
  | nil()                    => nil()
  | cons(nil()       ,tails) => flatten(tails)
  | cons(cons(a,tail),tails) => cons(a, flatten(cons(tail,tails)) )

fun {A, B:t@ype} flatmap(ls:mylist(A), f: cfun(A,mylist(B))):mylist(B) = flatten(map(ls,f))


datatype myoption (A:t@ype) =
  | none of ()
  | some of (A)

fun {A:t@ype} filter(opt:myoption(A), f: cfun(A,bool)):myoption(A) =
  case+ opt of
    | none()  => none()
    | some(a) => if f(a)
                 then some(a)
                 else none()

fun {A, B:t@ype} map(opt:myoption(A), f: cfun(A,B)):myoption(B) =
  case+ opt of
    | none()  => none()
    | some(a) => some(f(a))


fun {A:t@ype} flatten(optopt:myoption(myoption(A))):myoption(A) =
  case+ optopt of
    | none()        => none()
    | some(none())  => none()
    | some(some(a)) => some(a)

fun {A, B:t@ype} flatmap(ls:myoption(A), f: cfun(A,myoption(B))):myoption(B) = flatten(map(ls, f))


