(*
extern
fun
isTriangle(x: int, y: int, z: int): bool
*)
implement
isTriangle(x, y, z) =
(x+y > z) && (y+z > x) && (z+x > y)

