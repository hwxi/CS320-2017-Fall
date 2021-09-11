#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

//#include "share/atspre_staload_libats_ML.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"

//we always need this to make c happy
implement main0() = ()

fun repeat_twice(f: int -> int): int -<cloref1> int = lam n => f(f(n))