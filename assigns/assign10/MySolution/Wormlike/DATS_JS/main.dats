(* ****** ****** *)
(*
// HX:
// How to compile:
##myatsccdef=\
patsopt --dynamic $1 | \
atscc2js --output $fname($1)_$fname_ext($1).js -i -
//
*)
(* ****** ****** *)
//
#define
ATS_MAINATSFLAG 1
#define
ATS_DYNLOADNAME
"Wormlike_initize"
//
#define
ATS_STATIC_PREFIX "Wormlike_"
//
(* ****** ****** *)

local
#include "./theWorm.dats"
in (* nothing *) end

(* ****** ****** *)

local
#include "./theBoard.dats"
in (* nothing *) end

(* ****** ****** *)

local
#include "./theReset.dats"
in (* nothing *) end

(* ****** ****** *)

local
#include "./theControl.dats"
in (* nothing *) end

(* ****** ****** *)

local
#include "./theSearch.dats"
in (* nothing *) end

(* ****** ****** *)

%{$
//
Wormlike_initize(/*void*/);
//
%} // end of [%{$]

(* ****** ****** *)

(* end of [main.dats] *)
