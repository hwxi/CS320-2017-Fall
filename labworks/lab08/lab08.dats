#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

#include "share/atspre_staload_libats_ML.hats"

#include "./../../libraries/class.dats"
#include "./../../libraries/myclass.dats"

//we always need this to make c happy
implement main0() = ()

// definition of continuation from from crash into ats: http://ats-lang.sourceforge.net/DOCUMENT/ATS2FUNCRASH/HTML/c1453.html#AEN1495
typedef cont1(res:t@ype) = (res) -<cloref1> void
//                       = cfun(res, void)  // same as

typedef cont0()  = cfun(void)


//(from crash into ats: http://ats-lang.sourceforge.net/DOCUMENT/ATS2FUNCRASH/HTML/c1453.html#AEN1507)
fun k_fibo(n : int, next_time : cont1(int)) : void =
  if (n >= 2)
  then k_fibo ( n-1, lam(r1) => k_fibo(n-2, lam(r2) => next_time(r1+r2)))
  else next_time(n)