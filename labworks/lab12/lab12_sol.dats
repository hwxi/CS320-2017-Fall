#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

#include "share/atspre_staload_libats_ML.hats"

#include "./../../libraries/class.dats"
#include "./../../libraries/myclass.dats"

#staload DFS = "./../../lectures/lecture-11-07/depth-first-enum.dats"

//we always need this to make c happy
implement main0() = ()

// Lab doc available at https://docs.google.com/document/d/1PSr_COYiilM-3e4cDqXeYiJvOioU7mTjsRxYuFQjPm4/edit?usp=sharing


//  quiz review: quiz-2017-11-16.dats 3rd question

fun reset (r: ref(int)) : int =
  let
    val i = !r
  in
    !r := 0; i
  end

val tricky =
  let
    fun f(r: ref(int), i: int) : int =
      let
        val () = !r := !r + 1 //add one
      in
        if(i < 2)
        then reset(r) // retrun the value of r
        else f(r, i-2) + f(r, i-1)
      end

    val r = ref<int> (0)

  in
    lam (i:int): int =<cloref1> f(r, i)
  end

val () = println! ("tricky(5) = ", tricky(5))


// unlike the questions we reviewed in lab11, this function make use of references, so we need to walk through every step in the correct order

// r=0 | i=5,  f(r, i)
// r=0 | i=5, [f(r, i)]
// r=1 | i=5, [f(r, i)] | i=5, f(r, i-2)   +  f(r, i-1)
// r=1 | i=5, [f(r, i)] | i=5, [f(r, i-2)] +  f(r, i-1)
// r=2 | i=5, [f(r, i)] | i=5, [f(r, i-2)] +  f(r, i-1)  | i=3,  f(r, i-2)  +  f(r, i-1)
// r=2 | i=5, [f(r, i)] | i=5, [f(r, i-2)] +  f(r, i-1)  | i=3, [f(r, i-2)] +  f(r, i-1)
// r=3 | i=5, [f(r, i)] | i=5, [f(r, i-2)] +  f(r, i-1)  | i=3, [f(r, i-2)] +  f(r, i-1) | i=1, reset(r)
// r=0 | i=5, [f(r, i)] | i=5, [f(r, i-2)] +  f(r, i-1)  | i=3,   3         + [f(r, i-1)]
// r=1 | i=5, [f(r, i)] | i=5, [f(r, i-2)] +  f(r, i-1)  | i=3,   3         + [f(r, i-1)] | i=2,  f(r, i-2)  +  f(r, i-1)
// r=2 | i=5, [f(r, i)] | i=5, [f(r, i-2)] +  f(r, i-1)  | i=3,   3         + [f(r, i-1)] | i=2, [f(r, i-2)] +  f(r, i-1) | i=0, reset(r)
// r=0 | i=5, [f(r, i)] | i=5, [f(r, i-2)] +  f(r, i-1)  | i=3,   3         + [f(r, i-1)] | i=2,  2          +  f(r, i-1)
// r=1 | i=5, [f(r, i)] | i=5, [f(r, i-2)] +  f(r, i-1)  | i=3,   3         + [f(r, i-1)] | i=2,  2          + [f(r, i-1)] | i=1, reset(r)
// r=0 | i=5, [f(r, i)] | i=5, [f(r, i-2)] +  f(r, i-1)  | i=3,   3         + [f(r, i-1)] | i=2,  2          +  1
// r=0 | i=5, [f(r, i)] | i=5, [f(r, i-2)] +  f(r, i-1)  | i=3,   3         +  3
// r=0 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)]
// r=1 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4,  f(r, i-2)  +  f(r, i-1)
// r=2 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4, [f(r, i-2)] +  f(r, i-1) | i=2,  f(r, i-2)  +  f(r, i-1)
// r=3 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4, [f(r, i-2)] +  f(r, i-1) | i=2, [f(r, i-2)] +  f(r, i-1) | i=0, reset(r)
// r=0 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4, [f(r, i-2)] +  f(r, i-1) | i=2,  3          +  f(r, i-1)
// r=1 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4, [f(r, i-2)] +  f(r, i-1) | i=2,  3          + [f(r, i-1)] | i=1, reset(r)
// r=0 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4, [f(r, i-2)] +  f(r, i-1) | i=2,  3          +  1
// r=0 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4,  4          +  f(r, i-1)
// r=1 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4,  4          + [f(r, i-1)] | i=3, [f(r, i-2)] +  f(r, i-1)
// r=2 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4,  4          + [f(r, i-1)] | i=3, [f(r, i-2)] +  f(r, i-1) | i=1, reset(r)
// r=0 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4,  4          + [f(r, i-1)] | i=3,  2          +  f(r, i-1)
// r=1 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4,  4          + [f(r, i-1)] | i=3,  2          + [f(r, i-1)] |i=2, [f(r, i-2)] +  f(r, i-1)
// r=2 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4,  4          + [f(r, i-1)] | i=3,  2          + [f(r, i-1)] |i=2, [f(r, i-2)] +  f(r, i-1) | i=0, reset(r)
// r=0 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4,  4          + [f(r, i-1)] | i=3,  2          + [f(r, i-1)] |i=2,  2          +  f(r, i-1)
// r=1 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4,  4          + [f(r, i-1)] | i=3,  2          + [f(r, i-1)] |i=2,  2          + [f(r, i-1)] | i=0, reset(r)
// r=0 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4,  4          + [f(r, i-1)] | i=3,  2          + [f(r, i-1)] |i=2,  2          +  1
// r=0 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4,  4          + [f(r, i-1)] | i=3,  2          +  3
// r=0 | i=5, [f(r, i)] | i=5,  6          + [f(r, i-1)] | i=4,  4          +  5
// r=0 | i=5, [f(r, i)] | i=5,  6          +  9
// r=0 | i=5,  15


// notice that:
//   r is 0 whenever coming form a recursive call
//   the branching only depends on i, so we can look at that seperately
//   if we draw a tree of function branching based on i, then we can simply count the nodes and solve the queation very quickly


// midterm questions

datatype mytree(a:t@ype) =
  | mytree_nil  of ()
  | mytree_cons of (mytree(a), a, mytree(a))


// ...

(*
//
// G1-1: 05 points
//
// please implement
// mytree_streamize_bfs that turns a
// given tree into a stream which enumerates
// the elements of the tree in a breadth-first
// fashion. For instance the following tree is
// enumerated as 0, 1, 2, 3, 4, 5, 6:
//
                  0
               1     2
              3 4     5
                 6
*)

extern fun {a:t@ype} mytree_streamize_bfs(t0: mytree(a)): stream(a)


implement {a:t@ype} mytree_streamize_bfs(t0: mytree(a) ): stream(a) =
  let
    fun loop(queueueue:stream(mytree(a)) ): stream(a) =
      case+ !queueueue of
        | stream_nil()                                       => $delay(stream_nil())
        | stream_cons( mytree_nil()                  , rest) => loop(rest)
        | stream_cons( mytree_cons(left, root, right), rest) => $delay(stream_cons(root,
                                                                  loop(stream_append(stream_append(
                                                                    rest,
                                                                    $delay(stream_cons(left , $delay(stream_nil()) )) ), //a stream of just left
                                                                    $delay(stream_cons(right, $delay(stream_nil()) )) )  //a stream of just right
                                                                  )
                                                                  ))
  in
    loop( $delay(stream_cons( t0, $delay(stream_nil()) )) )
  end




datatype lazytree_con(a:t@ype) =
  | lazytree_nil  of ()
  | lazytree_cons of (lazytree(a), a, lazytree(a))
  where lazytree(a:t@ype) = lazy(lazytree_con(a))



//
// G1-4: 15 points
// Please find a way to enumerate a lazytree.
// Given a lazytree-value lt0, the following
// function lazytree_streamize returns a stream
// such that every element in lt0 is guaranteed
// to occur exactly once in the returned stream.
//
// Note that any correct solution must properly
// handle infinite lazytrees.

extern fun {a:t@ype} lazytree_streamize(lazytree(a)): stream(a)

// almost the same
implement {a:t@ype} lazytree_streamize(t0: lazytree(a) ): stream(a) =
  let
    fun loop(queueueue:stream(lazytree(a)) ): stream(a) =
      case+ !queueueue of
        | stream_nil()            => $delay(stream_nil())
        | stream_cons(tree, rest) => (
          case+ !tree of
            | lazytree_nil()                   => loop(rest)
            | lazytree_cons(left, root, right) => $delay(stream_cons(root,
                                                      loop(stream_append(stream_append(
                                                        rest,
                                                        $delay(stream_cons(left , $delay(stream_nil()) )) ), //a stream of just left
                                                        $delay(stream_cons(right, $delay(stream_nil()) )) )  //a stream of just right
                                                      )
                                                      ))
        )
  in
    loop( $delay(stream_cons( t0, $delay(stream_nil()) )) )
  end




//
// G1-5: 10 points
//
// Given a list of elements xs0 and a predicate, the
// function [mylist0_group] returns a stream of lists
// xss such that xs0 = flatten(xss) and each list in xss
// is non-empty and consists of only elements that satisfy
// the predicate or those that do not.
// For instance, given the following list xs0
//           [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
// and the predicate that tests if a number is a prime,
// the return stream xss should consist of:
//     [[0, 1], [2, 3], [4], [5], [6], [7], [8, 9]]


// note: we don't want
//    [ [] ,  [0, 1], [2, 3], [4], [5], [6], [7], [8, 9]]

extern fun {a:t@ype} mylist0_group(xs: list0(a), test: (a) -<cloref1> bool): stream(list0(a))

implement  {a:t@ype} mylist0_group(xs: list0(a), test: (a) -<cloref1> bool): stream(list0(a)) =
  //track current state, partial group, unprocessed list
  let
    fun loop(state:bool, partial_group:list0(a), rest: list0(a)): stream(list0(a)) =
      case+ rest of
        | list0_nil() => $delay(stream_cons(partial_group, $delay(stream_nil()) ))
        | list0_cons(head, tail) =>
          if test(head) = state
          then loop(state, partial_group +  list0_cons(head, list0_nil()), tail)
          else $delay(stream_cons(partial_group, loop(~state, list0_nil() ,rest) ))
  in
    case+ xs of
      | list0_nil() => $delay(stream_nil())
      | list0_cons(head, tail) => loop(test(head),  list0_nil() ,xs)
  end



// good luck on the final!