(* ****** ****** *)
(*
##myatsccdef=\
patsopt -d $1 | \
atscc2php -i - > $fname($1)_$fname_ext($1).php
*)
(* ****** ****** *)
//
#define
LIBATSCC2PHP_targetloc
"$PATSHOME\
/contrib/libatscc2php/ATS2-0.3.2"
//
(* ****** ****** *)

#define
ATS_EXTERN_PREFIX "multable_"
#define
ATS_STATIC_PREFIX "_multable_"

(* ****** ****** *)
//
#include
"{$LIBATSCC2PHP}/staloadall.hats"
//
(* ****** ****** *)

#define ATS_DYNLOADFLAG 0

(* ****** ****** *)

extern fun{} html(): void
extern fun{} head(): void
extern fun{} body(): void
extern fun{} multable(): void

(* ****** ****** *)

implement
html<>() =
{
//
val () = gprintln! ("<html>")
val () = head<>()
val () = body<>()
val () = gprintln! ("</html>")
//
} (* end of [html] *)

(* ****** ****** *)

implement
head<>() =
{
val () =
gprintln! ("<head>")
//
val () =
gprintln!
("<meta charset=\"utf-8\">")
//
val () =
gprintln! ("</head>")
//
} (* end of [head] *)

(* ****** ****** *)

implement
body<>() =
{
val () =
gprintln! ("<body>")
//
val () =
gprintln!
("\
<center>
<h1>Multiplication Table</h1>
</center>
")
val () = multable<>()
//
val () =
gprintln! ("</body>")
//
} (* end of [body] *)

(* ****** ****** *)

fun{}
auxrow
(
 i: int, n: int
) : void =
if i <= n then
(
gprint("<td>");
gprint!(i, " x ", n, " = ", i*n);
gprint("</td>\n"); auxrow(i+1, n);
)

(* ****** ****** *)

fun{}
auxrows
(n: int): void =
if n > 0 then
(
//
auxrows(n-1);
//
if
(n%2 = 0) then
gprint("<tr style=\"background:#c0c0c0\">\n");
if
(n%2 > 0) then
gprint("<tr style=\"background:#ffffff\">\n");
//
auxrow(1, n); gprint("</tr>\n")
//
) (* end of [auxrows] *)

(* ****** ****** *)

implement
multable<>() =
{
val () =
gprintln! ("<center>")
//
val () =
gprintln! ("<table>")
val () = auxrows( 9 )
val () =
gprintln! ("</table>")
//
val () =
gprintln! ("</center>")
}

(* ****** ****** *)
//
extern
fun
multable_main
  (): string = "mac#"
//
implement
multable_main
  ((*void*)) = let
//
val out =
PHParref_nil
  {string}((*void*))
//
implement
gprint_string<>
  (str) = PHParref_extend(out, str)
//
implement
gprint_int<>
  (int) = gprint_string<>(strval(int))
implement
gprint_newline<>
  ((*void*)) = PHParref_extend(out, "\n")
//
val () =
gprintln!
("<!DOCTYPE html>")
//
val () = html()
//
in
  PHParref_join(out)
end // [multable_main]
//
(* ****** ****** *)

(* end of [multable.dats] *)
