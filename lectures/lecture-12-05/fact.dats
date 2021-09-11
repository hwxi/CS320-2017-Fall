
fun fact(n:int): int =
  if n > 0 then n * fact(n-1) else 1

(*

Set up
the recurrence equation:
T(0) = 1
T(n) = T(n-1) + 1 // n >= 1

Next solve the equation
T(n) = O(n) // fact is linear time

*)
