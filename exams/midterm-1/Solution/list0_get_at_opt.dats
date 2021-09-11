(* ****** ****** *)
//
#include "./../midterm-1.dats"
//
(* ****** ****** *)
//
implement
{a}(*tmp*)
list0_get_at_opt
  (xs, i) = let
//
exception Found of (a)
//
in

try

let val _ =
list0_foldleft<int><a>
( xs, 0
, lam(res, x) =>
  if i = res then $raise Found(x) else res+1
)
in
  None0((*void*))
end // end of [let]

with ~Found(x) => Some0(x)

end // end of [list0_get_at_opt]

(* ****** ****** *)

(* end of [list0_get_at_opt.dats] *)
