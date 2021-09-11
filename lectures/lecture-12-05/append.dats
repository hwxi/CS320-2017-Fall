
fun
append(xs, ys) =
(
case+ xs of
| list0_nil() => ys
| list0_cons(x, xs) =>
  append(xs, list0_cons(x, ys))
)

(*

T(0, n) = 1
T(m, n) = T(m-1, n) + 1

T(m, n) = O(m) // linear time wrt. the size of its first argument

*)
