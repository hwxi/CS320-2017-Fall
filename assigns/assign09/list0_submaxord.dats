(* ****** ****** *)
//
// Given a list xs of integers, the function
// [list0_submaxord] returns the longest leftmost
// subsequence of xs that is ordered.
//
// If xs = (1, 3, 2, 4), then the result is (1, 3, 4)
// If xs = (~1, 3, 2, 2, 4), then the result is (~1, 2, 2, 4)
//
// If xs =
// (4, 1, 2, 1, 3, 8, 9, 5, 6, 7, 1, 1, 1, 1, 1), then the result is (1, 1, 1, 1, 1, 1, 1)
//
// If xs =
// (4, 1, 2, 1, 3, 8, 9, 5, 6, 7, 8, 1, 1, 1, 1, 1), then the result is (1, 2, 3, 5, 6, 7, 8)
//
extern
fun
list0_submaxord
(xs: list0(int)): list0(int)
//
(* ****** ****** *)
//
// HX: 20 points
//
// Please give an implementation of list0_submaxord that
// is O(n^2)-time, where n is the length of the given list.
//
// Note that only 10 points are given to a solution that
// is polynomial-time but not O(n^2)-time.
//
(* ****** ****** *)

(* end of [list0_submaxord.dats] *)
