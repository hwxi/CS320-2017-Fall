
fun
fib(n) =
if n >= 2 then fib(n-1) + fib(n-2) else n

(*

T(0) = 1
T(n) = T(n-1) + T(n-2) + 1

T(n) is exponential time

*)