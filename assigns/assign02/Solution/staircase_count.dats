(*
//
// LG: 10 points
//
A staircase has n steps. At every step you may choose to go up one
step or skip two steps and go up three steps. Write a tail-recursive
function that gives the number of ways you can walk up the staircase.
//
Note that you get only 5 points if your implementation is functionally
correct but not tail-recursive.
//
*)


implement staircase_count(n:int):int =
  let
    // need to hold on to the current solution (d) and the last three solutuions (a, b, c)
    fun loop(count:int, a:int, b:int, c:int, d:int) =
      if count = 0
      then d
      else loop(count-1, b, c, d, b + d)
  in
    loop(n, 0, 0, 0, 1)
  end

