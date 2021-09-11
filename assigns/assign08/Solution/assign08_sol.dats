(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign08_sol_dats
// How to compile:
// myatscc assign08_sol.dats
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

#include "./../assign08.dats"

(* ****** ****** *)
//
#define EPISILON 1E-8
//
(* ****** ****** *)
//
implement
{a}(*tmp*)
stream_tabulate(fopr) =
(fix
 tablt
 (
 i :int
 ) : stream(a) =<cloref1>
 $delay(stream_cons(fopr(i), tablt(i+1)))
)(0) // end of [stream_tabulate]
//
implement
{res}{a}(*tmp*)
stream_scan(xs, r0, fopr) =
(fix
 scan
 (
 xs: stream(a), r0: res
 ) : stream(res) =<cloref1> $delay
 (
   case+ !xs of
   | stream_nil() =>
     stream_nil()
   | stream_cons(x, xs) =>
     let
       val r1 = fopr(r0, x) in stream_cons(r0, scan(xs, r1))
     end // end of [stream_cons]
 )
)(xs, r0) // end of [stream_scan]
//
(* ****** ****** *)
//
extern
fun
fpath_get_words_stringlst
  (fpath: string): list0(string)
//
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
list0_mapjoin<word>
(fpath_get_lines_stringlst(fpath), lam(line) => line2words(line))

end // end of [local]

(* ****** ****** *)

implement
fpath_get_nwords_stringlst
  (fpath) = let
//
typedef word = string
typedef nword = $tup(int, string)
//
val () =
println! ("fpath_get_words(bef)")
val ws = fpath_get_words_stringlst(fpath)
val () =
println! ("fpath_get_words(aft)")
//
val () = println! ("|ws| = ", length(ws))
val ws = list0_mergesort<word>(ws, lam(x, y) => compare(x, y))
val () = println! ("|ws| = ", length(ws))
//
fun
myauxlst1
(
ws: list0(word)
) : stream(nword) = 
(
case+ ws of
| list0_nil() =>
  stream_make_nil()
| list0_cons(w0, ws) =>
  myauxlst2(ws, w0, 1(*n*))
)
and
myauxlst2
(
ws: list0(word), w0: word, n: int
) : stream(nword) =
(
case+ ws of
| list0_nil() =>
  stream_make_cons
    ($tup(n, w0), myauxlst1(ws))
  // stream_make_cons
| list0_cons(w1, ws) =>
  if w1 <= w0
    then myauxlst2(ws, w1, n+1)
    else
    $delay
    (
    stream_cons($tup(n, w0), myauxlst2(ws, w1, 1))
    ) (* else *)
  // end of [if]
)
//
val nws = stream2list0(myauxlst1(ws))
//
in
//
list0_mergesort<nword>
( nws
, lam(x, y) =>
  let
    val
    sgn = compare(x.0, y.0)
  in
    if sgn != 0 then ~sgn else compare(x.1, y.1)
  end // end of [lam]
)
//
end // end of [fpath_get_nwords_stringlst]

(* ****** ****** *)
//
// HX:
// [pi_stream] returns a stream
// consisting of all of the partial
// sums of: 1 - 1/3 + 1/5 - 1/7 + 1/9 - ...
//
extern
fun
pi_stream
(
// argless
) : stream(double)
//
implement
pi_stream() =
stream_scan<double><double>
(
stream_tabulate<double>
( lam(n) => (1.0-2*(n%2)) / (2*n+1))
, 0.0(*r0*), lam(r, x) => r+x)
//
(* ****** ****** *)
//
(*
#define
FPATH "./assign08_sol.dats"
*)
#define
FPATH "./../../../mydata/MobyDick.txt"
//
(* ****** ****** *)

implement
main0((*void*)) =
{
//
val N = 1000000
//
val xs = pi_stream()
val () = println! ("PI = ", 4 * xs[N])
//
val nws = fpath_get_nwords_stringlst(FPATH)
val ((*void*)) = println! ("|nws| = ", length(nws))
val ((*void*)) =
  list0_foreach
  (list0_take_exn(nws, 100), lam(nw) => println! (nw.1, "(", nw.0, ")"))
//
} (* end of [main] *)

(* ****** ****** *)

(* end of [assign08_sol.dats] *)
