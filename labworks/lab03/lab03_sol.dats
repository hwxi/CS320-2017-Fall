#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

//#include "share/atspre_staload_libats_ML.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"

//we always need this to make c happy
implement main0() = ()

//lab doc availible at https://docs.google.com/document/d/1JZEMbcJ2nEWJtRivtl9Flmiz0rytb-KaQH-wsH1HLf4/edit#heading=h.edsv5tdw95hh

datatype Tree(A:t@ype) =
 | empty of ()
 | node  of (Tree(A),A,Tree(A))

// we can create trees with the constructors
val easytree  = node(node(empty(),4,empty()),3,node(node(empty(),7,empty()),6,empty()))


fun {A:t@ype} size(t: Tree(A)): int =
  case+ t of
//  | empty         => 0 be careful not to do this! "empty" will be interperted as a variable
    | empty()       => 0
    | node(l, _, r) => 1 + size(l) + size(r)

val () = println!(size(easytree))  // 4


fun {A:t@ype} inorder(t:Tree(A)): list0(A) =
 case+ t of
   | empty()       => list0_nil()
   | node(l, a, r) => inorder(l) + list0_cons(a, inorder(r))
// + is overloaded with append for list.  See: http://ats-lang.sourceforge.net/LIBRARY/libats/ML/SATS/DOCUGEN/HTML/list0.html

val ls = inorder(easytree) : list0(int)
val () = println!(ls)  // 4, 3, 7, 6


fun {A,B:t@ype} zip(ta:Tree(A),tb:Tree(B)): Tree($tup(A,B)) =
 case- $tup(ta,tb) of
   | $tup(empty()        , _              ) => empty()
   | $tup( _             , empty()        ) => empty()
   | $tup(node(la, a, ra), node(lb, b, rb)) => node(zip(la,lb), $tup(a,b), zip(ra,rb))

val ls = inorder(zip(easytree,easytree)) : list0($tup(int,int))
val () = println!(ls)  // $tup(4, 4), $tup(3, 3), $tup(7, 7), $tup(6, 6)


fun {A,B:t@ype} fold(t:Tree(A), base:B, f: cfun(B,A,B,B)) : B =
 case+ t of
   | empty()       => base
   | node(l, a, r) => f(fold(l,base,f), a, fold(r,base,f))

//can find the height of the tree
val () = println!(fold<int,int>(easytree, 0, lam(l:int, i:int, r:int):int => if l > r then l + 1 else r + 1))  // 3
