(* ****** ****** *)
//
// HX:
//
// How to test:
// ./assign02-2_sol_dats
// How to compile:
// myatscc assign02-2_sol.dats
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//#include "share/atspre_staload_libats_ML.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"

staload M = "libats/libc/SATS/math.sats"
staload _ = "libats/libc/DATS/math.dats"

//
(* ****** ****** *)

#include "./../assign02-2.dats"

(* ****** ****** *)

implement myfile_mean(myfile: myfile): double =
  let
    val (numbers, sum) = myfile_foldleft<(double,double)>(myfile,
                                                          (0.0, 0.0),
                                                          lam(p, line) =>
                                                            if line = ""
                                                            then p
                                                            else (p.0 + 1.0, (p.1 + g0string2float_double(line) ))
                                                          )
  in
    sum / numbers
  end
  

// the algorithm is described in more detail here: https://en.wikipedia.org/wiki/Standard_deviation#Rapid_calculation_methods
implement myfile_stdev(myfile: myfile): double =
  let
    val (numbers, sum, squares) = myfile_foldleft<(double,double,double)>(
      myfile,
      (0.0, 0.0, 0.0),
      lam(res, line) =>
        if line = ""
        then res
        else let
               val (temp_num, temp_sum, temp_squares) = res
               val new_num = g0string2float_double(line)
             in
               (temp_num + 1.0,
               temp_sum + new_num,
               temp_squares + new_num*new_num)
             end
      )
  in
    $M.sqrt(numbers*squares - sum*sum) / numbers
  end


#ifdef
MAIN_NONE
#then
#else

implement
main0() = () where
{
//
val
myfile = myfile_open("./Makefile")
val _0_ =
myfile_foldleft
(myfile, 0, lam(_, line) => let val () = println!(line) in 0 end)
//
val
myfile = myfile_open("./DATA/numbers.txt")
val _0_ =
myfile_foldleft
(myfile, 0, lam(_, line) => let val () = println!(line) in 0 end)
//
val
myfile = myfile_open("./DATA/numbers.txt")
val tally =
myfile_foldleft<int>(myfile, 0, lam(res, line) => res + g0string2int(line))
//
val ((*void*)) = println! ("tally = ", tally)
//

val myfile = myfile_open("./DATA/numbers.txt")
val () = println! ("myfile_mean(myfile) =  ", myfile_mean(myfile))

val myfile = myfile_open("./DATA/numbers.txt")
val () = println! ("myfile_stdev(myfile) = ", myfile_stdev(myfile))

} (* end of [main0] *)

#endif // end of #ifdef(MAIN_NONE)

(* ****** ****** *)

(* end of [assign02-2_sol.dats] *)
