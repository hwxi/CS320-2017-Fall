(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign05_sol_dats
// How to compile:
// myatscc assign05_sol.dats
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share\
/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)
//
#include
"./../../../libraries/class.dats"
#include
"./../../../libraries/myclass.dats"
//
(* ****** ****** *)

#include "./../assign05.dats"

(* ****** ****** *)

implement
{a}(*tmp*)
mylist2list0
  (xs) = let
//
fun
aux
(xs: mylist(a)): list0(a) =
(
case+ xs of
| mylist_nil() => list0_nil()
| mylist_cons(x, xs) => list0_cons(x, aux(xs))
| mylist_snoc(xs, x) => list0_extend(aux(xs), x)
| mylist_append(xs, ys) => list0_append(aux(xs), aux(ys))
| mylist_reverse(xs) => list0_reverse(aux(xs))
)
//
in
  aux(xs)
end // end of mylist2list0
//
(* ****** ****** *)
//
extern
fun
{a:t@ype}
mylist_length(xs: mylist(a)): int
//
implement
{a}(*tmp*)
mylist_length(xs) = let
//
fun
aux
(xs: mylist(a), res: int): int =
(
case+ xs of
| mylist_nil() => res
| mylist_cons(x, xs) => aux(xs, res+1)
| mylist_snoc(xs, x) => aux(xs, res+1)
| mylist_append(xs, ys) => aux(ys, aux(xs, res))
| mylist_reverse(xs) => aux( xs, res )
)
//
in
  aux(xs, 0)
end // end of [mylist_length]
//
(* ****** ****** *)

implement
{a}(*tmp*)
mylist_get_at(xs, i) = let
//
exception Over of (int)
//
fun
aux
(xs: mylist(a), i: int): a =
(
case xs of
| mylist_nil() =>
  $raise(Over(i))
| mylist_cons(x, xs) =>
  if i <= 0 then x else aux(xs, i-1)
| mylist_snoc(xs, x) => (
    try
    aux(xs, i)
    with ~Over(i) =>
    if i <= 0 then x else $raise(Over(i-1))
  )
| mylist_append(xs, ys) =>
  (try aux(xs, i) with ~Over(i) => aux(ys, i))
| mylist_reverse(xs) => aux(xs, mylist_length<a>(xs)-1-i)
)
//
in
//
  try aux(xs, i) with ~Over(i) => $raise MylistSubscriptExn()
//
end // end of [mylist_get_at]

(* ****** ****** *)

implement
next_permutation_opt
  (xs) =
(
case+ xs of
| list0_nil() => None0()
| list0_cons(x0, xs) =>
  (
    case+
    next_permutation_opt(xs)
    of (* case+ *)
    | None0() => let
        val xs =
        list0_reverse(xs)
        val i0 =
        list0_find_index(xs, lam(x1) => x0 < x1)
      in
        if
        (i0 >= 0)
        then
        Some0
        (list0_cons
         (
           list0_get_at_exn(xs, i0)
         , list0_fset_at_exn(xs, i0, x0)
         )
        )
        else None0()
      end // end of [None0]
    | Some0(ys) => Some0(list0_cons(x0, ys))
  )
)

(* ****** ****** *)

implement
next_permutation_exn
  (xs) =
(
case+ xs of
| list0_nil() =>
  $raise LastPermExn()
| list0_cons(x0, xs) =>
  (
    try
      list0_cons
      (x0, next_permutation_exn(xs))
    with ~LastPermExn() => let
      val xs =
      list0_reverse(xs)
      val i0 =
      list0_find_index(xs, lam(x1) => x0 < x1)
    in
      if
      (i0 >= 0)
      then 
      (list0_cons
       (
         list0_get_at_exn(xs, i0)
       , list0_fset_at_exn(xs, i0, x0)
       )
      )
      else $raise LastPermExn()
    end // end of [let] // end of [with]
  )
)

(* ****** ****** *)

local

typedef word = string

fun
line2words
(line: string): list0(word) = let
//
fun
auxlst
(line: list0(char)): list0(word) = let
//
val line =
list0_skip_until(line, lam(c) => isalpha(c))
val word =
list0_take_until(line, lam(c) => ~isalpha(c))
val line = list0_drop_exn(line, length(word))
//
in
  if isneqz(word)
    then
    (
      list0_cons(string_implode(word), auxlst(line))
    )
    else list0_nil()
  // end of [if]
end // end of [auxlst]
//
in
  auxlst(string_explode(line))
end // end of [line2words]

in

implement
fpath_get_words_stringlst(fpath) =
list0_mapjoin<word>(fpath_get_lines_stringlst(fpath), lam(line) => line2words(line))

end // end of [local]

(* ****** ****** *)

implement
main0() = () where
{
//
val xs0 = mylist_nil()
val xs1 = mylist_cons(1, xs0)
val xs2 = mylist_snoc(xs1, 2)
val xs3 = mylist_append(xs2, xs2)
val xs4 = mylist_reverse(xs3)
//
val ys0 = mylist2list0<int>(xs4)
val ((*void*)) = println! ("ys0 = ", ys0)
//
val ((*void*)) = println! ("xs4[0] = ", mylist_get_at<int>(xs4, 0))
val ((*void*)) = println! ("xs4[1] = ", mylist_get_at<int>(xs4, 1))
val ((*void*)) = println! ("xs4[2] = ", mylist_get_at<int>(xs4, 2))
val ((*void*)) = println! ("xs4[3] = ", mylist_get_at<int>(xs4, 3))
//
val xs =
g0ofg1($list{int}(1, 2, 5, 4, 3))
val () = println! ("xs0 = ", xs)
val-Some0(xs) = next_permutation_opt(xs)
val () = println! ("xs1 = ", xs)
val-Some0(xs) = next_permutation_opt(xs)
val () = println! ("xs2 = ", xs)
val-Some0(xs) = next_permutation_opt(xs)
val () = println! ("xs3 = ", xs)
val-Some0(xs) = next_permutation_opt(xs)
val () = println! ("xs4 = ", xs)
val-Some0(xs) = next_permutation_opt(xs)
val () = println! ("xs5 = ", xs)
val-Some0(xs) = next_permutation_opt(xs)
val () = println! ("xs6 = ", xs)
val-Some0(xs) = next_permutation_opt(xs)
val () = println! ("xs7 = ", xs)
//
val
words =
fpath_get_words_stringlst("./assign05_sol.dats")
//
val ((*void*)) = println! ("./assign05_sol.dats: ", words)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [assign05_sol.dats] *)
