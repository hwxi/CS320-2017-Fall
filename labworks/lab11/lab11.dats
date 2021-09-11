#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

#include "share/atspre_staload_libats_ML.hats"

#include "./../../libraries/class.dats"
#include "./../../libraries/myclass.dats"

#staload DFS = "./../../lectures/lecture-11-07/depth-first-enum.dats"

//we always need this to make c happy
implement main0() = ()

//  Lab doc available at https://docs.google.com/document/d/1PSr_COYiilM-3e4cDqXeYiJvOioU7mTjsRxYuFQjPm4/edit?usp=sharing


fun staircase_count(i:int):int =
  if i < 0
  then 0
  else if i = 0
       then 1
       else staircase_count(i - 1) + staircase_count(i - 3)


extern fun isLetter(c:char, pos:int): bool