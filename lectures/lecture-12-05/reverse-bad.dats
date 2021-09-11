
fun
reverse(xs) =
(
case+ xs of
| list0_nil() =>
  list0_nil()
| list0_cons(x, xs) =>
  append(reverse(xs), list0_sing(x))
)

(*

T(0) = 1
T(n) = T(n-1) + n // n >= 1

T(n) = (n(n+1)) / 2 // O(n^2) // quadratic time

*)
