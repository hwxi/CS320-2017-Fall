

assume:
split(xs): O(|xs|)
merge(xs, ys): O(|xs|+|ys|)

fun
mergesort(xs) = res
where
{
  val (xs1, xs2) = split(xs)
  val ys1 = mergesort(xs1)
  val ys2 = mergesort(xs2)
  val res = merge(ys1, ys2)
}

(*

T(n) = 2*T(n/2) + O(n)
T(n) = O(n*log(n)) // log-linear

*)

(*

If it is 3-way, the same:

T(n) = 3*T(n/3) + n // O(n*log(n))

*)
