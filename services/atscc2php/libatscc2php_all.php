
<?php
/*
** Time of Generation:
** Fri Sep 15 15:38:55 EDT 2017
*/
?>
<?php

/*
******
*
* HX-2014-08:
* for PHP code
* translated from ATS
*
******
*/

/*
******
* beg of [basics_cats.php]
******
*/

/* ****** ****** */

function
ATSCKiseqz($x) { return ($x === 0); }
function
ATSCKisneqz($x) { return ($x !== 0); }

/* ****** ****** */

function
ATSCKptrisnull($xs) { return ($xs === NULL) ; }
function
ATSCKptriscons($xs) { return ($xs !== NULL) ; }

/* ****** ****** */
//
function
ATSCKpat_int($tmp, $given) { return ($tmp === $given) ; }
function
ATSCKpat_bool($tmp, $given) { return ($tmp === $given) ; }
function
ATSCKpat_char($tmp, $given) { return ($tmp === $given) ; }
function
ATSCKpat_float($tmp, $given) { return ($tmp === $given) ; }
//
function
ATSCKpat_string
  ($tmp, $given) { return (strcmp($tmp, $given) === 0) ; }
//
/* ****** ****** */

function
ATSCKpat_con0($con, $tag) { return ($con === $tag) ; }
function
ATSCKpat_con1($con, $tag) { return ($con[0] === $tag) ; }

/* ****** ****** */
//
function
ATSINScaseof_fail($errmsg)
{
  fprintf(STDERR, "ATSINScaseof_fail:%s", $errmsg); exit(1);
  return;
}
//
function
ATSINSdeadcode_fail()
  { fprintf(STDERR, "ATSINSdeadcode_fail"); exit(1); return; }
//
/* ****** ****** */

function
ATSPMVempty() { return; }

/* ****** ****** */

function
ATSPMVlazyval
  ($thunk)
{
  return array(0, $thunk);
}

/* ****** ****** */

function
ATSPMVlazyval_eval
  (&$lazyval)
{
//
  $flag = $lazyval[0];
//
  if($flag===0)
  {
    $lazyval[0] = 1;
    $mythunk = $lazyval[1];
    $lazyval[1] = $mythunk[0]($mythunk);
  } else {
    $lazyval[0] = $flag + 1;
  } // end of [if]
//
  return ($lazyval[1]);
//
} // end of [ATSPMVlazyval_eval]

/* ****** ****** */
//
function
ATSPMVllazyval($thunk){ return $thunk; }
//
/* ****** ****** */
//
function
ATSPMVllazyval_eval($llazyval)
  { return $llazyval[0]($llazyval, TRUE); }
function
atspre_lazy_vt_free($llazyval)
  { return $llazyval[0]($llazyval, FALSE); }
//
/* ****** ****** */

function
ats2phppre_echo_obj($x) { echo($x); return; }

/* ****** ****** */
/*
//
function
ats2phppre_echo0_obj
  () { return; }
function
ats2phppre_echo1_obj
  ($x1) { echo $x1; return; }
function
ats2phppre_echo2_obj
  ($x1, $x2) { echo $x1, $x2; return; }
//
function
ats2phppre_echo3_obj
  ($x1, $x2, $x3)
  { echo $x1, $x2, $x3; return; }
function
ats2phppre_echo4_obj
  ($x1, $x2, $x3, $x4)
  { echo $x1, $x2, $x3, $x4; return; }
function
ats2phppre_echo5_obj
  ($x1, $x2, $x3, $x4, $x5)
  { echo $x1, $x2, $x3, $x4, $x5; return; }
function
ats2phppre_echo6_obj
  ($x1, $x2, $x3, $x4, $x5, $x6)
  { echo $x1, $x2, $x3, $x4, $x5, $x6; return; }
//
function
ats2phppre_echo7_obj
  ($x1, $x2, $x3, $x4, $x5, $x6, $x7)
  { echo $x1, $x2, $x3, $x4, $x5, $x6, $x7; return; }
function
ats2phppre_echo8_obj
  ($x1, $x2, $x3, $x4, $x5, $x6, $x7, $x8)
  { echo $x1, $x2, $x3, $x4, $x5, $x6, $x7, $x8; return; }
//
*/
/* ****** ****** */

function
ats2phppre_print_newline()
  { ats2phppre_fprint_newline(STDOUT); }
function
ats2phppre_prerr_newline()
  { ats2phppre_fprint_newline(STDERR); }
function
ats2phppre_fprint_newline($out)
  { fprintf($out, "\n"); fflush($out); return; }

/* ****** ****** */

function
ats2phppre_intval($x) { return intval($x); }
function
ats2phppre_floatval($x) { return floatval($x); }

/* ****** ****** */

function
ats2phppre_lazy2cloref($lazyval) { return $lazyval[1]; }

/* ****** ****** */
//
function
ats2phppre_assert_bool0($tfv) { if (!$tfv) exit("**EXIT**"); return; }
function
ats2phppre_assert_bool1($tfv) { if (!$tfv) exit("**EXIT**"); return; }
//
/* ****** ****** */
//
function
ats2phppre_assert_errmsg_bool0($tfv, $errmsg)
{
  if (!$tfv) { fprintf(STDERR, "%s", $errmsg); exit(errmsg); }; return;
}
function
ats2phppre_assert_errmsg_bool1($tfv, $errmsg)
{
  if (!$tfv) { fprintf(STDERR, "%s", $errmsg); exit(errmsg); }; return;
}
//
/* ****** ****** */

/* end of [basics_cats.php] */

?>
<?php

/*
******
*
* HX-2014-08:
* for PHP code
* translated from ATS
*
******
*/

/*
******
* beg of [integer_cats.php]
******
*/

/* ****** ****** */

function
ats2phppre_abs_int0($x) { return abs($x); }

/* ****** ****** */

function
ats2phppre_neg_int0($x) { return ( -$x ); }
function
ats2phppre_neg_int1($x) { return ( -$x ); }

/* ****** ****** */

function
ats2phppre_succ_int0($x) { return ($x + 1); }
function
ats2phppre_pred_int0($x) { return ($x - 1); }

/* ****** ****** */

function
ats2phppre_add_int0_int0($x, $y) { return ($x + $y); }
function
ats2phppre_sub_int0_int0($x, $y) { return ($x - $y); }
function
ats2phppre_mul_int0_int0($x, $y) { return ($x * $y); }
function
ats2phppre_div_int0_int0($x, $y) { return intval($x / $y); }
function
ats2phppre_mod_int0_int0($x, $y) { return ($x % $y); }

/* ****** ****** */

function
ats2phppre_add_int1_int1($x, $y) { return ($x + $y); }
function
ats2phppre_sub_int1_int1($x, $y) { return ($x - $y); }
function
ats2phppre_mul_int1_int1($x, $y) { return ($x * $y); }
function
ats2phppre_div_int1_int1($x, $y) { return intval($x / $y); }

/* ****** ****** */
//
function
ats2phppre_mod_int1_int1($x, $y) { return ($x % $y); }
function
ats2phppre_nmod_int1_int1($x, $y) { return ($x % $y); }
//
/* ****** ****** */

function
ats2phppre_lt_int0_int0($x, $y) { return ($x < $y); }
function
ats2phppre_lte_int0_int0($x, $y) { return ($x <= $y); }
function
ats2phppre_gt_int0_int0($x, $y) { return ($x > $y); }
function
ats2phppre_gte_int0_int0($x, $y) { return ($x >= $y); }
function
ats2phppre_eq_int0_int0($x, $y) { return ($x === $y); }
function
ats2phppre_neq_int0_int0($x, $y) { return ($x !== $y); }

/* ****** ****** */

function
ats2phppre_lt_int1_int1($x, $y) { return ($x < $y); }
function
ats2phppre_lte_int1_int1($x, $y) { return ($x <= $y); }
function
ats2phppre_gt_int1_int1($x, $y) { return ($x > $y); }
function
ats2phppre_gte_int1_int1($x, $y) { return ($x >= $y); }
function
ats2phppre_eq_int1_int1($x, $y) { return ($x === $y); }
function
ats2phppre_neq_int1_int1($x, $y) { return ($x !== $y); }

/* ****** ****** */
//
function
ats2phppre_max_int0_int0($x, $y) { return max($x, $y); }
function
ats2phppre_max_int1_int1($x, $y) { return max($x, $y); }
//
function
ats2phppre_min_int0_int0($x, $y) { return min($x, $y); }
function
ats2phppre_min_int1_int1($x, $y) { return min($x, $y); }
//
/* ****** ****** */

/* end of [integer_cats.php] */

?>
<?php

/*
******
*
* HX-2014-11:
* for PHP code
* translated from ATS
*
******
*/

/*
******
* beg of [bool_cats.php]
******
*/

/* ****** ****** */
//
function
ats2phppre_boolize($x) { return ($x ? true : false); }
function
ats2phppre_boolize_vt($x) { return ($x ? true : false); }
//
/* ****** ****** */

function
ats2phppre_neg_bool0($x) { return ($x ? false : true); }
function
ats2phppre_neg_bool1($x) { return ($x ? false : true); }

/* ****** ****** */

function
ats2phppre_add_bool0_bool0($x, $y) { return ($x || $y); }
function
ats2phppre_add_bool0_bool1($x, $y) { return ($x || $y); }
function
ats2phppre_add_bool1_bool0($x, $y) { return ($x || $y); }
function
ats2phppre_add_bool1_bool1($x, $y) { return ($x || $y); }

/* ****** ****** */

function
ats2phppre_mul_bool0_bool0($x, $y) { return ($x && $y); }
function
ats2phppre_mul_bool0_bool1($x, $y) { return ($x && $y); }
function
ats2phppre_mul_bool1_bool0($x, $y) { return ($x && $y); }
function
ats2phppre_mul_bool1_bool1($x, $y) { return ($x && $y); }

/* ****** ****** */
//
function
ats2phppre_eq_bool0_bool0($x, $y) { return ($x === $y); }
function
ats2phppre_eq_bool1_bool1($x, $y) { return ($x === $y); }
//
function
ats2phppre_neq_bool0_bool0($x, $y) { return ($x !== $y); }
function
ats2phppre_neq_bool1_bool1($x, $y) { return ($x !== $y); }
//
/* ****** ****** */

function
ats2phppre_bool2int0($x) { return ($x ? 1 : 0); }
function
ats2phppre_bool2int1($x) { return ($x ? 1 : 0); }

/* ****** ****** */

function
ats2phppre_int2bool20($x) { return ($x !== 0 ? true : false); }

/* ****** ****** */

/* end of [bool_cats.php] */

?>
<?php

/*
******
*
* HX-2014-08:
* for PHP code
* translated from ATS
*
******
*/

/*
******
* beg of [float_cats.php]
******
*/

/* ****** ****** */
//
function
ats2phppre_double2int($x) { return intval($x); }
function
ats2phppre_int_of_double($x) { return intval($x); }
//
/* ****** ****** */
//
function
ats2phppre_int2double($x) { return floatval($x); }
function
ats2phppre_double_of_int($x) { return floatval($x); }
//
/* ****** ****** */

function
ats2phppre_abs_double($x) { return abs($x); }
function
ats2phppre_neg_double($x) { return ( -$x ); }

/* ****** ****** */

function
ats2phppre_succ_double($x) { return ($x + 1); }
function
ats2phppre_pred_double($x) { return ($x - 1); }

/* ****** ****** */

function
ats2phppre_sqrt_double($x) { return sqrt($x); }
function
ats2phppre_cbrt_double($x) { return pow($x, 1/3); }

/* ****** ****** */

function
ats2phppre_add_double_int($x, $y) { return ($x + $y); }
function
ats2phppre_sub_double_int($x, $y) { return ($x - $y); }
function
ats2phppre_mul_double_int($x, $y) { return ($x * $y); }
function
ats2phppre_div_double_int($x, $y) { return ($x / $y); }

/* ****** ****** */

function
ats2phppre_add_int_double($x, $y) { return ($x + $y); }
function
ats2phppre_sub_int_double($x, $y) { return ($x - $y); }
function
ats2phppre_mul_int_double($x, $y) { return ($x * $y); }
function
ats2phppre_div_int_double($x, $y) { return ($x / $y); }

/* ****** ****** */

function
ats2phppre_add_double_double($x, $y) { return ($x + $y); }
function
ats2phppre_sub_double_double($x, $y) { return ($x - $y); }
function
ats2phppre_mul_double_double($x, $y) { return ($x * $y); }
function
ats2phppre_div_double_double($x, $y) { return ($x / $y); }

/* ****** ****** */

function
ats2phppre_lt_double_double($x, $y) { return ($x < $y); }
function
ats2phppre_lte_double_double($x, $y) { return ($x <= $y); }
function
ats2phppre_gt_double_double($x, $y) { return ($x > $y); }
function
ats2phppre_gte_double_double($x, $y) { return ($x >= $y); }
function
ats2phppre_eq_double_double($x, $y) { return ($x === $y); }
function
ats2phppre_neq_double_double($x, $y) { return ($x !== $y); }

/* ****** ****** */
//
function
ats2phppre_max_double_double($x, $y) { return max($x, $y); }
function
ats2phppre_min_double_double($x, $y) { return min($x, $y); }
//
/* ****** ****** */

function
ats2phppre_exp_int($n) { return exp($n); }
function
ats2phppre_exp_double($n) { return exp($n); }

/* ****** ****** */

function
ats2phppre_log_double($p) { return log($p); }
function
ats2phppre_log_double_double($p, $base) { return log($p, $base); }

/* ****** ****** */

function
ats2phppre_pow_double_int($base, $n) { return pow($base, $n); }
function
ats2phppre_pow_double_double($base, $n) { return pow($base, $n); }

/* ****** ****** */

/* end of [float_cats.php] */

?>
<?php

/*
******
*
* HX-2014-08:
* for PHP code
* translated from ATS
*
******
*/

/*
******
* beg of [string_cats.php]
******
*/

/* ****** ****** */
//
function
ats2phppre_strval
  ($x) { return strval($x); }
//
/* ****** ****** */
//
function
ats2phppre_strlen
  ($x) { return strlen($x); }
function
ats2phppre_string_length
  ($x) { return strlen($x); }
//
/* ****** ****** */

function
ats2phppre_strcmp
  ($x1, $x2)
{
  return strcmp($x1, $x2);
}
function
ats2phppre_strncmp
  ($x1, $x2, $n)
{
  return strncmp($x1, $x2, $n);
}

/* ****** ****** */

function
ats2phppre_lt_string_string
  ($x1, $x2)
{
  return (strcmp($x1, $x2) < 0) ;
}
function
ats2phppre_lte_string_string
  ($x1, $x2)
{
  return (strcmp($x1, $x2) <= 0) ;
}

/* ****** ****** */

function
ats2phppre_gt_string_string
  ($x1, $x2)
{
  return (strcmp($x1, $x2) > 0) ;
}
function
ats2phppre_gte_string_string
  ($x1, $x2)
{
  return (strcmp($x1, $x2) >= 0) ;
}

/* ****** ****** */

function
ats2phppre_eq_string_string
  ($x1, $x2)
{
  return (strcmp($x1, $x2) === 0) ;
}
function
ats2phppre_neq_string_string
  ($x1, $x2)
{
  return (strcmp($x1, $x2) !== 0) ;
}

/* ****** ****** */
//
function
compare_string_string
  ($x1, $x2)
{
  $sgn = strcmp($x1, $x2) ;
  return (($sgn < 0)? -1 : (($sgn > 0) ? 1 : 0));
}
//
/* ****** ****** */

function
ats2phppre_string_append
  ($x1, $x2) { return ($x1.$x2) ; }

/* ****** ****** */
//
function
ats2phppre_string_concat_2
  ($x1, $x2) { return ($x1.$x2) ; }
function
ats2phppre_string_concat_3
  ($x1, $x2, $x3)
  { return sprintf("%s%s%s", $x1, $x2, $x3) ; }
function
ats2phppre_string_concat_4
  ($x1, $x2, $x3, $x4)
  { return sprintf("%s%s%s%s", $x1, $x2, $x3, $x4) ; }
//
/* ****** ****** */

/* end of [string_cats.php] */

?>
<?php

/*
******
*
* HX-2014-08:
* for PHP code
* translated from ATS
*
******
*/

/*
******
* beg of [print_cats.php]
******
*/

/* ****** ****** */
//
function
ats2phppre_print_int($x)
  { fprintf(STDOUT, "%d", $x); return; }
function
ats2phppre_prerr_int($x)
  { fprintf(STDERR, "%d", $x); return; }
function
ats2phppre_fprint_int
  ($out, $x) { fprintf($out, "%d", $x); return; }
//
/* ****** ****** */
//
function
ats2phppre_print_bool($x)
{
  ats2phppre_fprint_bool(STDOUT, $x); return;
}
function
ats2phppre_prerr_bool($x)
{
  ats2phppre_fprint_bool(STDERR, $x); return;
}
function
ats2phppre_fprint_bool
  ($out, $x)
{
  if($x) {
    fprintf($out, "true"); return;
  } else {
    fprintf($out, "false"); return;
  } // end of [if]
}
//
/* ****** ****** */
//
function
ats2phppre_print_double($x)
  { fprintf(STDOUT, "%f", $x); return; }
function
ats2phppre_prerr_double($x)
  { fprintf(STDERR, "%f", $x); return; }
function
ats2phppre_fprint_double
  ($out, $x) { fprintf($out, "%f", $x); return; }
//
/* ****** ****** */
//
function
ats2phppre_print_string($x)
  { fprintf(STDOUT, "%s", $x); return ; }
function
ats2phppre_prerr_string($x)
  { fprintf(STDERR, "%s", $x); return ; }
function
ats2phppre_fprint_string
 ($out, $x) { fprintf($out, "%s", $x); return ; }
//
/* ****** ****** */
//
function
ats2phppre_print_obj($x) { print($x); return; }
function
ats2phppre_print_r_obj($x) { print_r($x); return; }
//
/* ****** ****** */

/* end of [print_cats.php] */

?>
<?php

/*
******
*
* HX-2014-09:
* for PHP code
* translated from ATS
*
******
*/

/*
******
* beg of [filebas_cats.php]
******
*/

/* ****** ****** */
//
/*
$ats2phppre_stdin = STDIN;
$ats2phppre_stdout = STDOUT;
$ats2phppre_stderr = STDERR;
*/
//
/* ****** ****** */

function
ats2phppre_fclose_1
  ($x) { return fclose($x); }

/* ****** ****** */

function
ats2phppre_unlink_1
  ($x) { return unlink($x); }

/* ****** ****** */

function
ats2phppre_fwrite_2
  ($x1, $x2) { return fwrite($x1, $x2); }
function
ats2phppre_fwrite_3
  ($x1, $x2, $x3) { return fwrite($x1, $x2, $x3); }

/* ****** ****** */

/* end of [filebas_cats.php] */

?>
<?php

/*
******
*
* HX-2014-08:
* for PHP code
* translated from ATS
*
******
*/

/*
******
* beg of [PHPref_cats.php]
******
*/

/* ****** ****** */

class
PHPref {
//
// HX: payload
//
   public $value ;
} /* end of [class] */

/* ****** ****** */
//
function
ats2phppre_PHPref_new
  ($x0)
{
  $res = new PHPref;
  $res->value = $x0; return $res;
}
function
ats2phppre_PHPref_make_elt
  ($x0)
  { return PHPref_new($x0); }
//
/* ****** ****** */
//
function
ats2phppre_PHPref_get_elt
  ($A)
  { return $A->value ; }
//
function
ats2phppre_PHPref_set_elt
  ($A, $x)
  { $A->value = $x; return ; }
//
/* ****** ****** */

/* end of [PHPref_cats.php] */

?>
<?php

/*
******
*
* HX-2014-08:
* for PHP code
* translated from ATS
*
******
*/

/*
******
* beg of [PHParref_cats.php]
******
*/

/* ****** ****** */
//
function
ats2phppre_PHParray_nil
  () { return array(); }
function
ats2phppre_PHParray_sing
  ($x) { return array($x); }
function
ats2phppre_PHParray_pair
  ($x1, $x2)
  { return array($x1, $x2); }
//
/* ****** ****** */
//
function
ats2phppre_PHParray_size
  ($A) { return count($A) ; }
//
/* ****** ****** */
//
function
ats2phppre_PHParray_get_at
  ($A, $i) { return $A[$i] ; }
//
/* ****** ****** */

function
ats2phppre_PHParray_join
  ($A) { return (implode($A)); }
function
ats2phppre_PHParray_join_sep
  ($A, $sep) { return (implode($A, $sep)); }

/* ****** ****** */

/* end of [PHParray_cats.php] */

?>
<?php

/*
******
*
* HX-2014-08:
* for PHP code
* translated from ATS
*
******
*/

/*
******
* beg of [PHParref_cats.php]
******
*/

/* ****** ****** */

class
PHParref {
//
// HX: PHParray
//
  public $array ;
} /* end of [class] */

/* ****** ****** */
//
function
ats2phppre_PHParref2array
  ($A) { return ($A->array); }
//
/* ****** ****** */
//
function
ats2phppre_PHParref_nil
  ()
{
  $res = new PHParref;
  $res->array = array();
  return $res;
}
//
function
ats2phppre_PHParref_sing
  ($x)
{
  $res = new PHParref;
  $res->array = array($x);
  return $res;
}
//
function
ats2phppre_PHParref_pair
  ($x1, $x2)
{
  $res = new PHParref;
  $res->array = array($x1, x2);
  return $res;
}
//
/* ****** ****** */

function
ats2phppre_PHParref_size
  ($A)
{
  return count($A->array) ;
}
function
ats2phppre_PHParref_length
  ($A)
{
  return count($A->array) ;
}
//
/* ****** ****** */
//
function
ats2phppre_PHParref_get_at
  ($A, $i)
  { return $A->array[$i] ; }
//
function
ats2phppre_PHParref_set_at
  ($A, $i, $x)
{
  $A->array[$i] = $x; return;
}
//
/* ****** ****** */
//
function
ats2phppre_PHParref_unset
  ($A, $k)
{
  unset($A->array[$k]); return;
}
//
/* ****** ****** */
//
function
ats2phppre_PHParref_extend
  ($A, $x)
{
  $A->array[] = $x; return;
}
//
/* ****** ****** */

function
ats2phppre_PHParref_copy
  ($A)
{
  $A2 = new PHParref;
  $A2->array = $A->array; return $A2;
}

/* ****** ****** */

function
ats2phppre_PHParref_values
  ($A)
{
  $A2 = new PHParref;
  $A2->array = array_values($A->array);
  return $A2; // end-of-body
}

/* ****** ****** */
//
function
ats2phppre_PHParref_join
  ($A) { return (implode($A->array)); }
function
ats2phppre_PHParref_join_sep
  ($A, $sep) { return (implode($A->array, $sep)); }
//
/* ****** ****** */

/* end of [PHParref_cats.php] */

?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/
function
_ats2phppre_list_patsfun_40__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_40($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_list_patsfun_44__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_44($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_list_patsfun_47__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_47($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_list_patsfun_51__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_51($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_list_patsfun_55__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_55($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_list_patsfun_59__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_59($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_list_patsfun_62__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_62($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_list_patsfun_66__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_66($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_list_patsfun_70__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_70($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_list_patsfun_74__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_74($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2phppre_list_patsfun_78__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_78($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2phppre_list_patsfun_82__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_82($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2phppre_list_patsfun_86__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_86($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2phppre_list_patsfun_91__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_91($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_list_patsfun_94__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_94($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2phppre_list_patsfun_97__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_97($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2phppre_list_patsfun_99__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_list_patsfun_99($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}


function
ats2phppre_list_make_elt($arg0, $arg1)
{
//
  $tmpret2 = NULL;
  $tmp7 = NULL;
//
  __patsflab_list_make_elt:
  $tmp7 = NULL;
  $tmpret2 = _ats2phppre_list_loop_3($arg1, $arg0, $tmp7);
  return $tmpret2;
} // end-of-function


function
_ats2phppre_list_loop_3($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret3 = NULL;
  $tmp4 = NULL;
  $tmp5 = NULL;
  $tmp6 = NULL;
//
  __patsflab__ats2phppre_list_loop_3:
  $tmp4 = ats2phppre_gt_int1_int1($arg0, 0);
  if($tmp4) {
    $tmp5 = ats2phppre_sub_int1_int1($arg0, 1);
    $tmp6 = array($env0, $arg1);
    // ATStailcalseq_beg
    $apy0 = $tmp5;
    $apy1 = $tmp6;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_list_loop_3;
    // ATStailcalseq_end
  } else {
    $tmpret3 = $arg1;
  } // endif
  return $tmpret3;
} // end-of-function


function
ats2phppre_list_make_intrange_2($arg0, $arg1)
{
//
  $tmpret8 = NULL;
//
  __patsflab_list_make_intrange_2:
  $tmpret8 = ats2phppre_list_make_intrange_3($arg0, $arg1, 1);
  return $tmpret8;
} // end-of-function


function
ats2phppre_list_make_intrange_3($arg0, $arg1, $arg2)
{
//
  $tmpret9 = NULL;
  $tmp20 = NULL;
  $tmp21 = NULL;
  $tmp22 = NULL;
  $tmp23 = NULL;
  $tmp24 = NULL;
  $tmp25 = NULL;
  $tmp26 = NULL;
  $tmp27 = NULL;
  $tmp28 = NULL;
  $tmp29 = NULL;
  $tmp30 = NULL;
  $tmp31 = NULL;
  $tmp32 = NULL;
  $tmp33 = NULL;
  $tmp34 = NULL;
  $tmp35 = NULL;
  $tmp36 = NULL;
  $tmp37 = NULL;
  $tmp38 = NULL;
  $tmp39 = NULL;
  $tmp40 = NULL;
//
  __patsflab_list_make_intrange_3:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab6:
    $tmp20 = ats2phppre_gt_int0_int0($arg2, 0);
    if(!ATSCKpat_bool($tmp20, true)) goto __atstmplab7;
    $tmp21 = ats2phppre_lt_int0_int0($arg0, $arg1);
    if($tmp21) {
      $tmp25 = ats2phppre_sub_int0_int0($arg1, $arg0);
      $tmp24 = ats2phppre_add_int0_int0($tmp25, $arg2);
      $tmp23 = ats2phppre_sub_int0_int0($tmp24, 1);
      $tmp22 = ats2phppre_div_int0_int0($tmp23, $arg2);
      $tmp28 = ats2phppre_sub_int0_int0($tmp22, 1);
      $tmp27 = ats2phppre_mul_int0_int0($tmp28, $arg2);
      $tmp26 = ats2phppre_add_int0_int0($arg0, $tmp27);
      $tmp29 = NULL;
      $tmpret9 = _ats2phppre_list_loop1_6($tmp22, $tmp26, $arg2, $tmp29);
    } else {
      $tmpret9 = NULL;
    } // endif
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab7:
    $tmp30 = ats2phppre_lt_int0_int0($arg2, 0);
    if(!ATSCKpat_bool($tmp30, true)) goto __atstmplab8;
    $tmp31 = ats2phppre_gt_int0_int0($arg0, $arg1);
    if($tmp31) {
      $tmp32 = ats2phppre_neg_int0($arg2);
      $tmp36 = ats2phppre_sub_int0_int0($arg0, $arg1);
      $tmp35 = ats2phppre_add_int0_int0($tmp36, $tmp32);
      $tmp34 = ats2phppre_sub_int0_int0($tmp35, 1);
      $tmp33 = ats2phppre_div_int0_int0($tmp34, $tmp32);
      $tmp39 = ats2phppre_sub_int0_int0($tmp33, 1);
      $tmp38 = ats2phppre_mul_int0_int0($tmp39, $tmp32);
      $tmp37 = ats2phppre_sub_int0_int0($arg0, $tmp38);
      $tmp40 = NULL;
      $tmpret9 = _ats2phppre_list_loop2_7($tmp33, $tmp37, $tmp32, $tmp40);
    } else {
      $tmpret9 = NULL;
    } // endif
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab8:
    $tmpret9 = NULL;
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret9;
} // end-of-function


function
_ats2phppre_list_loop1_6($arg0, $arg1, $arg2, $arg3)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $apy3 = NULL;
  $tmpret10 = NULL;
  $tmp11 = NULL;
  $tmp12 = NULL;
  $tmp13 = NULL;
  $tmp14 = NULL;
//
  __patsflab__ats2phppre_list_loop1_6:
  $tmp11 = ats2phppre_gt_int0_int0($arg0, 0);
  if($tmp11) {
    $tmp12 = ats2phppre_sub_int0_int0($arg0, 1);
    $tmp13 = ats2phppre_sub_int0_int0($arg1, $arg2);
    $tmp14 = array($arg1, $arg3);
    // ATStailcalseq_beg
    $apy0 = $tmp12;
    $apy1 = $tmp13;
    $apy2 = $arg2;
    $apy3 = $tmp14;
    $arg0 = $apy0;
    $arg1 = $apy1;
    $arg2 = $apy2;
    $arg3 = $apy3;
    goto __patsflab__ats2phppre_list_loop1_6;
    // ATStailcalseq_end
  } else {
    $tmpret10 = $arg3;
  } // endif
  return $tmpret10;
} // end-of-function


function
_ats2phppre_list_loop2_7($arg0, $arg1, $arg2, $arg3)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $apy3 = NULL;
  $tmpret15 = NULL;
  $tmp16 = NULL;
  $tmp17 = NULL;
  $tmp18 = NULL;
  $tmp19 = NULL;
//
  __patsflab__ats2phppre_list_loop2_7:
  $tmp16 = ats2phppre_gt_int0_int0($arg0, 0);
  if($tmp16) {
    $tmp17 = ats2phppre_sub_int0_int0($arg0, 1);
    $tmp18 = ats2phppre_add_int0_int0($arg1, $arg2);
    $tmp19 = array($arg1, $arg3);
    // ATStailcalseq_beg
    $apy0 = $tmp17;
    $apy1 = $tmp18;
    $apy2 = $arg2;
    $apy3 = $tmp19;
    $arg0 = $apy0;
    $arg1 = $apy1;
    $arg2 = $apy2;
    $arg3 = $apy3;
    goto __patsflab__ats2phppre_list_loop2_7;
    // ATStailcalseq_end
  } else {
    $tmpret15 = $arg3;
  } // endif
  return $tmpret15;
} // end-of-function


function
ats2phppre_list_length($arg0)
{
//
  $tmpret52 = NULL;
//
  __patsflab_list_length:
  $tmpret52 = _ats2phppre_list_loop_14($arg0, 0);
  return $tmpret52;
} // end-of-function


function
_ats2phppre_list_loop_14($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret53 = NULL;
  $tmp55 = NULL;
  $tmp56 = NULL;
//
  __patsflab__ats2phppre_list_loop_14:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab13:
    if(ATSCKptriscons($arg0)) goto __atstmplab16;
    __atstmplab14:
    $tmpret53 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab15:
    __atstmplab16:
    $tmp55 = $arg0[1];
    $tmp56 = ats2phppre_add_int1_int1($arg1, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp55;
    $apy1 = $tmp56;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_list_loop_14;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret53;
} // end-of-function


function
_057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2php_057_ATS2_055_0_056_3_056_2_057_SATS_057_list_056_sats__list_length_gte($arg0, $arg1)
{
//
  $tmpret57 = NULL;
  $tmp58 = NULL;
//
  __patsflab_list_length_gte:
  $tmp58 = _057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2php_057_ATS2_055_0_056_3_056_2_057_SATS_057_list_056_sats__list_length_compare($arg0, $arg1);
  $tmpret57 = ats2phppre_gte_int1_int1($tmp58, 0);
  return $tmpret57;
} // end-of-function


function
_057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2php_057_ATS2_055_0_056_3_056_2_057_SATS_057_list_056_sats__list_length_compare($arg0, $arg1)
{
//
  $tmpret59 = NULL;
//
  __patsflab_list_length_compare:
  $tmpret59 = _ats2phppre_list_loop_17($arg0, $arg1);
  return $tmpret59;
} // end-of-function


function
_ats2phppre_list_loop_17($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret60 = NULL;
  $tmp61 = NULL;
  $tmp63 = NULL;
  $tmp64 = NULL;
  $tmp65 = NULL;
//
  __patsflab__ats2phppre_list_loop_17:
  $tmp61 = ats2phppre_lt_int1_int1($arg1, 0);
  if($tmp61) {
    $tmpret60 = 1;
  } else {
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab17:
      if(ATSCKptrisnull($arg0)) goto __atstmplab19;
      __atstmplab18:
      $tmp63 = $arg0[1];
      $tmp64 = ats2phppre_sub_int1_int1($arg1, 1);
      // ATStailcalseq_beg
      $apy0 = $tmp63;
      $apy1 = $tmp64;
      $arg0 = $apy0;
      $arg1 = $apy1;
      goto __patsflab__ats2phppre_list_loop_17;
      // ATStailcalseq_end
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab19:
      $tmp65 = ats2phppre_eq_int1_int1($arg1, 0);
      if($tmp65) {
        $tmpret60 = 0;
      } else {
        $tmpret60 = ats2phppre_neg_int1(1);
      } // endif
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
  } // endif
  return $tmpret60;
} // end-of-function


function
ats2phppre_list_head($arg0)
{
//
  $tmpret66 = NULL;
  $tmp67 = NULL;
//
  __patsflab_list_head:
  $tmp67 = $arg0[0];
  $tmpret66 = $tmp67;
  return $tmpret66;
} // end-of-function


function
ats2phppre_list_tail($arg0)
{
//
  $tmpret68 = NULL;
  $tmp69 = NULL;
//
  __patsflab_list_tail:
  $tmp69 = $arg0[1];
  $tmpret68 = $tmp69;
  return $tmpret68;
} // end-of-function


function
ats2phppre_list_last($arg0)
{
//
  $apy0 = NULL;
  $tmpret70 = NULL;
  $tmp71 = NULL;
  $tmp72 = NULL;
//
  __patsflab_list_last:
  $tmp71 = $arg0[0];
  $tmp72 = $arg0[1];
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab20:
    if(ATSCKptriscons($tmp72)) goto __atstmplab23;
    __atstmplab21:
    $tmpret70 = $tmp71;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab22:
    __atstmplab23:
    // ATStailcalseq_beg
    $apy0 = $tmp72;
    $arg0 = $apy0;
    goto __patsflab_list_last;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret70;
} // end-of-function


function
ats2phppre_list_get_at($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret73 = NULL;
  $tmp74 = NULL;
  $tmp75 = NULL;
  $tmp76 = NULL;
  $tmp77 = NULL;
//
  __patsflab_list_get_at:
  $tmp74 = ats2phppre_eq_int1_int1($arg1, 0);
  if($tmp74) {
    $tmp75 = $arg0[0];
    $tmpret73 = $tmp75;
  } else {
    $tmp76 = $arg0[1];
    $tmp77 = ats2phppre_sub_int1_int1($arg1, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp76;
    $apy1 = $tmp77;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab_list_get_at;
    // ATStailcalseq_end
  } // endif
  return $tmpret73;
} // end-of-function


function
ats2phppre_list_snoc($arg0, $arg1)
{
//
  $tmpret78 = NULL;
  $tmp79 = NULL;
  $tmp80 = NULL;
//
  __patsflab_list_snoc:
  $tmp80 = NULL;
  $tmp79 = array($arg1, $tmp80);
  $tmpret78 = ats2phppre_list_append($arg0, $tmp79);
  return $tmpret78;
} // end-of-function


function
ats2phppre_list_extend($arg0, $arg1)
{
//
  $tmpret81 = NULL;
  $tmp82 = NULL;
  $tmp83 = NULL;
//
  __patsflab_list_extend:
  $tmp83 = NULL;
  $tmp82 = array($arg1, $tmp83);
  $tmpret81 = ats2phppre_list_append($arg0, $tmp82);
  return $tmpret81;
} // end-of-function


function
ats2phppre_list_append($arg0, $arg1)
{
//
  $tmpret84 = NULL;
  $tmp85 = NULL;
  $tmp86 = NULL;
  $tmp87 = NULL;
//
  __patsflab_list_append:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab24:
    if(ATSCKptriscons($arg0)) goto __atstmplab27;
    __atstmplab25:
    $tmpret84 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab26:
    __atstmplab27:
    $tmp85 = $arg0[0];
    $tmp86 = $arg0[1];
    $tmp87 = ats2phppre_list_append($tmp86, $arg1);
    $tmpret84 = array($tmp85, $tmp87);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret84;
} // end-of-function


function
ats2phppre_mul_int_list($arg0, $arg1)
{
//
  $tmpret88 = NULL;
  $tmp93 = NULL;
//
  __patsflab_mul_int_list:
  $tmp93 = NULL;
  $tmpret88 = _ats2phppre_list_loop_26($arg1, $arg0, $tmp93);
  return $tmpret88;
} // end-of-function


function
_ats2phppre_list_loop_26($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret89 = NULL;
  $tmp90 = NULL;
  $tmp91 = NULL;
  $tmp92 = NULL;
//
  __patsflab__ats2phppre_list_loop_26:
  $tmp90 = ats2phppre_gt_int1_int1($arg0, 0);
  if($tmp90) {
    $tmp91 = ats2phppre_sub_int1_int1($arg0, 1);
    $tmp92 = ats2phppre_list_append($env0, $arg1);
    // ATStailcalseq_beg
    $apy0 = $tmp91;
    $apy1 = $tmp92;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_list_loop_26;
    // ATStailcalseq_end
  } else {
    $tmpret89 = $arg1;
  } // endif
  return $tmpret89;
} // end-of-function


function
ats2phppre_list_reverse($arg0)
{
//
  $tmpret94 = NULL;
  $tmp95 = NULL;
//
  __patsflab_list_reverse:
  $tmp95 = NULL;
  $tmpret94 = ats2phppre_list_reverse_append($arg0, $tmp95);
  return $tmpret94;
} // end-of-function


function
ats2phppre_list_reverse_append($arg0, $arg1)
{
//
  $tmpret96 = NULL;
//
  __patsflab_list_reverse_append:
  $tmpret96 = _ats2phppre_list_loop_29($arg0, $arg1);
  return $tmpret96;
} // end-of-function


function
_ats2phppre_list_loop_29($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret97 = NULL;
  $tmp98 = NULL;
  $tmp99 = NULL;
  $tmp100 = NULL;
//
  __patsflab__ats2phppre_list_loop_29:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab28:
    if(ATSCKptriscons($arg0)) goto __atstmplab31;
    __atstmplab29:
    $tmpret97 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab30:
    __atstmplab31:
    $tmp98 = $arg0[0];
    $tmp99 = $arg0[1];
    $tmp100 = array($tmp98, $arg1);
    // ATStailcalseq_beg
    $apy0 = $tmp99;
    $apy1 = $tmp100;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_list_loop_29;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret97;
} // end-of-function


function
ats2phppre_list_concat($arg0)
{
//
  $tmpret101 = NULL;
//
  __patsflab_list_concat:
  $tmpret101 = _ats2phppre_list_auxlst_31($arg0);
  return $tmpret101;
} // end-of-function


function
_ats2phppre_list_auxlst_31($arg0)
{
//
  $tmpret102 = NULL;
  $tmp103 = NULL;
  $tmp104 = NULL;
  $tmp105 = NULL;
//
  __patsflab__ats2phppre_list_auxlst_31:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab32:
    if(ATSCKptriscons($arg0)) goto __atstmplab35;
    __atstmplab33:
    $tmpret102 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab34:
    __atstmplab35:
    $tmp103 = $arg0[0];
    $tmp104 = $arg0[1];
    $tmp105 = _ats2phppre_list_auxlst_31($tmp104);
    $tmpret102 = ats2phppre_list_append($tmp103, $tmp105);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret102;
} // end-of-function


function
ats2phppre_list_take($arg0, $arg1)
{
//
  $tmpret106 = NULL;
  $tmp107 = NULL;
  $tmp108 = NULL;
  $tmp109 = NULL;
  $tmp110 = NULL;
  $tmp111 = NULL;
//
  __patsflab_list_take:
  $tmp107 = ats2phppre_gt_int1_int1($arg1, 0);
  if($tmp107) {
    $tmp108 = $arg0[0];
    $tmp109 = $arg0[1];
    $tmp111 = ats2phppre_sub_int1_int1($arg1, 1);
    $tmp110 = ats2phppre_list_take($tmp109, $tmp111);
    $tmpret106 = array($tmp108, $tmp110);
  } else {
    $tmpret106 = NULL;
  } // endif
  return $tmpret106;
} // end-of-function


function
ats2phppre_list_drop($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret112 = NULL;
  $tmp113 = NULL;
  $tmp114 = NULL;
  $tmp115 = NULL;
//
  __patsflab_list_drop:
  $tmp113 = ats2phppre_gt_int1_int1($arg1, 0);
  if($tmp113) {
    $tmp114 = $arg0[1];
    $tmp115 = ats2phppre_sub_int1_int1($arg1, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp114;
    $apy1 = $tmp115;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab_list_drop;
    // ATStailcalseq_end
  } else {
    $tmpret112 = $arg0;
  } // endif
  return $tmpret112;
} // end-of-function


function
ats2phppre_list_split_at($arg0, $arg1)
{
//
  $tmpret116 = NULL;
  $tmp117 = NULL;
  $tmp118 = NULL;
//
  __patsflab_list_split_at:
  $tmp117 = ats2phppre_list_take($arg0, $arg1);
  $tmp118 = ats2phppre_list_drop($arg0, $arg1);
  $tmpret116 = array($tmp117, $tmp118);
  return $tmpret116;
} // end-of-function


function
ats2phppre_list_insert_at($arg0, $arg1, $arg2)
{
//
  $tmpret119 = NULL;
  $tmp120 = NULL;
  $tmp121 = NULL;
  $tmp122 = NULL;
  $tmp123 = NULL;
  $tmp124 = NULL;
//
  __patsflab_list_insert_at:
  $tmp120 = ats2phppre_gt_int1_int1($arg1, 0);
  if($tmp120) {
    $tmp121 = $arg0[0];
    $tmp122 = $arg0[1];
    $tmp124 = ats2phppre_sub_int1_int1($arg1, 1);
    $tmp123 = ats2phppre_list_insert_at($tmp122, $tmp124, $arg2);
    $tmpret119 = array($tmp121, $tmp123);
  } else {
    $tmpret119 = array($arg2, $arg0);
  } // endif
  return $tmpret119;
} // end-of-function


function
ats2phppre_list_remove_at($arg0, $arg1)
{
//
  $tmpret125 = NULL;
  $tmp126 = NULL;
  $tmp127 = NULL;
  $tmp128 = NULL;
  $tmp129 = NULL;
  $tmp130 = NULL;
//
  __patsflab_list_remove_at:
  $tmp126 = $arg0[0];
  $tmp127 = $arg0[1];
  $tmp128 = ats2phppre_gt_int1_int1($arg1, 0);
  if($tmp128) {
    $tmp130 = ats2phppre_sub_int1_int1($arg1, 1);
    $tmp129 = ats2phppre_list_remove_at($tmp127, $tmp130);
    $tmpret125 = array($tmp126, $tmp129);
  } else {
    $tmpret125 = $tmp127;
  } // endif
  return $tmpret125;
} // end-of-function


function
ats2phppre_list_takeout_at($arg0, $arg1)
{
//
  $tmpret131 = NULL;
  $tmp132 = NULL;
  $tmp133 = NULL;
  $tmp134 = NULL;
  $tmp135 = NULL;
  $tmp136 = NULL;
  $tmp137 = NULL;
  $tmp138 = NULL;
  $tmp139 = NULL;
//
  __patsflab_list_takeout_at:
  $tmp132 = $arg0[0];
  $tmp133 = $arg0[1];
  $tmp134 = ats2phppre_gt_int1_int1($arg1, 0);
  if($tmp134) {
    $tmp136 = ats2phppre_sub_int1_int1($arg1, 1);
    $tmp135 = ats2phppre_list_takeout_at($tmp133, $tmp136);
    $tmp137 = $tmp135[0];
    $tmp138 = $tmp135[1];
    $tmp139 = array($tmp132, $tmp138);
    $tmpret131 = array($tmp137, $tmp139);
  } else {
    $tmpret131 = array($tmp132, $tmp133);
  } // endif
  return $tmpret131;
} // end-of-function


function
ats2phppre_list_exists($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret140 = NULL;
  $tmp141 = NULL;
  $tmp142 = NULL;
  $tmp143 = NULL;
//
  __patsflab_list_exists:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab36:
    if(ATSCKptriscons($arg0)) goto __atstmplab39;
    __atstmplab37:
    $tmpret140 = false;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab38:
    __atstmplab39:
    $tmp141 = $arg0[0];
    $tmp142 = $arg0[1];
    $tmp143 = $arg1[0]($arg1, $tmp141);
    if($tmp143) {
      $tmpret140 = true;
    } else {
      // ATStailcalseq_beg
      $apy0 = $tmp142;
      $apy1 = $arg1;
      $arg0 = $apy0;
      $arg1 = $apy1;
      goto __patsflab_list_exists;
      // ATStailcalseq_end
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret140;
} // end-of-function


function
ats2phppre_list_exists_method($arg0)
{
//
  $tmpret144 = NULL;
//
  __patsflab_list_exists_method:
  $tmpret144 = _ats2phppre_list_patsfun_40__closurerize($arg0);
  return $tmpret144;
} // end-of-function


function
_ats2phppre_list_patsfun_40($env0, $arg0)
{
//
  $tmpret145 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_40:
  $tmpret145 = ats2phppre_list_exists($env0, $arg0);
  return $tmpret145;
} // end-of-function


function
ats2phppre_list_iexists($arg0, $arg1)
{
//
  $tmpret146 = NULL;
//
  __patsflab_list_iexists:
  $tmpret146 = _ats2phppre_list_loop_42($arg1, 0, $arg0);
  return $tmpret146;
} // end-of-function


function
_ats2phppre_list_loop_42($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret147 = NULL;
  $tmp148 = NULL;
  $tmp149 = NULL;
  $tmp150 = NULL;
  $tmp151 = NULL;
//
  __patsflab__ats2phppre_list_loop_42:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab40:
    if(ATSCKptriscons($arg1)) goto __atstmplab43;
    __atstmplab41:
    $tmpret147 = false;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab42:
    __atstmplab43:
    $tmp148 = $arg1[0];
    $tmp149 = $arg1[1];
    $tmp150 = $env0[0]($env0, $arg0, $tmp148);
    if($tmp150) {
      $tmpret147 = true;
    } else {
      $tmp151 = ats2phppre_add_int1_int1($arg0, 1);
      // ATStailcalseq_beg
      $apy0 = $tmp151;
      $apy1 = $tmp149;
      $arg0 = $apy0;
      $arg1 = $apy1;
      goto __patsflab__ats2phppre_list_loop_42;
      // ATStailcalseq_end
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret147;
} // end-of-function


function
ats2phppre_list_iexists_method($arg0)
{
//
  $tmpret152 = NULL;
//
  __patsflab_list_iexists_method:
  $tmpret152 = _ats2phppre_list_patsfun_44__closurerize($arg0);
  return $tmpret152;
} // end-of-function


function
_ats2phppre_list_patsfun_44($env0, $arg0)
{
//
  $tmpret153 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_44:
  $tmpret153 = ats2phppre_list_iexists($env0, $arg0);
  return $tmpret153;
} // end-of-function


function
ats2phppre_list_forall($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret154 = NULL;
  $tmp155 = NULL;
  $tmp156 = NULL;
  $tmp157 = NULL;
//
  __patsflab_list_forall:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab44:
    if(ATSCKptriscons($arg0)) goto __atstmplab47;
    __atstmplab45:
    $tmpret154 = true;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab46:
    __atstmplab47:
    $tmp155 = $arg0[0];
    $tmp156 = $arg0[1];
    $tmp157 = $arg1[0]($arg1, $tmp155);
    if($tmp157) {
      // ATStailcalseq_beg
      $apy0 = $tmp156;
      $apy1 = $arg1;
      $arg0 = $apy0;
      $arg1 = $apy1;
      goto __patsflab_list_forall;
      // ATStailcalseq_end
    } else {
      $tmpret154 = false;
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret154;
} // end-of-function


function
ats2phppre_list_forall_method($arg0)
{
//
  $tmpret158 = NULL;
//
  __patsflab_list_forall_method:
  $tmpret158 = _ats2phppre_list_patsfun_47__closurerize($arg0);
  return $tmpret158;
} // end-of-function


function
_ats2phppre_list_patsfun_47($env0, $arg0)
{
//
  $tmpret159 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_47:
  $tmpret159 = ats2phppre_list_forall($env0, $arg0);
  return $tmpret159;
} // end-of-function


function
ats2phppre_list_iforall($arg0, $arg1)
{
//
  $tmpret160 = NULL;
//
  __patsflab_list_iforall:
  $tmpret160 = _ats2phppre_list_loop_49($arg1, 0, $arg0);
  return $tmpret160;
} // end-of-function


function
_ats2phppre_list_loop_49($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret161 = NULL;
  $tmp162 = NULL;
  $tmp163 = NULL;
  $tmp164 = NULL;
  $tmp165 = NULL;
//
  __patsflab__ats2phppre_list_loop_49:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab48:
    if(ATSCKptriscons($arg1)) goto __atstmplab51;
    __atstmplab49:
    $tmpret161 = true;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab50:
    __atstmplab51:
    $tmp162 = $arg1[0];
    $tmp163 = $arg1[1];
    $tmp164 = $env0[0]($env0, $arg0, $tmp162);
    if($tmp164) {
      $tmp165 = ats2phppre_add_int1_int1($arg0, 1);
      // ATStailcalseq_beg
      $apy0 = $tmp165;
      $apy1 = $tmp163;
      $arg0 = $apy0;
      $arg1 = $apy1;
      goto __patsflab__ats2phppre_list_loop_49;
      // ATStailcalseq_end
    } else {
      $tmpret161 = false;
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret161;
} // end-of-function


function
ats2phppre_list_iforall_method($arg0)
{
//
  $tmpret166 = NULL;
//
  __patsflab_list_iforall_method:
  $tmpret166 = _ats2phppre_list_patsfun_51__closurerize($arg0);
  return $tmpret166;
} // end-of-function


function
_ats2phppre_list_patsfun_51($env0, $arg0)
{
//
  $tmpret167 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_51:
  $tmpret167 = ats2phppre_list_iforall($env0, $arg0);
  return $tmpret167;
} // end-of-function


function
ats2phppre_list_app($arg0, $arg1)
{
//
//
  __patsflab_list_app:
  ats2phppre_list_foreach($arg0, $arg1);
  return/*_void*/;
} // end-of-function


function
ats2phppre_list_foreach($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmp170 = NULL;
  $tmp171 = NULL;
//
  __patsflab_list_foreach:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab52:
    if(ATSCKptriscons($arg0)) goto __atstmplab55;
    __atstmplab53:
    // ATSINSmove_void;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab54:
    __atstmplab55:
    $tmp170 = $arg0[0];
    $tmp171 = $arg0[1];
    $arg1[0]($arg1, $tmp170);
    // ATStailcalseq_beg
    $apy0 = $tmp171;
    $apy1 = $arg1;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab_list_foreach;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return/*_void*/;
} // end-of-function


function
ats2phppre_list_foreach_method($arg0)
{
//
  $tmpret173 = NULL;
//
  __patsflab_list_foreach_method:
  $tmpret173 = _ats2phppre_list_patsfun_55__closurerize($arg0);
  return $tmpret173;
} // end-of-function


function
_ats2phppre_list_patsfun_55($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_list_patsfun_55:
  ats2phppre_list_foreach($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_list_iforeach($arg0, $arg1)
{
//
//
  __patsflab_list_iforeach:
  _ats2phppre_list_aux_57($arg1, 0, $arg0);
  return/*_void*/;
} // end-of-function


function
_ats2phppre_list_aux_57($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmp177 = NULL;
  $tmp178 = NULL;
  $tmp180 = NULL;
//
  __patsflab__ats2phppre_list_aux_57:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab56:
    if(ATSCKptriscons($arg1)) goto __atstmplab59;
    __atstmplab57:
    // ATSINSmove_void;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab58:
    __atstmplab59:
    $tmp177 = $arg1[0];
    $tmp178 = $arg1[1];
    $env0[0]($env0, $arg0, $tmp177);
    $tmp180 = ats2phppre_add_int1_int1($arg0, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp180;
    $apy1 = $tmp178;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_list_aux_57;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return/*_void*/;
} // end-of-function


function
ats2phppre_list_iforeach_method($arg0)
{
//
  $tmpret181 = NULL;
//
  __patsflab_list_iforeach_method:
  $tmpret181 = _ats2phppre_list_patsfun_59__closurerize($arg0);
  return $tmpret181;
} // end-of-function


function
_ats2phppre_list_patsfun_59($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_list_patsfun_59:
  ats2phppre_list_iforeach($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_list_rforeach($arg0, $arg1)
{
//
  $tmp184 = NULL;
  $tmp185 = NULL;
//
  __patsflab_list_rforeach:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab60:
    if(ATSCKptriscons($arg0)) goto __atstmplab63;
    __atstmplab61:
    // ATSINSmove_void;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab62:
    __atstmplab63:
    $tmp184 = $arg0[0];
    $tmp185 = $arg0[1];
    ats2phppre_list_rforeach($tmp185, $arg1);
    $arg1[0]($arg1, $tmp184);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return/*_void*/;
} // end-of-function


function
ats2phppre_list_rforeach_method($arg0)
{
//
  $tmpret187 = NULL;
//
  __patsflab_list_rforeach_method:
  $tmpret187 = _ats2phppre_list_patsfun_62__closurerize($arg0);
  return $tmpret187;
} // end-of-function


function
_ats2phppre_list_patsfun_62($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_list_patsfun_62:
  ats2phppre_list_rforeach($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_list_filter($arg0, $arg1)
{
//
  $tmpret189 = NULL;
//
  __patsflab_list_filter:
  $tmpret189 = _ats2phppre_list_aux_64($arg1, $arg0);
  return $tmpret189;
} // end-of-function


function
_ats2phppre_list_aux_64($env0, $arg0)
{
//
  $apy0 = NULL;
  $tmpret190 = NULL;
  $tmp191 = NULL;
  $tmp192 = NULL;
  $tmp193 = NULL;
  $tmp194 = NULL;
//
  __patsflab__ats2phppre_list_aux_64:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab64:
    if(ATSCKptriscons($arg0)) goto __atstmplab67;
    __atstmplab65:
    $tmpret190 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab66:
    __atstmplab67:
    $tmp191 = $arg0[0];
    $tmp192 = $arg0[1];
    $tmp193 = $env0[0]($env0, $tmp191);
    if($tmp193) {
      $tmp194 = _ats2phppre_list_aux_64($env0, $tmp192);
      $tmpret190 = array($tmp191, $tmp194);
    } else {
      // ATStailcalseq_beg
      $apy0 = $tmp192;
      $arg0 = $apy0;
      goto __patsflab__ats2phppre_list_aux_64;
      // ATStailcalseq_end
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret190;
} // end-of-function


function
ats2phppre_list_filter_method($arg0)
{
//
  $tmpret195 = NULL;
//
  __patsflab_list_filter_method:
  $tmpret195 = _ats2phppre_list_patsfun_66__closurerize($arg0);
  return $tmpret195;
} // end-of-function


function
_ats2phppre_list_patsfun_66($env0, $arg0)
{
//
  $tmpret196 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_66:
  $tmpret196 = ats2phppre_list_filter($env0, $arg0);
  return $tmpret196;
} // end-of-function


function
ats2phppre_list_map($arg0, $arg1)
{
//
  $tmpret197 = NULL;
//
  __patsflab_list_map:
  $tmpret197 = _ats2phppre_list_aux_68($arg1, $arg0);
  return $tmpret197;
} // end-of-function


function
_ats2phppre_list_aux_68($env0, $arg0)
{
//
  $tmpret198 = NULL;
  $tmp199 = NULL;
  $tmp200 = NULL;
  $tmp201 = NULL;
  $tmp202 = NULL;
//
  __patsflab__ats2phppre_list_aux_68:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab68:
    if(ATSCKptriscons($arg0)) goto __atstmplab71;
    __atstmplab69:
    $tmpret198 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab70:
    __atstmplab71:
    $tmp199 = $arg0[0];
    $tmp200 = $arg0[1];
    $tmp201 = $env0[0]($env0, $tmp199);
    $tmp202 = _ats2phppre_list_aux_68($env0, $tmp200);
    $tmpret198 = array($tmp201, $tmp202);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret198;
} // end-of-function


function
ats2phppre_list_map_method($arg0, $arg1)
{
//
  $tmpret203 = NULL;
//
  __patsflab_list_map_method:
  $tmpret203 = _ats2phppre_list_patsfun_70__closurerize($arg0);
  return $tmpret203;
} // end-of-function


function
_ats2phppre_list_patsfun_70($env0, $arg0)
{
//
  $tmpret204 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_70:
  $tmpret204 = ats2phppre_list_map($env0, $arg0);
  return $tmpret204;
} // end-of-function


function
ats2phppre_list_foldleft($arg0, $arg1, $arg2)
{
//
  $tmpret205 = NULL;
//
  __patsflab_list_foldleft:
  $tmpret205 = _ats2phppre_list_loop_72($arg2, $arg1, $arg0);
  return $tmpret205;
} // end-of-function


function
_ats2phppre_list_loop_72($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret206 = NULL;
  $tmp207 = NULL;
  $tmp208 = NULL;
  $tmp209 = NULL;
//
  __patsflab__ats2phppre_list_loop_72:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab72:
    if(ATSCKptriscons($arg1)) goto __atstmplab75;
    __atstmplab73:
    $tmpret206 = $arg0;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab74:
    __atstmplab75:
    $tmp207 = $arg1[0];
    $tmp208 = $arg1[1];
    $tmp209 = $env0[0]($env0, $arg0, $tmp207);
    // ATStailcalseq_beg
    $apy0 = $tmp209;
    $apy1 = $tmp208;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_list_loop_72;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret206;
} // end-of-function


function
ats2phppre_list_foldleft_method($arg0, $arg1)
{
//
  $tmpret210 = NULL;
//
  __patsflab_list_foldleft_method:
  $tmpret210 = _ats2phppre_list_patsfun_74__closurerize($arg0, $arg1);
  return $tmpret210;
} // end-of-function


function
_ats2phppre_list_patsfun_74($env0, $env1, $arg0)
{
//
  $tmpret211 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_74:
  $tmpret211 = ats2phppre_list_foldleft($env0, $env1, $arg0);
  return $tmpret211;
} // end-of-function


function
ats2phppre_list_ifoldleft($arg0, $arg1, $arg2)
{
//
  $tmpret212 = NULL;
//
  __patsflab_list_ifoldleft:
  $tmpret212 = _ats2phppre_list_loop_76($arg2, 0, $arg1, $arg0);
  return $tmpret212;
} // end-of-function


function
_ats2phppre_list_loop_76($env0, $arg0, $arg1, $arg2)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $tmpret213 = NULL;
  $tmp214 = NULL;
  $tmp215 = NULL;
  $tmp216 = NULL;
  $tmp217 = NULL;
//
  __patsflab__ats2phppre_list_loop_76:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab76:
    if(ATSCKptriscons($arg2)) goto __atstmplab79;
    __atstmplab77:
    $tmpret213 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab78:
    __atstmplab79:
    $tmp214 = $arg2[0];
    $tmp215 = $arg2[1];
    $tmp216 = ats2phppre_add_int1_int1($arg0, 1);
    $tmp217 = $env0[0]($env0, $arg0, $arg1, $tmp214);
    // ATStailcalseq_beg
    $apy0 = $tmp216;
    $apy1 = $tmp217;
    $apy2 = $tmp215;
    $arg0 = $apy0;
    $arg1 = $apy1;
    $arg2 = $apy2;
    goto __patsflab__ats2phppre_list_loop_76;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret213;
} // end-of-function


function
ats2phppre_list_ifoldleft_method($arg0, $arg1)
{
//
  $tmpret218 = NULL;
//
  __patsflab_list_ifoldleft_method:
  $tmpret218 = _ats2phppre_list_patsfun_78__closurerize($arg0, $arg1);
  return $tmpret218;
} // end-of-function


function
_ats2phppre_list_patsfun_78($env0, $env1, $arg0)
{
//
  $tmpret219 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_78:
  $tmpret219 = ats2phppre_list_ifoldleft($env0, $env1, $arg0);
  return $tmpret219;
} // end-of-function


function
ats2phppre_list_foldright($arg0, $arg1, $arg2)
{
//
  $tmpret220 = NULL;
//
  __patsflab_list_foldright:
  $tmpret220 = _ats2phppre_list_aux_80($arg1, $arg0, $arg2);
  return $tmpret220;
} // end-of-function


function
_ats2phppre_list_aux_80($env0, $arg0, $arg1)
{
//
  $tmpret221 = NULL;
  $tmp222 = NULL;
  $tmp223 = NULL;
  $tmp224 = NULL;
//
  __patsflab__ats2phppre_list_aux_80:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab80:
    if(ATSCKptriscons($arg0)) goto __atstmplab83;
    __atstmplab81:
    $tmpret221 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab82:
    __atstmplab83:
    $tmp222 = $arg0[0];
    $tmp223 = $arg0[1];
    $tmp224 = _ats2phppre_list_aux_80($env0, $tmp223, $arg1);
    $tmpret221 = $env0[0]($env0, $tmp222, $tmp224);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret221;
} // end-of-function


function
ats2phppre_list_foldright_method($arg0, $arg1)
{
//
  $tmpret225 = NULL;
//
  __patsflab_list_foldright_method:
  $tmpret225 = _ats2phppre_list_patsfun_82__closurerize($arg0, $arg1);
  return $tmpret225;
} // end-of-function


function
_ats2phppre_list_patsfun_82($env0, $env1, $arg0)
{
//
  $tmpret226 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_82:
  $tmpret226 = ats2phppre_list_foldright($env0, $arg0, $env1);
  return $tmpret226;
} // end-of-function


function
ats2phppre_list_ifoldright($arg0, $arg1, $arg2)
{
//
  $tmpret227 = NULL;
//
  __patsflab_list_ifoldright:
  $tmpret227 = _ats2phppre_list_aux_84($arg1, 0, $arg0, $arg2);
  return $tmpret227;
} // end-of-function


function
_ats2phppre_list_aux_84($env0, $arg0, $arg1, $arg2)
{
//
  $tmpret228 = NULL;
  $tmp229 = NULL;
  $tmp230 = NULL;
  $tmp231 = NULL;
  $tmp232 = NULL;
//
  __patsflab__ats2phppre_list_aux_84:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab84:
    if(ATSCKptriscons($arg1)) goto __atstmplab87;
    __atstmplab85:
    $tmpret228 = $arg2;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab86:
    __atstmplab87:
    $tmp229 = $arg1[0];
    $tmp230 = $arg1[1];
    $tmp232 = ats2phppre_add_int1_int1($arg0, 1);
    $tmp231 = _ats2phppre_list_aux_84($env0, $tmp232, $tmp230, $arg2);
    $tmpret228 = $env0[0]($env0, $arg0, $tmp229, $tmp231);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret228;
} // end-of-function


function
ats2phppre_list_ifoldright_method($arg0, $arg1)
{
//
  $tmpret233 = NULL;
//
  __patsflab_list_ifoldright_method:
  $tmpret233 = _ats2phppre_list_patsfun_86__closurerize($arg0, $arg1);
  return $tmpret233;
} // end-of-function


function
_ats2phppre_list_patsfun_86($env0, $env1, $arg0)
{
//
  $tmpret234 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_86:
  $tmpret234 = ats2phppre_list_ifoldright($env0, $arg0, $env1);
  return $tmpret234;
} // end-of-function


function
ats2phppre_streamize_list_elt($arg0)
{
//
  $tmpret237 = NULL;
//
  __patsflab_streamize_list_elt:
  $tmpret237 = _ats2phppre_list_auxmain_90($arg0);
  return $tmpret237;
} // end-of-function


function
_ats2phppre_list_auxmain_90($arg0)
{
//
  $tmpret238 = NULL;
//
  __patsflab__ats2phppre_list_auxmain_90:
  $tmpret238 = ATSPMVllazyval(_ats2phppre_list_patsfun_91__closurerize($arg0));
  return $tmpret238;
} // end-of-function


function
_ats2phppre_list_patsfun_91($env0, $arg0)
{
//
  $tmpret239 = NULL;
  $tmp240 = NULL;
  $tmp241 = NULL;
  $tmp242 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_91:
  if($arg0) {
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab88:
      if(ATSCKptriscons($env0)) goto __atstmplab91;
      __atstmplab89:
      $tmpret239 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab90:
      __atstmplab91:
      $tmp240 = $env0[0];
      $tmp241 = $env0[1];
      $tmp242 = _ats2phppre_list_auxmain_90($tmp241);
      $tmpret239 = array($tmp240, $tmp242);
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
  } else {
  } // endif
  return $tmpret239;
} // end-of-function


function
ats2phppre_streamize_list_zip($arg0, $arg1)
{
//
  $tmpret243 = NULL;
//
  __patsflab_streamize_list_zip:
  $tmpret243 = _ats2phppre_list_auxmain_93($arg0, $arg1);
  return $tmpret243;
} // end-of-function


function
_ats2phppre_list_auxmain_93($arg0, $arg1)
{
//
  $tmpret244 = NULL;
//
  __patsflab__ats2phppre_list_auxmain_93:
  $tmpret244 = ATSPMVllazyval(_ats2phppre_list_patsfun_94__closurerize($arg0, $arg1));
  return $tmpret244;
} // end-of-function


function
_ats2phppre_list_patsfun_94($env0, $env1, $arg0)
{
//
  $tmpret245 = NULL;
  $tmp246 = NULL;
  $tmp247 = NULL;
  $tmp248 = NULL;
  $tmp249 = NULL;
  $tmp250 = NULL;
  $tmp251 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_94:
  if($arg0) {
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab92:
      if(ATSCKptriscons($env0)) goto __atstmplab95;
      __atstmplab93:
      $tmpret245 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab94:
      __atstmplab95:
      $tmp246 = $env0[0];
      $tmp247 = $env0[1];
      // ATScaseofseq_beg
      do {
        // ATSbranchseq_beg
        __atstmplab96:
        if(ATSCKptriscons($env1)) goto __atstmplab99;
        __atstmplab97:
        $tmpret245 = NULL;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        __atstmplab98:
        __atstmplab99:
        $tmp248 = $env1[0];
        $tmp249 = $env1[1];
        $tmp250 = array($tmp246, $tmp248);
        $tmp251 = _ats2phppre_list_auxmain_93($tmp247, $tmp249);
        $tmpret245 = array($tmp250, $tmp251);
        break;
        // ATSbranchseq_end
      } while(0);
      // ATScaseofseq_end
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
  } else {
  } // endif
  return $tmpret245;
} // end-of-function


function
ats2phppre_streamize_list_cross($arg0, $arg1)
{
//
  $tmpret252 = NULL;
//
  __patsflab_streamize_list_cross:
  $tmpret252 = _ats2phppre_list_auxmain_98($arg0, $arg1);
  return $tmpret252;
} // end-of-function


function
_ats2phppre_list_auxone_96($arg0, $arg1)
{
//
  $tmpret253 = NULL;
//
  __patsflab__ats2phppre_list_auxone_96:
  $tmpret253 = ATSPMVllazyval(_ats2phppre_list_patsfun_97__closurerize($arg0, $arg1));
  return $tmpret253;
} // end-of-function


function
_ats2phppre_list_patsfun_97($env0, $env1, $arg0)
{
//
  $tmpret254 = NULL;
  $tmp255 = NULL;
  $tmp256 = NULL;
  $tmp257 = NULL;
  $tmp258 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_97:
  if($arg0) {
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab100:
      if(ATSCKptriscons($env1)) goto __atstmplab103;
      __atstmplab101:
      $tmpret254 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab102:
      __atstmplab103:
      $tmp255 = $env1[0];
      $tmp256 = $env1[1];
      $tmp257 = array($env0, $tmp255);
      $tmp258 = _ats2phppre_list_auxone_96($env0, $tmp256);
      $tmpret254 = array($tmp257, $tmp258);
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
  } else {
  } // endif
  return $tmpret254;
} // end-of-function


function
_ats2phppre_list_auxmain_98($arg0, $arg1)
{
//
  $tmpret259 = NULL;
//
  __patsflab__ats2phppre_list_auxmain_98:
  $tmpret259 = ATSPMVllazyval(_ats2phppre_list_patsfun_99__closurerize($arg0, $arg1));
  return $tmpret259;
} // end-of-function


function
_ats2phppre_list_patsfun_99($env0, $env1, $arg0)
{
//
  $tmpret260 = NULL;
  $tmp261 = NULL;
  $tmp262 = NULL;
  $tmp263 = NULL;
  $tmp264 = NULL;
  $tmp265 = NULL;
//
  __patsflab__ats2phppre_list_patsfun_99:
  if($arg0) {
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab104:
      if(ATSCKptriscons($env0)) goto __atstmplab107;
      __atstmplab105:
      $tmpret260 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab106:
      __atstmplab107:
      $tmp261 = $env0[0];
      $tmp262 = $env0[1];
      $tmp264 = _ats2phppre_list_auxone_96($tmp261, $env1);
      $tmp265 = _ats2phppre_list_auxmain_98($tmp262, $env1);
      $tmp263 = ats2phppre_stream_vt_append($tmp264, $tmp265);
      $tmpret260 = ATSPMVllazyval_eval($tmp263);
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
  } else {
  } // endif
  return $tmpret260;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/

function
ats2phppre_list_vt_length($arg0)
{
//
  $tmpret2 = NULL;
//
  __patsflab_list_vt_length:
  $tmpret2 = _ats2phppre_list_vt_loop_3($arg0, 0);
  return $tmpret2;
} // end-of-function


function
_ats2phppre_list_vt_loop_3($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret3 = NULL;
  $tmp5 = NULL;
  $tmp6 = NULL;
//
  __patsflab__ats2phppre_list_vt_loop_3:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab8:
    if(ATSCKptriscons($arg0)) goto __atstmplab11;
    __atstmplab9:
    $tmpret3 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab10:
    __atstmplab11:
    $tmp5 = $arg0[1];
    $tmp6 = ats2phppre_add_int1_int1($arg1, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp5;
    $apy1 = $tmp6;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_list_vt_loop_3;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret3;
} // end-of-function


function
ats2phppre_list_vt_snoc($arg0, $arg1)
{
//
  $tmpret7 = NULL;
  $tmp8 = NULL;
  $tmp9 = NULL;
//
  __patsflab_list_vt_snoc:
  $tmp9 = NULL;
  $tmp8 = array($arg1, $tmp9);
  $tmpret7 = ats2phppre_list_vt_append($arg0, $tmp8);
  return $tmpret7;
} // end-of-function


function
ats2phppre_list_vt_extend($arg0, $arg1)
{
//
  $tmpret10 = NULL;
  $tmp11 = NULL;
  $tmp12 = NULL;
//
  __patsflab_list_vt_extend:
  $tmp12 = NULL;
  $tmp11 = array($arg1, $tmp12);
  $tmpret10 = ats2phppre_list_vt_append($arg0, $tmp11);
  return $tmpret10;
} // end-of-function


function
ats2phppre_list_vt_append($arg0, $arg1)
{
//
  $tmpret13 = NULL;
//
  __patsflab_list_vt_append:
  $tmpret13 = _ats2phppre_list_vt_aux_7($arg0, $arg1);
  return $tmpret13;
} // end-of-function


function
_ats2phppre_list_vt_aux_7($arg0, $arg1)
{
//
  $tmpret14 = NULL;
  $tmp15 = NULL;
  $tmp16 = NULL;
  $tmp17 = NULL;
//
  __patsflab__ats2phppre_list_vt_aux_7:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab12:
    if(ATSCKptriscons($arg0)) goto __atstmplab15;
    __atstmplab13:
    $tmpret14 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab14:
    __atstmplab15:
    $tmp15 = $arg0[0];
    $tmp16 = $arg0[1];
    // ATSINSfreecon($arg0);
    $tmp17 = _ats2phppre_list_vt_aux_7($tmp16, $arg1);
    $tmpret14 = array($tmp15, $tmp17);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret14;
} // end-of-function


function
ats2phppre_list_vt_reverse($arg0)
{
//
  $tmpret18 = NULL;
  $tmp19 = NULL;
//
  __patsflab_list_vt_reverse:
  $tmp19 = NULL;
  $tmpret18 = ats2phppre_list_vt_reverse_append($arg0, $tmp19);
  return $tmpret18;
} // end-of-function


function
ats2phppre_list_vt_reverse_append($arg0, $arg1)
{
//
  $tmpret20 = NULL;
//
  __patsflab_list_vt_reverse_append:
  $tmpret20 = _ats2phppre_list_vt_loop_10($arg0, $arg1);
  return $tmpret20;
} // end-of-function


function
_ats2phppre_list_vt_loop_10($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret21 = NULL;
  $tmp22 = NULL;
  $tmp23 = NULL;
  $tmp24 = NULL;
//
  __patsflab__ats2phppre_list_vt_loop_10:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab16:
    if(ATSCKptriscons($arg0)) goto __atstmplab19;
    __atstmplab17:
    $tmpret21 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab18:
    __atstmplab19:
    $tmp22 = $arg0[0];
    $tmp23 = $arg0[1];
    // ATSINSfreecon($arg0);
    $tmp24 = array($tmp22, $arg1);
    // ATStailcalseq_beg
    $apy0 = $tmp23;
    $apy1 = $tmp24;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_list_vt_loop_10;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret21;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/

function
ats2phppre_option_some($arg0)
{
//
  $tmpret0 = NULL;
//
  __patsflab_option_some:
  $tmpret0 = array($arg0);
  return $tmpret0;
} // end-of-function


function
ats2phppre_option_none()
{
//
  $tmpret1 = NULL;
//
  __patsflab_option_none:
  $tmpret1 = NULL;
  return $tmpret1;
} // end-of-function


function
ats2phppre_option_unsome($arg0)
{
//
  $tmpret2 = NULL;
  $tmp3 = NULL;
//
  __patsflab_option_unsome:
  $tmp3 = $arg0[0];
  $tmpret2 = $tmp3;
  return $tmpret2;
} // end-of-function


function
ats2phppre_option_is_some($arg0)
{
//
  $tmpret4 = NULL;
//
  __patsflab_option_is_some:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab0:
    if(ATSCKptrisnull($arg0)) goto __atstmplab3;
    __atstmplab1:
    $tmpret4 = true;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab2:
    __atstmplab3:
    $tmpret4 = false;
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret4;
} // end-of-function


function
ats2phppre_option_is_none($arg0)
{
//
  $tmpret5 = NULL;
//
  __patsflab_option_is_none:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab4:
    if(ATSCKptriscons($arg0)) goto __atstmplab7;
    __atstmplab5:
    $tmpret5 = true;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab6:
    __atstmplab7:
    $tmpret5 = false;
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret5;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/
function
_ats2jspre_stream_patsfun_6__closurerize($env0)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_6($cenv[1]); }, $env0);
}

function
_ats2jspre_stream_patsfun_16__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2jspre_stream_patsfun_16($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2jspre_stream_patsfun_22__closurerize($env0, $env1)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_22($cenv[1], $cenv[2]); }, $env0, $env1);
}

function
_ats2jspre_stream_patsfun_24__closurerize($env0)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_24($cenv[1]); }, $env0);
}

function
_ats2jspre_stream_patsfun_26__closurerize($env0, $env1)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_26($cenv[1], $cenv[2]); }, $env0, $env1);
}

function
_ats2jspre_stream_patsfun_28__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2jspre_stream_patsfun_28($cenv[1], $arg0); }, $env0);
}

function
_ats2jspre_stream_patsfun_30__closurerize($env0, $env1)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_30($cenv[1], $cenv[2]); }, $env0, $env1);
}

function
_ats2jspre_stream_patsfun_32__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2jspre_stream_patsfun_32($cenv[1], $arg0); }, $env0);
}

function
_ats2jspre_stream_patsfun_35__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2jspre_stream_patsfun_35($cenv[1], $arg0); }, $env0);
}

function
_ats2jspre_stream_patsfun_38__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2jspre_stream_patsfun_38($cenv[1], $arg0); }, $env0);
}

function
_ats2jspre_stream_patsfun_41__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2jspre_stream_patsfun_41($cenv[1], $arg0); }, $env0);
}

function
_ats2jspre_stream_patsfun_45__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2jspre_stream_patsfun_45($cenv[1], $arg0); }, $env0);
}

function
_ats2jspre_stream_patsfun_48__closurerize($env0, $env1)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_48($cenv[1], $cenv[2]); }, $env0, $env1);
}

function
_ats2jspre_stream_patsfun_51__closurerize($env0, $env1, $env2, $env3)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_51($cenv[1], $cenv[2], $cenv[3], $cenv[4]); }, $env0, $env1, $env2, $env3);
}

function
_ats2jspre_stream_patsfun_52__closurerize($env0, $env1)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_52($cenv[1], $cenv[2]); }, $env0, $env1);
}

function
_ats2jspre_stream_patsfun_55__closurerize($env0)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_55($cenv[1]); }, $env0);
}

function
_ats2jspre_stream_patsfun_57__closurerize($env0)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_57($cenv[1]); }, $env0);
}

function
_ats2jspre_stream_patsfun_59__closurerize($env0, $env1)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_59($cenv[1], $cenv[2]); }, $env0, $env1);
}

function
_ats2jspre_stream_patsfun_64__closurerize($env0)
{
  return array(function($cenv, $arg0, $arg1) { return _ats2jspre_stream_patsfun_64($cenv[1], $arg0, $arg1); }, $env0);
}

function
_ats2jspre_stream_patsfun_66__closurerize($env0)
{
  return array(function($cenv, $arg0, $arg1) { return _ats2jspre_stream_patsfun_66($cenv[1], $arg0, $arg1); }, $env0);
}

function
_ats2jspre_stream_patsfun_69__closurerize($env0, $env1)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_69($cenv[1], $cenv[2]); }, $env0, $env1);
}

function
_ats2jspre_stream_patsfun_71__closurerize($env0, $env1)
{
  return array(function($cenv) { return _ats2jspre_stream_patsfun_71($cenv[1], $cenv[2]); }, $env0, $env1);
}


function
ats2phppre_stream_make_list($arg0)
{
//
  $tmpret7 = NULL;
//
  __patsflab_stream_make_list:
  $tmpret7 = ATSPMVlazyval(_ats2jspre_stream_patsfun_6__closurerize($arg0));
  return $tmpret7;
} // end-of-function


function
_ats2jspre_stream_patsfun_6($env0)
{
//
  $tmpret8 = NULL;
  $tmp9 = NULL;
  $tmp10 = NULL;
  $tmp11 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_6:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab0:
    if(ATSCKptriscons($env0)) goto __atstmplab3;
    __atstmplab1:
    $tmpret8 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab2:
    __atstmplab3:
    $tmp9 = $env0[0];
    $tmp10 = $env0[1];
    $tmp11 = ats2phppre_stream_make_list($tmp10);
    $tmpret8 = array($tmp9, $tmp11);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret8;
} // end-of-function


function
ats2phppre_stream_make_list0($arg0)
{
//
  $tmpret12 = NULL;
//
  __patsflab_stream_make_list0:
  $tmpret12 = ats2phppre_stream_make_list($arg0);
  return $tmpret12;
} // end-of-function


function
ats2phppre_stream_nth_opt($arg0, $arg1)
{
//
  $tmpret13 = NULL;
//
  __patsflab_stream_nth_opt:
  $tmpret13 = _ats2jspre_stream_loop_9($arg0, $arg1);
  return $tmpret13;
} // end-of-function


function
_ats2jspre_stream_loop_9($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret14 = NULL;
  $tmp15 = NULL;
  $tmp16 = NULL;
  $tmp17 = NULL;
  $tmp18 = NULL;
  $tmp19 = NULL;
//
  __patsflab__ats2jspre_stream_loop_9:
  $tmp15 = ATSPMVlazyval_eval($arg0); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab4:
    if(ATSCKptriscons($tmp15)) goto __atstmplab7;
    __atstmplab5:
    $tmpret14 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab6:
    __atstmplab7:
    $tmp16 = $tmp15[0];
    $tmp17 = $tmp15[1];
    $tmp18 = ats2phppre_gt_int1_int1($arg1, 0);
    if($tmp18) {
      $tmp19 = ats2phppre_pred_int1($arg1);
      // ATStailcalseq_beg
      $apy0 = $tmp17;
      $apy1 = $tmp19;
      $arg0 = $apy0;
      $arg1 = $apy1;
      goto __patsflab__ats2jspre_stream_loop_9;
      // ATStailcalseq_end
    } else {
      $tmpret14 = array($tmp16);
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret14;
} // end-of-function


function
ats2phppre_stream_length($arg0)
{
//
  $tmpret20 = NULL;
//
  __patsflab_stream_length:
  $tmpret20 = _ats2jspre_stream_loop_11($arg0, 0);
  return $tmpret20;
} // end-of-function


function
_ats2jspre_stream_loop_11($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret21 = NULL;
  $tmp22 = NULL;
  $tmp24 = NULL;
  $tmp25 = NULL;
//
  __patsflab__ats2jspre_stream_loop_11:
  $tmp22 = ATSPMVlazyval_eval($arg0); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab8:
    if(ATSCKptriscons($tmp22)) goto __atstmplab11;
    __atstmplab9:
    $tmpret21 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab10:
    __atstmplab11:
    $tmp24 = $tmp22[1];
    $tmp25 = ats2phppre_add_int1_int1($arg1, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp24;
    $apy1 = $tmp25;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2jspre_stream_loop_11;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret21;
} // end-of-function


function
ats2phppre_stream2list($arg0)
{
//
  $tmpret26 = NULL;
  $tmp27 = NULL;
//
  __patsflab_stream2list:
  $tmp27 = ats2phppre_stream2list_rev($arg0);
  $tmpret26 = ats2phppre_list_reverse($tmp27);
  return $tmpret26;
} // end-of-function


function
ats2phppre_stream2list_rev($arg0)
{
//
  $tmpret28 = NULL;
  $tmp34 = NULL;
//
  __patsflab_stream2list_rev:
  $tmp34 = NULL;
  $tmpret28 = _ats2jspre_stream_loop_14($arg0, $tmp34);
  return $tmpret28;
} // end-of-function


function
_ats2jspre_stream_loop_14($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret29 = NULL;
  $tmp30 = NULL;
  $tmp31 = NULL;
  $tmp32 = NULL;
  $tmp33 = NULL;
//
  __patsflab__ats2jspre_stream_loop_14:
  $tmp30 = ATSPMVlazyval_eval($arg0); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab12:
    if(ATSCKptriscons($tmp30)) goto __atstmplab15;
    __atstmplab13:
    $tmpret29 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab14:
    __atstmplab15:
    $tmp31 = $tmp30[0];
    $tmp32 = $tmp30[1];
    $tmp33 = array($tmp31, $arg1);
    // ATStailcalseq_beg
    $apy0 = $tmp32;
    $apy1 = $tmp33;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2jspre_stream_loop_14;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret29;
} // end-of-function


function
ats2phppre_stream_takeLte($arg0, $arg1)
{
//
  $tmpret35 = NULL;
//
  __patsflab_stream_takeLte:
  $tmpret35 = ATSPMVllazyval(_ats2jspre_stream_patsfun_16__closurerize($arg0, $arg1));
  return $tmpret35;
} // end-of-function


function
_ats2jspre_stream_patsfun_16($env0, $env1, $arg0)
{
//
  $tmpret36 = NULL;
  $tmp37 = NULL;
  $tmp38 = NULL;
  $tmp39 = NULL;
  $tmp40 = NULL;
  $tmp41 = NULL;
  $tmp42 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_16:
  if($arg0) {
    $tmp37 = ats2phppre_gt_int1_int1($env1, 0);
    if($tmp37) {
      $tmp38 = ATSPMVlazyval_eval($env0); 
      // ATScaseofseq_beg
      do {
        // ATSbranchseq_beg
        __atstmplab16:
        if(ATSCKptriscons($tmp38)) goto __atstmplab19;
        __atstmplab17:
        $tmpret36 = NULL;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        __atstmplab18:
        __atstmplab19:
        $tmp39 = $tmp38[0];
        $tmp40 = $tmp38[1];
        $tmp42 = ats2phppre_sub_int1_int1($env1, 1);
        $tmp41 = ats2phppre_stream_takeLte($tmp40, $tmp42);
        $tmpret36 = array($tmp39, $tmp41);
        break;
        // ATSbranchseq_end
      } while(0);
      // ATScaseofseq_end
    } else {
      $tmpret36 = NULL;
    } // endif
  } else {
  } // endif
  return $tmpret36;
} // end-of-function


function
ats2phppre_stream_take_opt($arg0, $arg1)
{
//
  $tmpret43 = NULL;
  $tmp52 = NULL;
//
  __patsflab_stream_take_opt:
  $tmp52 = NULL;
  $tmpret43 = _ats2jspre_stream_auxmain_18($arg1, $arg0, 0, $tmp52);
  return $tmpret43;
} // end-of-function


function
_ats2jspre_stream_auxmain_18($env0, $arg0, $arg1, $arg2)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $tmpret44 = NULL;
  $tmp45 = NULL;
  $tmp46 = NULL;
  $tmp47 = NULL;
  $tmp48 = NULL;
  $tmp49 = NULL;
  $tmp50 = NULL;
  $tmp51 = NULL;
//
  __patsflab__ats2jspre_stream_auxmain_18:
  $tmp45 = ats2phppre_lt_int1_int1($arg1, $env0);
  if($tmp45) {
    $tmp46 = ATSPMVlazyval_eval($arg0); 
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab20:
      if(ATSCKptriscons($tmp46)) goto __atstmplab23;
      __atstmplab21:
      $tmpret44 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab22:
      __atstmplab23:
      $tmp47 = $tmp46[0];
      $tmp48 = $tmp46[1];
      $tmp49 = ats2phppre_add_int1_int1($arg1, 1);
      $tmp50 = array($tmp47, $arg2);
      // ATStailcalseq_beg
      $apy0 = $tmp48;
      $apy1 = $tmp49;
      $apy2 = $tmp50;
      $arg0 = $apy0;
      $arg1 = $apy1;
      $arg2 = $apy2;
      goto __patsflab__ats2jspre_stream_auxmain_18;
      // ATStailcalseq_end
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
  } else {
    $tmp51 = ats2phppre_list_reverse($arg2);
    $tmpret44 = array($tmp51);
  } // endif
  return $tmpret44;
} // end-of-function


function
ats2phppre_stream_drop_opt($arg0, $arg1)
{
//
  $tmpret53 = NULL;
//
  __patsflab_stream_drop_opt:
  $tmpret53 = _ats2jspre_stream_auxmain_20($arg1, $arg0, 0);
  return $tmpret53;
} // end-of-function


function
_ats2jspre_stream_auxmain_20($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret54 = NULL;
  $tmp55 = NULL;
  $tmp56 = NULL;
  $tmp58 = NULL;
  $tmp59 = NULL;
//
  __patsflab__ats2jspre_stream_auxmain_20:
  $tmp55 = ats2phppre_lt_int1_int1($arg1, $env0);
  if($tmp55) {
    $tmp56 = ATSPMVlazyval_eval($arg0); 
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab24:
      if(ATSCKptriscons($tmp56)) goto __atstmplab27;
      __atstmplab25:
      $tmpret54 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab26:
      __atstmplab27:
      $tmp58 = $tmp56[1];
      $tmp59 = ats2phppre_add_int1_int1($arg1, 1);
      // ATStailcalseq_beg
      $apy0 = $tmp58;
      $apy1 = $tmp59;
      $arg0 = $apy0;
      $arg1 = $apy1;
      goto __patsflab__ats2jspre_stream_auxmain_20;
      // ATStailcalseq_end
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
  } else {
    $tmpret54 = array($arg0);
  } // endif
  return $tmpret54;
} // end-of-function


function
ats2phppre_stream_append($arg0, $arg1)
{
//
  $tmpret60 = NULL;
//
  __patsflab_stream_append:
  $tmpret60 = ATSPMVlazyval(_ats2jspre_stream_patsfun_22__closurerize($arg0, $arg1));
  return $tmpret60;
} // end-of-function


function
_ats2jspre_stream_patsfun_22($env0, $env1)
{
//
  $tmpret61 = NULL;
  $tmp62 = NULL;
  $tmp63 = NULL;
  $tmp64 = NULL;
  $tmp65 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_22:
  $tmp62 = ATSPMVlazyval_eval($env0); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab28:
    if(ATSCKptriscons($tmp62)) goto __atstmplab31;
    __atstmplab29:
    $tmpret61 = ATSPMVlazyval_eval($env1); 
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab30:
    __atstmplab31:
    $tmp63 = $tmp62[0];
    $tmp64 = $tmp62[1];
    $tmp65 = ats2phppre_stream_append($tmp64, $env1);
    $tmpret61 = array($tmp63, $tmp65);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret61;
} // end-of-function


function
ats2phppre_stream_concat($arg0)
{
//
  $tmpret66 = NULL;
//
  __patsflab_stream_concat:
  $tmpret66 = ATSPMVlazyval(_ats2jspre_stream_patsfun_24__closurerize($arg0));
  return $tmpret66;
} // end-of-function


function
_ats2jspre_stream_patsfun_24($env0)
{
//
  $tmpret67 = NULL;
  $tmp68 = NULL;
  $tmp69 = NULL;
  $tmp70 = NULL;
  $tmp71 = NULL;
  $tmp72 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_24:
  $tmp68 = ATSPMVlazyval_eval($env0); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab32:
    if(ATSCKptriscons($tmp68)) goto __atstmplab35;
    __atstmplab33:
    $tmpret67 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab34:
    __atstmplab35:
    $tmp69 = $tmp68[0];
    $tmp70 = $tmp68[1];
    $tmp72 = ats2phppre_stream_concat($tmp70);
    $tmp71 = ats2phppre_stream_append($tmp69, $tmp72);
    $tmpret67 = ATSPMVlazyval_eval($tmp71); 
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret67;
} // end-of-function


function
ats2phppre_stream_map_cloref($arg0, $arg1)
{
//
  $tmpret73 = NULL;
//
  __patsflab_stream_map_cloref:
  $tmpret73 = ATSPMVlazyval(_ats2jspre_stream_patsfun_26__closurerize($arg0, $arg1));
  return $tmpret73;
} // end-of-function


function
_ats2jspre_stream_patsfun_26($env0, $env1)
{
//
  $tmpret74 = NULL;
  $tmp75 = NULL;
  $tmp76 = NULL;
  $tmp77 = NULL;
  $tmp78 = NULL;
  $tmp79 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_26:
  $tmp75 = ATSPMVlazyval_eval($env0); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab36:
    if(ATSCKptriscons($tmp75)) goto __atstmplab39;
    __atstmplab37:
    $tmpret74 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab38:
    __atstmplab39:
    $tmp76 = $tmp75[0];
    $tmp77 = $tmp75[1];
    $tmp78 = $env1[0]($env1, $tmp76);
    $tmp79 = ats2phppre_stream_map_cloref($tmp77, $env1);
    $tmpret74 = array($tmp78, $tmp79);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret74;
} // end-of-function


function
ats2phppre_stream_map_method($arg0, $arg1)
{
//
  $tmpret80 = NULL;
//
  __patsflab_stream_map_method:
  $tmpret80 = _ats2jspre_stream_patsfun_28__closurerize($arg0);
  return $tmpret80;
} // end-of-function


function
_ats2jspre_stream_patsfun_28($env0, $arg0)
{
//
  $tmpret81 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_28:
  $tmpret81 = ats2phppre_stream_map_cloref($env0, $arg0);
  return $tmpret81;
} // end-of-function


function
ats2phppre_stream_filter_cloref($arg0, $arg1)
{
//
  $tmpret82 = NULL;
//
  __patsflab_stream_filter_cloref:
  $tmpret82 = ATSPMVlazyval(_ats2jspre_stream_patsfun_30__closurerize($arg0, $arg1));
  return $tmpret82;
} // end-of-function


function
_ats2jspre_stream_patsfun_30($env0, $env1)
{
//
  $tmpret83 = NULL;
  $tmp84 = NULL;
  $tmp85 = NULL;
  $tmp86 = NULL;
  $tmp87 = NULL;
  $tmp88 = NULL;
  $tmp89 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_30:
  $tmp84 = ATSPMVlazyval_eval($env0); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab40:
    if(ATSCKptriscons($tmp84)) goto __atstmplab43;
    __atstmplab41:
    $tmpret83 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab42:
    __atstmplab43:
    $tmp85 = $tmp84[0];
    $tmp86 = $tmp84[1];
    $tmp87 = $env1[0]($env1, $tmp85);
    if($tmp87) {
      $tmp88 = ats2phppre_stream_filter_cloref($tmp86, $env1);
      $tmpret83 = array($tmp85, $tmp88);
    } else {
      $tmp89 = ats2phppre_stream_filter_cloref($tmp86, $env1);
      $tmpret83 = ATSPMVlazyval_eval($tmp89); 
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret83;
} // end-of-function


function
ats2phppre_stream_filter_method($arg0)
{
//
  $tmpret90 = NULL;
//
  __patsflab_stream_filter_method:
  $tmpret90 = _ats2jspre_stream_patsfun_32__closurerize($arg0);
  return $tmpret90;
} // end-of-function


function
_ats2jspre_stream_patsfun_32($env0, $arg0)
{
//
  $tmpret91 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_32:
  $tmpret91 = ats2phppre_stream_filter_cloref($env0, $arg0);
  return $tmpret91;
} // end-of-function


function
ats2phppre_stream_forall_cloref($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret92 = NULL;
  $tmp93 = NULL;
  $tmp94 = NULL;
  $tmp95 = NULL;
  $tmp96 = NULL;
//
  __patsflab_stream_forall_cloref:
  $tmp93 = ATSPMVlazyval_eval($arg0); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab44:
    if(ATSCKptriscons($tmp93)) goto __atstmplab47;
    __atstmplab45:
    $tmpret92 = true;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab46:
    __atstmplab47:
    $tmp94 = $tmp93[0];
    $tmp95 = $tmp93[1];
    $tmp96 = $arg1[0]($arg1, $tmp94);
    if($tmp96) {
      // ATStailcalseq_beg
      $apy0 = $tmp95;
      $apy1 = $arg1;
      $arg0 = $apy0;
      $arg1 = $apy1;
      goto __patsflab_stream_forall_cloref;
      // ATStailcalseq_end
    } else {
      $tmpret92 = false;
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret92;
} // end-of-function


function
ats2phppre_stream_forall_method($arg0)
{
//
  $tmpret97 = NULL;
//
  __patsflab_stream_forall_method:
  $tmpret97 = _ats2jspre_stream_patsfun_35__closurerize($arg0);
  return $tmpret97;
} // end-of-function


function
_ats2jspre_stream_patsfun_35($env0, $arg0)
{
//
  $tmpret98 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_35:
  $tmpret98 = ats2phppre_stream_forall_cloref($env0, $arg0);
  return $tmpret98;
} // end-of-function


function
ats2phppre_stream_exists_cloref($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret99 = NULL;
  $tmp100 = NULL;
  $tmp101 = NULL;
  $tmp102 = NULL;
  $tmp103 = NULL;
//
  __patsflab_stream_exists_cloref:
  $tmp100 = ATSPMVlazyval_eval($arg0); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab48:
    if(ATSCKptriscons($tmp100)) goto __atstmplab51;
    __atstmplab49:
    $tmpret99 = false;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab50:
    __atstmplab51:
    $tmp101 = $tmp100[0];
    $tmp102 = $tmp100[1];
    $tmp103 = $arg1[0]($arg1, $tmp101);
    if($tmp103) {
      $tmpret99 = true;
    } else {
      // ATStailcalseq_beg
      $apy0 = $tmp102;
      $apy1 = $arg1;
      $arg0 = $apy0;
      $arg1 = $apy1;
      goto __patsflab_stream_exists_cloref;
      // ATStailcalseq_end
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret99;
} // end-of-function


function
ats2phppre_stream_exists_method($arg0)
{
//
  $tmpret104 = NULL;
//
  __patsflab_stream_exists_method:
  $tmpret104 = _ats2jspre_stream_patsfun_38__closurerize($arg0);
  return $tmpret104;
} // end-of-function


function
_ats2jspre_stream_patsfun_38($env0, $arg0)
{
//
  $tmpret105 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_38:
  $tmpret105 = ats2phppre_stream_exists_cloref($env0, $arg0);
  return $tmpret105;
} // end-of-function


function
ats2phppre_stream_foreach_cloref($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmp107 = NULL;
  $tmp108 = NULL;
  $tmp109 = NULL;
//
  __patsflab_stream_foreach_cloref:
  $tmp107 = ATSPMVlazyval_eval($arg0); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab52:
    if(ATSCKptriscons($tmp107)) goto __atstmplab55;
    __atstmplab53:
    // ATSINSmove_void;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab54:
    __atstmplab55:
    $tmp108 = $tmp107[0];
    $tmp109 = $tmp107[1];
    $arg1[0]($arg1, $tmp108);
    // ATStailcalseq_beg
    $apy0 = $tmp109;
    $apy1 = $arg1;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab_stream_foreach_cloref;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return/*_void*/;
} // end-of-function


function
ats2phppre_stream_foreach_method($arg0)
{
//
  $tmpret111 = NULL;
//
  __patsflab_stream_foreach_method:
  $tmpret111 = _ats2jspre_stream_patsfun_41__closurerize($arg0);
  return $tmpret111;
} // end-of-function


function
_ats2jspre_stream_patsfun_41($env0, $arg0)
{
//
//
  __patsflab__ats2jspre_stream_patsfun_41:
  ats2phppre_stream_foreach_cloref($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_stream_iforeach_cloref($arg0, $arg1)
{
//
//
  __patsflab_stream_iforeach_cloref:
  _ats2jspre_stream_loop_43($arg1, 0, $arg0);
  return/*_void*/;
} // end-of-function


function
_ats2jspre_stream_loop_43($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmp115 = NULL;
  $tmp116 = NULL;
  $tmp117 = NULL;
  $tmp119 = NULL;
//
  __patsflab__ats2jspre_stream_loop_43:
  $tmp115 = ATSPMVlazyval_eval($arg1); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab56:
    if(ATSCKptriscons($tmp115)) goto __atstmplab59;
    __atstmplab57:
    // ATSINSmove_void;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab58:
    __atstmplab59:
    $tmp116 = $tmp115[0];
    $tmp117 = $tmp115[1];
    $env0[0]($env0, $arg0, $tmp116);
    $tmp119 = ats2phppre_add_int1_int1($arg0, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp119;
    $apy1 = $tmp117;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2jspre_stream_loop_43;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return/*_void*/;
} // end-of-function


function
ats2phppre_stream_iforeach_method($arg0)
{
//
  $tmpret120 = NULL;
//
  __patsflab_stream_iforeach_method:
  $tmpret120 = _ats2jspre_stream_patsfun_45__closurerize($arg0);
  return $tmpret120;
} // end-of-function


function
_ats2jspre_stream_patsfun_45($env0, $arg0)
{
//
//
  __patsflab__ats2jspre_stream_patsfun_45:
  ats2phppre_stream_iforeach_cloref($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_stream_tabulate_cloref($arg0)
{
//
  $tmpret122 = NULL;
//
  __patsflab_stream_tabulate_cloref:
  $tmpret122 = _ats2jspre_stream_auxmain_47($arg0, 0);
  return $tmpret122;
} // end-of-function


function
_ats2jspre_stream_auxmain_47($env0, $arg0)
{
//
  $tmpret123 = NULL;
//
  __patsflab__ats2jspre_stream_auxmain_47:
  $tmpret123 = ATSPMVlazyval(_ats2jspre_stream_patsfun_48__closurerize($env0, $arg0));
  return $tmpret123;
} // end-of-function


function
_ats2jspre_stream_patsfun_48($env0, $env1)
{
//
  $tmpret124 = NULL;
  $tmp125 = NULL;
  $tmp126 = NULL;
  $tmp127 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_48:
  $tmp125 = $env0[0]($env0, $env1);
  $tmp127 = ats2phppre_add_int1_int1($env1, 1);
  $tmp126 = _ats2jspre_stream_auxmain_47($env0, $tmp127);
  $tmpret124 = array($tmp125, $tmp126);
  return $tmpret124;
} // end-of-function


function
ats2phppre_cross_stream_list($arg0, $arg1)
{
//
  $tmpret128 = NULL;
//
  __patsflab_cross_stream_list:
  $tmpret128 = ATSPMVlazyval(_ats2jspre_stream_patsfun_52__closurerize($arg0, $arg1));
  return $tmpret128;
} // end-of-function


function
_ats2jspre_stream_auxmain_50($arg0, $arg1, $arg2, $arg3)
{
//
  $tmpret129 = NULL;
//
  __patsflab__ats2jspre_stream_auxmain_50:
  $tmpret129 = ATSPMVlazyval(_ats2jspre_stream_patsfun_51__closurerize($arg0, $arg1, $arg2, $arg3));
  return $tmpret129;
} // end-of-function


function
_ats2jspre_stream_patsfun_51($env0, $env1, $env2, $env3)
{
//
  $tmpret130 = NULL;
  $tmp131 = NULL;
  $tmp132 = NULL;
  $tmp133 = NULL;
  $tmp134 = NULL;
  $tmp135 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_51:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab60:
    if(ATSCKptriscons($env3)) goto __atstmplab63;
    __atstmplab61:
    $tmp133 = ats2phppre_cross_stream_list($env1, $env2);
    $tmpret130 = ATSPMVlazyval_eval($tmp133); 
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab62:
    __atstmplab63:
    $tmp131 = $env3[0];
    $tmp132 = $env3[1];
    $tmp134 = array($env0, $tmp131);
    $tmp135 = _ats2jspre_stream_auxmain_50($env0, $env1, $env2, $tmp132);
    $tmpret130 = array($tmp134, $tmp135);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret130;
} // end-of-function


function
_ats2jspre_stream_patsfun_52($env0, $env1)
{
//
  $tmpret136 = NULL;
  $tmp137 = NULL;
  $tmp138 = NULL;
  $tmp139 = NULL;
  $tmp140 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_52:
  $tmp137 = ATSPMVlazyval_eval($env0); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab64:
    if(ATSCKptriscons($tmp137)) goto __atstmplab67;
    __atstmplab65:
    $tmpret136 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab66:
    if(ATSCKptrisnull($tmp137)) ATSINScaseof_fail("/home/hwxi/Research/ATS-Postiats/contrib/libatscc/ATS2-0.3.2/DATS/stream.dats: 7014(line=463, offs=1) -- 7106(line=465, offs=50)");
    __atstmplab67:
    $tmp138 = $tmp137[0];
    $tmp139 = $tmp137[1];
    $tmp140 = _ats2jspre_stream_auxmain_50($tmp138, $tmp139, $env1, $env1);
    $tmpret136 = ATSPMVlazyval_eval($tmp140); 
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret136;
} // end-of-function


function
ats2phppre_cross_stream_list0($arg0, $arg1)
{
//
  $tmpret141 = NULL;
//
  __patsflab_cross_stream_list0:
  $tmpret141 = ats2phppre_cross_stream_list($arg0, $arg1);
  return $tmpret141;
} // end-of-function


function
ats2phppre_stream2cloref_exn($arg0)
{
//
  $tmpret142 = NULL;
  $tmp143 = NULL;
//
  __patsflab_stream2cloref_exn:
  $tmp143 = ats2phppre_ref($arg0);
  $tmpret142 = _ats2jspre_stream_patsfun_55__closurerize($tmp143);
  return $tmpret142;
} // end-of-function


function
_ats2jspre_stream_patsfun_55($env0)
{
//
  $tmpret144 = NULL;
  $tmp145 = NULL;
  $tmp146 = NULL;
  $tmp147 = NULL;
  $tmp148 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_55:
  $tmp145 = ats2phppre_ref_get_elt($env0);
  $tmp146 = ATSPMVlazyval_eval($tmp145); 
  if(ATSCKptrisnull($tmp146)) ATSINScaseof_fail("/home/hwxi/Research/ATS-Postiats/contrib/libatscc/ATS2-0.3.2/DATS/stream.dats: 7407(line=491, offs=5) -- 7431(line=491, offs=29)");
  $tmp147 = $tmp146[0];
  $tmp148 = $tmp146[1];
  ats2phppre_ref_set_elt($env0, $tmp148);
  $tmpret144 = $tmp147;
  return $tmpret144;
} // end-of-function


function
ats2phppre_stream2cloref_opt($arg0)
{
//
  $tmpret150 = NULL;
  $tmp151 = NULL;
//
  __patsflab_stream2cloref_opt:
  $tmp151 = ats2phppre_ref($arg0);
  $tmpret150 = _ats2jspre_stream_patsfun_57__closurerize($tmp151);
  return $tmpret150;
} // end-of-function


function
_ats2jspre_stream_patsfun_57($env0)
{
//
  $tmpret152 = NULL;
  $tmp153 = NULL;
  $tmp154 = NULL;
  $tmp155 = NULL;
  $tmp156 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_57:
  $tmp153 = ats2phppre_ref_get_elt($env0);
  $tmp154 = ATSPMVlazyval_eval($tmp153); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab68:
    if(ATSCKptriscons($tmp154)) goto __atstmplab71;
    __atstmplab69:
    $tmpret152 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab70:
    __atstmplab71:
    $tmp155 = $tmp154[0];
    $tmp156 = $tmp154[1];
    ats2phppre_ref_set_elt($env0, $tmp156);
    $tmpret152 = array($tmp155);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret152;
} // end-of-function


function
ats2phppre_stream2cloref_last($arg0, $arg1)
{
//
  $tmpret158 = NULL;
  $tmp159 = NULL;
  $tmp160 = NULL;
//
  __patsflab_stream2cloref_last:
  $tmp159 = ats2phppre_ref($arg0);
  $tmp160 = ats2phppre_ref($arg1);
  $tmpret158 = _ats2jspre_stream_patsfun_59__closurerize($tmp159, $tmp160);
  return $tmpret158;
} // end-of-function


function
_ats2jspre_stream_patsfun_59($env0, $env1)
{
//
  $tmpret161 = NULL;
  $tmp162 = NULL;
  $tmp163 = NULL;
  $tmp164 = NULL;
  $tmp165 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_59:
  $tmp162 = ats2phppre_ref_get_elt($env0);
  $tmp163 = ATSPMVlazyval_eval($tmp162); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab72:
    if(ATSCKptriscons($tmp163)) goto __atstmplab75;
    __atstmplab73:
    $tmpret161 = ats2phppre_ref_get_elt($env1);
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab74:
    __atstmplab75:
    $tmp164 = $tmp163[0];
    $tmp165 = $tmp163[1];
    ats2phppre_ref_set_elt($env0, $tmp165);
    ats2phppre_ref_set_elt($env1, $tmp164);
    $tmpret161 = $tmp164;
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret161;
} // end-of-function


function
ats2phppre_stream_take_while_cloref($arg0, $arg1)
{
//
  $tmpret168 = NULL;
  $tmp169 = NULL;
  $tmp170 = NULL;
  $tmp171 = NULL;
  $tmp172 = NULL;
//
  __patsflab_stream_take_while_cloref:
  $tmp169 = ats2phppre_stream_rtake_while_cloref($arg0, $arg1);
  $tmp170 = $tmp169[0];
  $tmp171 = $tmp169[1];
  $tmp172 = ats2phppre_list_reverse($tmp171);
  $tmpret168 = array($tmp170, $tmp172);
  return $tmpret168;
} // end-of-function


function
ats2phppre_stream_rtake_while_cloref($arg0, $arg1)
{
//
  $tmpret173 = NULL;
  $tmp181 = NULL;
//
  __patsflab_stream_rtake_while_cloref:
  $tmp181 = NULL;
  $tmpret173 = _ats2jspre_stream_loop_62($arg1, $arg0, 0, $tmp181);
  return $tmpret173;
} // end-of-function


function
_ats2jspre_stream_loop_62($env0, $arg0, $arg1, $arg2)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $tmpret174 = NULL;
  $tmp175 = NULL;
  $tmp176 = NULL;
  $tmp177 = NULL;
  $tmp178 = NULL;
  $tmp179 = NULL;
  $tmp180 = NULL;
//
  __patsflab__ats2jspre_stream_loop_62:
  $tmp175 = ATSPMVlazyval_eval($arg0); 
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab76:
    if(ATSCKptriscons($tmp175)) goto __atstmplab79;
    __atstmplab77:
    $tmpret174 = array($arg0, $arg2);
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab78:
    __atstmplab79:
    $tmp176 = $tmp175[0];
    $tmp177 = $tmp175[1];
    $tmp178 = $env0[0]($env0, $arg1, $tmp176);
    if($tmp178) {
      $tmp179 = ats2phppre_add_int1_int1($arg1, 1);
      $tmp180 = array($tmp176, $arg2);
      // ATStailcalseq_beg
      $apy0 = $tmp177;
      $apy1 = $tmp179;
      $apy2 = $tmp180;
      $arg0 = $apy0;
      $arg1 = $apy1;
      $arg2 = $apy2;
      goto __patsflab__ats2jspre_stream_loop_62;
      // ATStailcalseq_end
    } else {
      $tmpret174 = array($arg0, $arg2);
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret174;
} // end-of-function


function
ats2phppre_stream_take_until_cloref($arg0, $arg1)
{
//
  $tmpret182 = NULL;
//
  __patsflab_stream_take_until_cloref:
  $tmpret182 = ats2phppre_stream_take_while_cloref($arg0, _ats2jspre_stream_patsfun_64__closurerize($arg1));
  return $tmpret182;
} // end-of-function


function
_ats2jspre_stream_patsfun_64($env0, $arg0, $arg1)
{
//
  $tmpret183 = NULL;
  $tmp184 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_64:
  $tmp184 = $env0[0]($env0, $arg0, $arg1);
  $tmpret183 = atspre_neg_bool0($tmp184);
  return $tmpret183;
} // end-of-function


function
ats2phppre_stream_rtake_until_cloref($arg0, $arg1)
{
//
  $tmpret185 = NULL;
//
  __patsflab_stream_rtake_until_cloref:
  $tmpret185 = ats2phppre_stream_rtake_while_cloref($arg0, _ats2jspre_stream_patsfun_66__closurerize($arg1));
  return $tmpret185;
} // end-of-function


function
_ats2jspre_stream_patsfun_66($env0, $arg0, $arg1)
{
//
  $tmpret186 = NULL;
  $tmp187 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_66:
  $tmp187 = $env0[0]($env0, $arg0, $arg1);
  $tmpret186 = atspre_neg_bool0($tmp187);
  return $tmpret186;
} // end-of-function


function
ats2phppre_stream_list_xprod2($arg0, $arg1)
{
//
  $tmpret188 = NULL;
//
  __patsflab_stream_list_xprod2:
  $tmpret188 = _ats2jspre_stream_auxlst_70($arg0, $arg1);
  return $tmpret188;
} // end-of-function


function
_ats2jspre_stream_aux_68($arg0, $arg1)
{
//
  $tmpret189 = NULL;
//
  __patsflab__ats2jspre_stream_aux_68:
  $tmpret189 = ATSPMVlazyval(_ats2jspre_stream_patsfun_69__closurerize($arg0, $arg1));
  return $tmpret189;
} // end-of-function


function
_ats2jspre_stream_patsfun_69($env0, $env1)
{
//
  $tmpret190 = NULL;
  $tmp191 = NULL;
  $tmp192 = NULL;
  $tmp193 = NULL;
  $tmp194 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_69:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab80:
    if(ATSCKptriscons($env1)) goto __atstmplab83;
    __atstmplab81:
    $tmpret190 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab82:
    __atstmplab83:
    $tmp191 = $env1[0];
    $tmp192 = $env1[1];
    $tmp193 = array($env0, $tmp191);
    $tmp194 = _ats2jspre_stream_aux_68($env0, $tmp192);
    $tmpret190 = array($tmp193, $tmp194);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret190;
} // end-of-function


function
_ats2jspre_stream_auxlst_70($arg0, $arg1)
{
//
  $tmpret195 = NULL;
//
  __patsflab__ats2jspre_stream_auxlst_70:
  $tmpret195 = ATSPMVlazyval(_ats2jspre_stream_patsfun_71__closurerize($arg0, $arg1));
  return $tmpret195;
} // end-of-function


function
_ats2jspre_stream_patsfun_71($env0, $env1)
{
//
  $tmpret196 = NULL;
  $tmp197 = NULL;
  $tmp198 = NULL;
  $tmp199 = NULL;
  $tmp200 = NULL;
  $tmp201 = NULL;
//
  __patsflab__ats2jspre_stream_patsfun_71:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab84:
    if(ATSCKptriscons($env0)) goto __atstmplab87;
    __atstmplab85:
    $tmpret196 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab86:
    __atstmplab87:
    $tmp197 = $env0[0];
    $tmp198 = $env0[1];
    $tmp200 = _ats2jspre_stream_aux_68($tmp197, $env1);
    $tmp201 = _ats2jspre_stream_auxlst_70($tmp198, $env1);
    $tmp199 = ats2phppre_stream_append($tmp200, $tmp201);
    $tmpret196 = ATSPMVlazyval_eval($tmp199); 
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret196;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/
function
_ats2phppre_stream_vt_patsfun_10__closurerize($env0)
{
  return array(function($cenv) { return _ats2phppre_stream_vt_patsfun_10($cenv[1]); }, $env0);
}

function
_ats2phppre_stream_vt_patsfun_13__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_13($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2phppre_stream_vt_patsfun_21__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_21($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2phppre_stream_vt_patsfun_24__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_24($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_stream_vt_patsfun_27__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_27($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2phppre_stream_vt_patsfun_29__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_29($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_stream_vt_patsfun_32__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_32($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2phppre_stream_vt_patsfun_34__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_34($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_stream_vt_patsfun_37__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_37($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2phppre_stream_vt_patsfun_39__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_39($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_stream_vt_patsfun_43__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_43($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_stream_vt_patsfun_47__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_47($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_stream_vt_patsfun_51__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_51($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_stream_vt_patsfun_55__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_55($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_stream_vt_patsfun_59__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_59($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_stream_vt_patsfun_62__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_stream_vt_patsfun_62($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}


function
ats2phppre_stream_vt_free($arg0)
{
//
//
  __patsflab_stream_vt_free:
  atspre_lazy_vt_free($arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_stream_vt2t($arg0)
{
//
  $tmpret11 = NULL;
//
  __patsflab_stream_vt2t:
  $tmpret11 = _ats2phppre_stream_vt_aux_9($arg0);
  return $tmpret11;
} // end-of-function


function
_ats2phppre_stream_vt_aux_9($arg0)
{
//
  $tmpret12 = NULL;
//
  __patsflab__ats2phppre_stream_vt_aux_9:
  $tmpret12 = ATSPMVlazyval(_ats2phppre_stream_vt_patsfun_10__closurerize($arg0));
  return $tmpret12;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_10($env0)
{
//
  $tmpret13 = NULL;
  $tmp14 = NULL;
  $tmp15 = NULL;
  $tmp16 = NULL;
  $tmp17 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_10:
  $tmp14 = ATSPMVllazyval_eval($env0);
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab0:
    if(ATSCKptriscons($tmp14)) goto __atstmplab3;
    __atstmplab1:
    $tmpret13 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab2:
    __atstmplab3:
    $tmp15 = $tmp14[0];
    $tmp16 = $tmp14[1];
    // ATSINSfreecon($tmp14);
    $tmp17 = _ats2phppre_stream_vt_aux_9($tmp16);
    $tmpret13 = array($tmp15, $tmp17);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret13;
} // end-of-function


function
ats2phppre_stream_vt_takeLte($arg0, $arg1)
{
//
  $tmpret18 = NULL;
//
  __patsflab_stream_vt_takeLte:
  $tmpret18 = _ats2phppre_stream_vt_auxmain_12($arg0, $arg1);
  return $tmpret18;
} // end-of-function


function
_ats2phppre_stream_vt_auxmain_12($arg0, $arg1)
{
//
  $tmpret19 = NULL;
//
  __patsflab__ats2phppre_stream_vt_auxmain_12:
  $tmpret19 = ATSPMVllazyval(_ats2phppre_stream_vt_patsfun_13__closurerize($arg0, $arg1));
  return $tmpret19;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_13($env0, $env1, $arg0)
{
//
  $tmpret20 = NULL;
  $tmp21 = NULL;
  $tmp22 = NULL;
  $tmp23 = NULL;
  $tmp24 = NULL;
  $tmp25 = NULL;
  $tmp26 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_13:
  if($arg0) {
    $tmp21 = ats2phppre_gt_int1_int1($env1, 0);
    if($tmp21) {
      $tmp22 = ATSPMVllazyval_eval($env0);
      // ATScaseofseq_beg
      do {
        // ATSbranchseq_beg
        __atstmplab4:
        if(ATSCKptriscons($tmp22)) goto __atstmplab7;
        __atstmplab5:
        $tmpret20 = NULL;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        __atstmplab6:
        __atstmplab7:
        $tmp23 = $tmp22[0];
        $tmp24 = $tmp22[1];
        // ATSINSfreecon($tmp22);
        $tmp26 = ats2phppre_sub_int1_int1($env1, 1);
        $tmp25 = _ats2phppre_stream_vt_auxmain_12($tmp24, $tmp26);
        $tmpret20 = array($tmp23, $tmp25);
        break;
        // ATSbranchseq_end
      } while(0);
      // ATScaseofseq_end
    } else {
      atspre_lazy_vt_free($env0);
      $tmpret20 = NULL;
    } // endif
  } else {
    atspre_lazy_vt_free($env0);
  } // endif
  return $tmpret20;
} // end-of-function


function
ats2phppre_stream_vt_length($arg0)
{
//
  $tmpret29 = NULL;
//
  __patsflab_stream_vt_length:
  $tmpret29 = _ats2phppre_stream_vt_loop_15($arg0, 0);
  return $tmpret29;
} // end-of-function


function
_ats2phppre_stream_vt_loop_15($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret30 = NULL;
  $tmp31 = NULL;
  $tmp33 = NULL;
  $tmp34 = NULL;
//
  __patsflab__ats2phppre_stream_vt_loop_15:
  $tmp31 = ATSPMVllazyval_eval($arg0);
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab8:
    if(ATSCKptriscons($tmp31)) goto __atstmplab11;
    __atstmplab9:
    $tmpret30 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab10:
    __atstmplab11:
    $tmp33 = $tmp31[1];
    // ATSINSfreecon($tmp31);
    $tmp34 = ats2phppre_add_int1_int1($arg1, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp33;
    $apy1 = $tmp34;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_stream_vt_loop_15;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret30;
} // end-of-function


function
ats2phppre_stream2list_vt($arg0)
{
//
  $tmpret35 = NULL;
  $tmp36 = NULL;
//
  __patsflab_stream2list_vt:
  $tmp36 = ats2phppre_stream2list_vt_rev($arg0);
  $tmpret35 = ats2phppre_list_vt_reverse($tmp36);
  return $tmpret35;
} // end-of-function


function
ats2phppre_stream2list_vt_rev($arg0)
{
//
  $tmpret37 = NULL;
  $tmp43 = NULL;
//
  __patsflab_stream2list_vt_rev:
  $tmp43 = NULL;
  $tmpret37 = _ats2phppre_stream_vt_loop_18($arg0, $tmp43);
  return $tmpret37;
} // end-of-function


function
_ats2phppre_stream_vt_loop_18($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret38 = NULL;
  $tmp39 = NULL;
  $tmp40 = NULL;
  $tmp41 = NULL;
  $tmp42 = NULL;
//
  __patsflab__ats2phppre_stream_vt_loop_18:
  $tmp39 = ATSPMVllazyval_eval($arg0);
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab12:
    if(ATSCKptriscons($tmp39)) goto __atstmplab15;
    __atstmplab13:
    $tmpret38 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab14:
    __atstmplab15:
    $tmp40 = $tmp39[0];
    $tmp41 = $tmp39[1];
    // ATSINSfreecon($tmp39);
    $tmp42 = array($tmp40, $arg1);
    // ATStailcalseq_beg
    $apy0 = $tmp41;
    $apy1 = $tmp42;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_stream_vt_loop_18;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret38;
} // end-of-function


function
ats2phppre_stream_vt_append($arg0, $arg1)
{
//
  $tmpret44 = NULL;
//
  __patsflab_stream_vt_append:
  $tmpret44 = _ats2phppre_stream_vt_auxmain_20($arg0, $arg1);
  return $tmpret44;
} // end-of-function


function
_ats2phppre_stream_vt_auxmain_20($arg0, $arg1)
{
//
  $tmpret45 = NULL;
//
  __patsflab__ats2phppre_stream_vt_auxmain_20:
  $tmpret45 = ATSPMVllazyval(_ats2phppre_stream_vt_patsfun_21__closurerize($arg0, $arg1));
  return $tmpret45;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_21($env0, $env1, $arg0)
{
//
  $tmpret46 = NULL;
  $tmp47 = NULL;
  $tmp48 = NULL;
  $tmp49 = NULL;
  $tmp50 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_21:
  if($arg0) {
    $tmp47 = ATSPMVllazyval_eval($env0);
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab16:
      if(ATSCKptriscons($tmp47)) goto __atstmplab19;
      __atstmplab17:
      $tmpret46 = ATSPMVllazyval_eval($env1);
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab18:
      __atstmplab19:
      $tmp48 = $tmp47[0];
      $tmp49 = $tmp47[1];
      // ATSINSfreecon($tmp47);
      $tmp50 = _ats2phppre_stream_vt_auxmain_20($tmp49, $env1);
      $tmpret46 = array($tmp48, $tmp50);
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
  } else {
    atspre_lazy_vt_free($env0);
    atspre_lazy_vt_free($env1);
  } // endif
  return $tmpret46;
} // end-of-function


function
ats2phppre_stream_vt_concat($arg0)
{
//
  $tmpret53 = NULL;
//
  __patsflab_stream_vt_concat:
  $tmpret53 = _ats2phppre_stream_vt_auxmain_23($arg0);
  return $tmpret53;
} // end-of-function


function
_ats2phppre_stream_vt_auxmain_23($arg0)
{
//
  $tmpret54 = NULL;
//
  __patsflab__ats2phppre_stream_vt_auxmain_23:
  $tmpret54 = ATSPMVllazyval(_ats2phppre_stream_vt_patsfun_24__closurerize($arg0));
  return $tmpret54;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_24($env0, $arg0)
{
//
  $tmpret55 = NULL;
  $tmp56 = NULL;
  $tmp57 = NULL;
  $tmp58 = NULL;
  $tmp59 = NULL;
  $tmp60 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_24:
  if($arg0) {
    $tmp56 = ATSPMVllazyval_eval($env0);
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab20:
      if(ATSCKptriscons($tmp56)) goto __atstmplab23;
      __atstmplab21:
      $tmpret55 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab22:
      __atstmplab23:
      $tmp57 = $tmp56[0];
      $tmp58 = $tmp56[1];
      // ATSINSfreecon($tmp56);
      $tmp60 = _ats2phppre_stream_vt_auxmain_23($tmp58);
      $tmp59 = ats2phppre_stream_vt_append($tmp57, $tmp60);
      $tmpret55 = ATSPMVllazyval_eval($tmp59);
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
  } else {
    atspre_lazy_vt_free($env0);
  } // endif
  return $tmpret55;
} // end-of-function


function
ats2phppre_stream_vt_map_cloref($arg0, $arg1)
{
//
  $tmpret62 = NULL;
//
  __patsflab_stream_vt_map_cloref:
  $tmpret62 = _ats2phppre_stream_vt_auxmain_26($arg1, $arg0);
  return $tmpret62;
} // end-of-function


function
_ats2phppre_stream_vt_auxmain_26($env0, $arg0)
{
//
  $tmpret63 = NULL;
//
  __patsflab__ats2phppre_stream_vt_auxmain_26:
  $tmpret63 = ATSPMVllazyval(_ats2phppre_stream_vt_patsfun_27__closurerize($env0, $arg0));
  return $tmpret63;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_27($env0, $env1, $arg0)
{
//
  $tmpret64 = NULL;
  $tmp65 = NULL;
  $tmp66 = NULL;
  $tmp67 = NULL;
  $tmp68 = NULL;
  $tmp69 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_27:
  if($arg0) {
    $tmp65 = ATSPMVllazyval_eval($env1);
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab24:
      if(ATSCKptriscons($tmp65)) goto __atstmplab27;
      __atstmplab25:
      $tmpret64 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab26:
      __atstmplab27:
      $tmp66 = $tmp65[0];
      $tmp67 = $tmp65[1];
      // ATSINSfreecon($tmp65);
      $tmp68 = $env0[0]($env0, $tmp66);
      $tmp69 = _ats2phppre_stream_vt_auxmain_26($env0, $tmp67);
      $tmpret64 = array($tmp68, $tmp69);
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
  } else {
    atspre_lazy_vt_free($env1);
  } // endif
  return $tmpret64;
} // end-of-function


function
ats2phppre_stream_vt_map_method($arg0, $arg1)
{
//
  $tmpret71 = NULL;
//
  __patsflab_stream_vt_map_method:
  $tmpret71 = _ats2phppre_stream_vt_patsfun_29__closurerize($arg0);
  return $tmpret71;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_29($env0, $arg0)
{
//
  $tmpret72 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_29:
  $tmpret72 = ats2phppre_stream_vt_map_cloref($env0, $arg0);
  return $tmpret72;
} // end-of-function


function
ats2phppre_stream_vt_mapopt_cloref($arg0, $arg1)
{
//
  $tmpret73 = NULL;
//
  __patsflab_stream_vt_mapopt_cloref:
  $tmpret73 = _ats2phppre_stream_vt_auxmain_31($arg1, $arg0);
  return $tmpret73;
} // end-of-function


function
_ats2phppre_stream_vt_auxmain_31($env0, $arg0)
{
//
  $tmpret74 = NULL;
//
  __patsflab__ats2phppre_stream_vt_auxmain_31:
  $tmpret74 = ATSPMVllazyval(_ats2phppre_stream_vt_patsfun_32__closurerize($env0, $arg0));
  return $tmpret74;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_32($env0, $env1, $arg0)
{
//
  $tmpret75 = NULL;
  $tmp76 = NULL;
  $tmp77 = NULL;
  $tmp78 = NULL;
  $tmp79 = NULL;
  $tmp80 = NULL;
  $tmp81 = NULL;
  $tmp82 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_32:
  if($arg0) {
    $tmp76 = ATSPMVllazyval_eval($env1);
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab28:
      if(ATSCKptriscons($tmp76)) goto __atstmplab31;
      __atstmplab29:
      $tmpret75 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab30:
      __atstmplab31:
      $tmp77 = $tmp76[0];
      $tmp78 = $tmp76[1];
      // ATSINSfreecon($tmp76);
      $tmp79 = $env0[0]($env0, $tmp77);
      // ATScaseofseq_beg
      do {
        // ATSbranchseq_beg
        __atstmplab32:
        if(ATSCKptriscons($tmp79)) goto __atstmplab35;
        __atstmplab33:
        $tmp81 = _ats2phppre_stream_vt_auxmain_31($env0, $tmp78);
        $tmpret75 = ATSPMVllazyval_eval($tmp81);
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        __atstmplab34:
        __atstmplab35:
        $tmp80 = $tmp79[0];
        // ATSINSfreecon($tmp79);
        $tmp82 = _ats2phppre_stream_vt_auxmain_31($env0, $tmp78);
        $tmpret75 = array($tmp80, $tmp82);
        break;
        // ATSbranchseq_end
      } while(0);
      // ATScaseofseq_end
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
  } else {
    atspre_lazy_vt_free($env1);
  } // endif
  return $tmpret75;
} // end-of-function


function
ats2phppre_stream_vt_mapopt_method($arg0, $arg1)
{
//
  $tmpret84 = NULL;
//
  __patsflab_stream_vt_mapopt_method:
  $tmpret84 = _ats2phppre_stream_vt_patsfun_34__closurerize($arg0);
  return $tmpret84;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_34($env0, $arg0)
{
//
  $tmpret85 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_34:
  $tmpret85 = ats2phppre_stream_vt_mapopt_cloref($env0, $arg0);
  return $tmpret85;
} // end-of-function


function
ats2phppre_stream_vt_filter_cloref($arg0, $arg1)
{
//
  $tmpret86 = NULL;
//
  __patsflab_stream_vt_filter_cloref:
  $tmpret86 = _ats2phppre_stream_vt_auxmain_36($arg1, $arg0);
  return $tmpret86;
} // end-of-function


function
_ats2phppre_stream_vt_auxmain_36($env0, $arg0)
{
//
  $tmpret87 = NULL;
//
  __patsflab__ats2phppre_stream_vt_auxmain_36:
  $tmpret87 = ATSPMVllazyval(_ats2phppre_stream_vt_patsfun_37__closurerize($env0, $arg0));
  return $tmpret87;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_37($env0, $env1, $arg0)
{
//
  $tmpret88 = NULL;
  $tmp89 = NULL;
  $tmp90 = NULL;
  $tmp91 = NULL;
  $tmp92 = NULL;
  $tmp93 = NULL;
  $tmp94 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_37:
  if($arg0) {
    $tmp89 = ATSPMVllazyval_eval($env1);
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab36:
      if(ATSCKptriscons($tmp89)) goto __atstmplab39;
      __atstmplab37:
      $tmpret88 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab38:
      __atstmplab39:
      $tmp90 = $tmp89[0];
      $tmp91 = $tmp89[1];
      // ATSINSfreecon($tmp89);
      $tmp92 = $env0[0]($env0, $tmp90);
      if($tmp92) {
        $tmp93 = _ats2phppre_stream_vt_auxmain_36($env0, $tmp91);
        $tmpret88 = array($tmp90, $tmp93);
      } else {
        $tmp94 = _ats2phppre_stream_vt_auxmain_36($env0, $tmp91);
        $tmpret88 = ATSPMVllazyval_eval($tmp94);
      } // endif
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
  } else {
    atspre_lazy_vt_free($env1);
  } // endif
  return $tmpret88;
} // end-of-function


function
ats2phppre_stream_vt_filter_method($arg0)
{
//
  $tmpret96 = NULL;
//
  __patsflab_stream_vt_filter_method:
  $tmpret96 = _ats2phppre_stream_vt_patsfun_39__closurerize($arg0);
  return $tmpret96;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_39($env0, $arg0)
{
//
  $tmpret97 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_39:
  $tmpret97 = ats2phppre_stream_vt_filter_cloref($env0, $arg0);
  return $tmpret97;
} // end-of-function


function
ats2phppre_stream_vt_exists_cloref($arg0, $arg1)
{
//
  $tmpret98 = NULL;
//
  __patsflab_stream_vt_exists_cloref:
  $tmpret98 = _ats2phppre_stream_vt_loop_41($arg1, $arg0);
  return $tmpret98;
} // end-of-function


function
_ats2phppre_stream_vt_loop_41($env0, $arg0)
{
//
  $apy0 = NULL;
  $tmpret99 = NULL;
  $tmp100 = NULL;
  $tmp101 = NULL;
  $tmp102 = NULL;
  $tmp103 = NULL;
//
  __patsflab__ats2phppre_stream_vt_loop_41:
  $tmp100 = ATSPMVllazyval_eval($arg0);
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab40:
    if(ATSCKptriscons($tmp100)) goto __atstmplab43;
    __atstmplab41:
    $tmpret99 = false;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab42:
    __atstmplab43:
    $tmp101 = $tmp100[0];
    $tmp102 = $tmp100[1];
    // ATSINSfreecon($tmp100);
    $tmp103 = $env0[0]($env0, $tmp101);
    if($tmp103) {
      atspre_lazy_vt_free($tmp102);
      $tmpret99 = true;
    } else {
      // ATStailcalseq_beg
      $apy0 = $tmp102;
      $arg0 = $apy0;
      goto __patsflab__ats2phppre_stream_vt_loop_41;
      // ATStailcalseq_end
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret99;
} // end-of-function


function
ats2phppre_stream_vt_exists_method($arg0)
{
//
  $tmpret105 = NULL;
//
  __patsflab_stream_vt_exists_method:
  $tmpret105 = _ats2phppre_stream_vt_patsfun_43__closurerize($arg0);
  return $tmpret105;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_43($env0, $arg0)
{
//
  $tmpret106 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_43:
  $tmpret106 = ats2phppre_stream_vt_exists_cloref($env0, $arg0);
  return $tmpret106;
} // end-of-function


function
ats2phppre_stream_vt_forall_cloref($arg0, $arg1)
{
//
  $tmpret107 = NULL;
//
  __patsflab_stream_vt_forall_cloref:
  $tmpret107 = _ats2phppre_stream_vt_loop_45($arg1, $arg0);
  return $tmpret107;
} // end-of-function


function
_ats2phppre_stream_vt_loop_45($env0, $arg0)
{
//
  $apy0 = NULL;
  $tmpret108 = NULL;
  $tmp109 = NULL;
  $tmp110 = NULL;
  $tmp111 = NULL;
  $tmp112 = NULL;
//
  __patsflab__ats2phppre_stream_vt_loop_45:
  $tmp109 = ATSPMVllazyval_eval($arg0);
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab44:
    if(ATSCKptriscons($tmp109)) goto __atstmplab47;
    __atstmplab45:
    $tmpret108 = true;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab46:
    __atstmplab47:
    $tmp110 = $tmp109[0];
    $tmp111 = $tmp109[1];
    // ATSINSfreecon($tmp109);
    $tmp112 = $env0[0]($env0, $tmp110);
    if($tmp112) {
      // ATStailcalseq_beg
      $apy0 = $tmp111;
      $arg0 = $apy0;
      goto __patsflab__ats2phppre_stream_vt_loop_45;
      // ATStailcalseq_end
    } else {
      atspre_lazy_vt_free($tmp111);
      $tmpret108 = false;
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret108;
} // end-of-function


function
ats2phppre_stream_vt_forall_method($arg0)
{
//
  $tmpret114 = NULL;
//
  __patsflab_stream_vt_forall_method:
  $tmpret114 = _ats2phppre_stream_vt_patsfun_47__closurerize($arg0);
  return $tmpret114;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_47($env0, $arg0)
{
//
  $tmpret115 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_47:
  $tmpret115 = ats2phppre_stream_vt_forall_cloref($env0, $arg0);
  return $tmpret115;
} // end-of-function


function
ats2phppre_stream_vt_foreach_cloref($arg0, $arg1)
{
//
//
  __patsflab_stream_vt_foreach_cloref:
  _ats2phppre_stream_vt_loop_49($arg1, $arg0);
  return/*_void*/;
} // end-of-function


function
_ats2phppre_stream_vt_loop_49($env0, $arg0)
{
//
  $apy0 = NULL;
  $tmp118 = NULL;
  $tmp119 = NULL;
  $tmp120 = NULL;
//
  __patsflab__ats2phppre_stream_vt_loop_49:
  $tmp118 = ATSPMVllazyval_eval($arg0);
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab48:
    if(ATSCKptriscons($tmp118)) goto __atstmplab51;
    __atstmplab49:
    // ATSINSmove_void;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab50:
    __atstmplab51:
    $tmp119 = $tmp118[0];
    $tmp120 = $tmp118[1];
    // ATSINSfreecon($tmp118);
    $env0[0]($env0, $tmp119);
    // ATStailcalseq_beg
    $apy0 = $tmp120;
    $arg0 = $apy0;
    goto __patsflab__ats2phppre_stream_vt_loop_49;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return/*_void*/;
} // end-of-function


function
ats2phppre_stream_vt_foreach_method($arg0)
{
//
  $tmpret122 = NULL;
//
  __patsflab_stream_vt_foreach_method:
  $tmpret122 = _ats2phppre_stream_vt_patsfun_51__closurerize($arg0);
  return $tmpret122;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_51($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_stream_vt_patsfun_51:
  ats2phppre_stream_vt_foreach_cloref($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_stream_vt_iforeach_cloref($arg0, $arg1)
{
//
//
  __patsflab_stream_vt_iforeach_cloref:
  _ats2phppre_stream_vt_loop_53($arg1, 0, $arg0);
  return/*_void*/;
} // end-of-function


function
_ats2phppre_stream_vt_loop_53($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmp126 = NULL;
  $tmp127 = NULL;
  $tmp128 = NULL;
  $tmp130 = NULL;
//
  __patsflab__ats2phppre_stream_vt_loop_53:
  $tmp126 = ATSPMVllazyval_eval($arg1);
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab52:
    if(ATSCKptriscons($tmp126)) goto __atstmplab55;
    __atstmplab53:
    // ATSINSmove_void;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab54:
    __atstmplab55:
    $tmp127 = $tmp126[0];
    $tmp128 = $tmp126[1];
    // ATSINSfreecon($tmp126);
    $env0[0]($env0, $arg0, $tmp127);
    $tmp130 = ats2phppre_add_int1_int1($arg0, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp130;
    $apy1 = $tmp128;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_stream_vt_loop_53;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return/*_void*/;
} // end-of-function


function
ats2phppre_stream_vt_iforeach_method($arg0)
{
//
  $tmpret131 = NULL;
//
  __patsflab_stream_vt_iforeach_method:
  $tmpret131 = _ats2phppre_stream_vt_patsfun_55__closurerize($arg0);
  return $tmpret131;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_55($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_stream_vt_patsfun_55:
  ats2phppre_stream_vt_iforeach_cloref($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_stream_vt_rforeach_cloref($arg0, $arg1)
{
//
//
  __patsflab_stream_vt_rforeach_cloref:
  _ats2phppre_stream_vt_auxmain_57($arg1, $arg0);
  return/*_void*/;
} // end-of-function


function
_ats2phppre_stream_vt_auxmain_57($env0, $arg0)
{
//
  $tmp135 = NULL;
  $tmp136 = NULL;
  $tmp137 = NULL;
//
  __patsflab__ats2phppre_stream_vt_auxmain_57:
  $tmp135 = ATSPMVllazyval_eval($arg0);
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab56:
    if(ATSCKptriscons($tmp135)) goto __atstmplab59;
    __atstmplab57:
    // ATSINSmove_void;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab58:
    __atstmplab59:
    $tmp136 = $tmp135[0];
    $tmp137 = $tmp135[1];
    // ATSINSfreecon($tmp135);
    _ats2phppre_stream_vt_auxmain_57($env0, $tmp137);
    $env0[0]($env0, $tmp136);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return/*_void*/;
} // end-of-function


function
ats2phppre_stream_vt_rforeach_method($arg0)
{
//
  $tmpret139 = NULL;
//
  __patsflab_stream_vt_rforeach_method:
  $tmpret139 = _ats2phppre_stream_vt_patsfun_59__closurerize($arg0);
  return $tmpret139;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_59($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_stream_vt_patsfun_59:
  ats2phppre_stream_vt_rforeach_cloref($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_stream_vt_tabulate_cloref($arg0)
{
//
  $tmpret141 = NULL;
//
  __patsflab_stream_vt_tabulate_cloref:
  $tmpret141 = _ats2phppre_stream_vt_auxmain_61($arg0, 0);
  return $tmpret141;
} // end-of-function


function
_ats2phppre_stream_vt_auxmain_61($env0, $arg0)
{
//
  $tmpret142 = NULL;
//
  __patsflab__ats2phppre_stream_vt_auxmain_61:
  $tmpret142 = ATSPMVllazyval(_ats2phppre_stream_vt_patsfun_62__closurerize($env0, $arg0));
  return $tmpret142;
} // end-of-function


function
_ats2phppre_stream_vt_patsfun_62($env0, $env1, $arg0)
{
//
  $tmpret143 = NULL;
  $tmp144 = NULL;
  $tmp145 = NULL;
  $tmp146 = NULL;
//
  __patsflab__ats2phppre_stream_vt_patsfun_62:
  if($arg0) {
    $tmp144 = $env0[0]($env0, $env1);
    $tmp146 = ats2phppre_add_int1_int1($env1, 1);
    $tmp145 = _ats2phppre_stream_vt_auxmain_61($env0, $tmp146);
    $tmpret143 = array($tmp144, $tmp145);
  } else {
  } // endif
  return $tmpret143;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/
function
_ats2phppre_filebas_patsfun_2__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_filebas_patsfun_2($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_filebas_patsfun_5__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_filebas_patsfun_5($cenv[1], $arg0); }, $env0);
}


function
ats2phppre_streamize_fileref_line($arg0)
{
//
  $tmpret0 = NULL;
//
  __patsflab_streamize_fileref_line:
  $tmpret0 = _ats2phppre_filebas_auxmain_1($arg0);
  return $tmpret0;
} // end-of-function


function
_ats2phppre_filebas_auxmain_1($arg0)
{
//
  $tmpret1 = NULL;
//
  __patsflab__ats2phppre_filebas_auxmain_1:
  $tmpret1 = ATSPMVllazyval(_ats2phppre_filebas_patsfun_2__closurerize($arg0));
  return $tmpret1;
} // end-of-function


function
_ats2phppre_filebas_patsfun_2($env0, $arg0)
{
//
  $tmpret2 = NULL;
  $tmp3 = NULL;
  $tmp4 = NULL;
  $tmp5 = NULL;
//
  __patsflab__ats2phppre_filebas_patsfun_2:
  if($arg0) {
    $tmp3 = fgets($env0);
    $tmp4 = ats2phppre_boolize($tmp3);
    if($tmp4) {
      $tmp5 = _ats2phppre_filebas_auxmain_1($env0);
      $tmpret2 = array($tmp3, $tmp5);
    } else {
      $tmpret2 = NULL;
    } // endif
  } else {
  } // endif
  return $tmpret2;
} // end-of-function


function
ats2phppre_streamize_fileptr_line($arg0)
{
//
  $tmpret6 = NULL;
//
  __patsflab_streamize_fileptr_line:
  $tmpret6 = _ats2phppre_filebas_auxmain_4($arg0);
  return $tmpret6;
} // end-of-function


function
_ats2phppre_filebas_auxmain_4($arg0)
{
//
  $tmpret7 = NULL;
//
  __patsflab__ats2phppre_filebas_auxmain_4:
  $tmpret7 = ATSPMVllazyval(_ats2phppre_filebas_patsfun_5__closurerize($arg0));
  return $tmpret7;
} // end-of-function


function
_ats2phppre_filebas_patsfun_5($env0, $arg0)
{
//
  $tmpret8 = NULL;
  $tmp9 = NULL;
  $tmp10 = NULL;
  $tmp11 = NULL;
  $tmp12 = NULL;
  $tmp13 = NULL;
//
  __patsflab__ats2phppre_filebas_patsfun_5:
  if($arg0) {
    $tmp9 = fgets($env0);
    $tmp10 = ats2phppre_boolize($tmp9);
    if($tmp10) {
      $tmp11 = _ats2phppre_filebas_auxmain_4($env0);
      $tmpret8 = array($tmp9, $tmp11);
    } else {
      $tmp12 = ats2phppre_fclose_1($env0);
      $tmpret8 = NULL;
    } // endif
  } else {
    $tmp13 = ats2phppre_fclose_1($env0);
  } // endif
  return $tmpret8;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/
function
_ats2phppre_intrange_patsfun_4__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_4($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_intrange_patsfun_9__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_9($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_intrange_patsfun_11__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_11($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_intrange_patsfun_13__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_13($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_intrange_patsfun_16__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_16($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}

function
_ats2phppre_intrange_patsfun_20__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_20($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_intrange_patsfun_23__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_23($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_intrange_patsfun_26__closurerize($env0, $env1, $env2)
{
  return array(function($cenv) { return _ats2phppre_intrange_patsfun_26($cenv[1], $cenv[2], $cenv[3]); }, $env0, $env1, $env2);
}

function
_ats2phppre_intrange_patsfun_28__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_28($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_intrange_patsfun_31__closurerize($env0, $env1, $env2)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_31($cenv[1], $cenv[2], $cenv[3], $arg0); }, $env0, $env1, $env2);
}

function
_ats2phppre_intrange_patsfun_33__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_33($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_intrange_patsfun_40__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_40($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_intrange_patsfun_44__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_44($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_intrange_patsfun_48__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_48($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_intrange_patsfun_52__closurerize($env0, $env1, $env2)
{
  return array(function($cenv, $arg0) { return _ats2phppre_intrange_patsfun_52($cenv[1], $cenv[2], $cenv[3], $arg0); }, $env0, $env1, $env2);
}


function
ats2phppre_int_repeat_lazy($arg0, $arg1)
{
//
  $tmp1 = NULL;
//
  __patsflab_int_repeat_lazy:
  $tmp1 = ats2phppre_lazy2cloref($arg1);
  ats2phppre_int_repeat_cloref($arg0, $tmp1);
  return/*_void*/;
} // end-of-function


function
ats2phppre_int_repeat_cloref($arg0, $arg1)
{
//
//
  __patsflab_int_repeat_cloref:
  _ats2phppre_intrange_loop_2($arg0, $arg1);
  return/*_void*/;
} // end-of-function


function
_ats2phppre_intrange_loop_2($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmp4 = NULL;
  $tmp6 = NULL;
//
  __patsflab__ats2phppre_intrange_loop_2:
  $tmp4 = ats2phppre_gt_int0_int0($arg0, 0);
  if($tmp4) {
    $arg1[0]($arg1);
    $tmp6 = ats2phppre_sub_int0_int0($arg0, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp6;
    $apy1 = $arg1;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_intrange_loop_2;
    // ATStailcalseq_end
  } else {
    // ATSINSmove_void;
  } // endif
  return/*_void*/;
} // end-of-function


function
ats2phppre_int_repeat_method($arg0)
{
//
  $tmpret7 = NULL;
//
  __patsflab_int_repeat_method:
  $tmpret7 = _ats2phppre_intrange_patsfun_4__closurerize($arg0);
  return $tmpret7;
} // end-of-function


function
_ats2phppre_intrange_patsfun_4($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_intrange_patsfun_4:
  ats2phppre_int_repeat_cloref($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_int_exists_cloref($arg0, $arg1)
{
//
  $tmpret9 = NULL;
//
  __patsflab_int_exists_cloref:
  $tmpret9 = ats2phppre_intrange_exists_cloref(0, $arg0, $arg1);
  return $tmpret9;
} // end-of-function


function
ats2phppre_int_forall_cloref($arg0, $arg1)
{
//
  $tmpret10 = NULL;
//
  __patsflab_int_forall_cloref:
  $tmpret10 = ats2phppre_intrange_forall_cloref(0, $arg0, $arg1);
  return $tmpret10;
} // end-of-function


function
ats2phppre_int_foreach_cloref($arg0, $arg1)
{
//
//
  __patsflab_int_foreach_cloref:
  ats2phppre_intrange_foreach_cloref(0, $arg0, $arg1);
  return/*_void*/;
} // end-of-function


function
ats2phppre_int_exists_method($arg0)
{
//
  $tmpret12 = NULL;
//
  __patsflab_int_exists_method:
  $tmpret12 = _ats2phppre_intrange_patsfun_9__closurerize($arg0);
  return $tmpret12;
} // end-of-function


function
_ats2phppre_intrange_patsfun_9($env0, $arg0)
{
//
  $tmpret13 = NULL;
//
  __patsflab__ats2phppre_intrange_patsfun_9:
  $tmpret13 = ats2phppre_int_exists_cloref($env0, $arg0);
  return $tmpret13;
} // end-of-function


function
ats2phppre_int_forall_method($arg0)
{
//
  $tmpret14 = NULL;
//
  __patsflab_int_forall_method:
  $tmpret14 = _ats2phppre_intrange_patsfun_11__closurerize($arg0);
  return $tmpret14;
} // end-of-function


function
_ats2phppre_intrange_patsfun_11($env0, $arg0)
{
//
  $tmpret15 = NULL;
//
  __patsflab__ats2phppre_intrange_patsfun_11:
  $tmpret15 = ats2phppre_int_forall_cloref($env0, $arg0);
  return $tmpret15;
} // end-of-function


function
ats2phppre_int_foreach_method($arg0)
{
//
  $tmpret16 = NULL;
//
  __patsflab_int_foreach_method:
  $tmpret16 = _ats2phppre_intrange_patsfun_13__closurerize($arg0);
  return $tmpret16;
} // end-of-function


function
_ats2phppre_intrange_patsfun_13($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_intrange_patsfun_13:
  ats2phppre_int_foreach_cloref($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_int_foldleft_cloref($arg0, $arg1, $arg2)
{
//
  $tmpret18 = NULL;
//
  __patsflab_int_foldleft_cloref:
  $tmpret18 = ats2phppre_intrange_foldleft_cloref(0, $arg0, $arg1, $arg2);
  return $tmpret18;
} // end-of-function


function
ats2phppre_int_foldleft_method($arg0, $arg1)
{
//
  $tmpret19 = NULL;
//
  __patsflab_int_foldleft_method:
  $tmpret19 = _ats2phppre_intrange_patsfun_16__closurerize($arg0, $arg1);
  return $tmpret19;
} // end-of-function


function
_ats2phppre_intrange_patsfun_16($env0, $env1, $arg0)
{
//
  $tmpret20 = NULL;
//
  __patsflab__ats2phppre_intrange_patsfun_16:
  $tmpret20 = ats2phppre_int_foldleft_cloref($env0, $env1, $arg0);
  return $tmpret20;
} // end-of-function


function
ats2phppre_int_list_map_cloref($arg0, $arg1)
{
//
  $tmpret21 = NULL;
//
  __patsflab_int_list_map_cloref:
  $tmpret21 = _ats2phppre_intrange_aux_18($arg0, $arg1, 0);
  return $tmpret21;
} // end-of-function


function
_ats2phppre_intrange_aux_18($env0, $env1, $arg0)
{
//
  $tmpret22 = NULL;
  $tmp23 = NULL;
  $tmp24 = NULL;
  $tmp25 = NULL;
  $tmp26 = NULL;
//
  __patsflab__ats2phppre_intrange_aux_18:
  $tmp23 = ats2phppre_lt_int1_int1($arg0, $env0);
  if($tmp23) {
    $tmp24 = $env1[0]($env1, $arg0);
    $tmp26 = ats2phppre_add_int1_int1($arg0, 1);
    $tmp25 = _ats2phppre_intrange_aux_18($env0, $env1, $tmp26);
    $tmpret22 = array($tmp24, $tmp25);
  } else {
    $tmpret22 = NULL;
  } // endif
  return $tmpret22;
} // end-of-function


function
ats2phppre_int_list_map_method($arg0, $arg1)
{
//
  $tmpret27 = NULL;
//
  __patsflab_int_list_map_method:
  $tmpret27 = _ats2phppre_intrange_patsfun_20__closurerize($arg0);
  return $tmpret27;
} // end-of-function


function
_ats2phppre_intrange_patsfun_20($env0, $arg0)
{
//
  $tmpret28 = NULL;
//
  __patsflab__ats2phppre_intrange_patsfun_20:
  $tmpret28 = ats2phppre_int_list_map_cloref($env0, $arg0);
  return $tmpret28;
} // end-of-function


function
ats2phppre_int_list0_map_cloref($arg0, $arg1)
{
//
  $tmpret29 = NULL;
  $tmp30 = NULL;
  $tmp31 = NULL;
//
  __patsflab_int_list0_map_cloref:
  $tmp30 = ats2phppre_gte_int1_int1($arg0, 0);
  if($tmp30) {
    $tmp31 = ats2phppre_int_list_map_cloref($arg0, $arg1);
    $tmpret29 = $tmp31;
  } else {
    $tmpret29 = NULL;
  } // endif
  return $tmpret29;
} // end-of-function


function
ats2phppre_int_list0_map_method($arg0, $arg1)
{
//
  $tmpret32 = NULL;
//
  __patsflab_int_list0_map_method:
  $tmpret32 = _ats2phppre_intrange_patsfun_23__closurerize($arg0);
  return $tmpret32;
} // end-of-function


function
_ats2phppre_intrange_patsfun_23($env0, $arg0)
{
//
  $tmpret33 = NULL;
//
  __patsflab__ats2phppre_intrange_patsfun_23:
  $tmpret33 = ats2phppre_int_list0_map_cloref($env0, $arg0);
  return $tmpret33;
} // end-of-function


function
ats2phppre_int_stream_map_cloref($arg0, $arg1)
{
//
  $tmpret34 = NULL;
//
  __patsflab_int_stream_map_cloref:
  $tmpret34 = _ats2phppre_intrange_aux_25($arg0, $arg1, 0);
  return $tmpret34;
} // end-of-function


function
_ats2phppre_intrange_aux_25($env0, $env1, $arg0)
{
//
  $tmpret35 = NULL;
//
  __patsflab__ats2phppre_intrange_aux_25:
  $tmpret35 = ATSPMVlazyval(_ats2phppre_intrange_patsfun_26__closurerize($env0, $env1, $arg0));
  return $tmpret35;
} // end-of-function


function
_ats2phppre_intrange_patsfun_26($env0, $env1, $env2)
{
//
  $tmpret36 = NULL;
  $tmp37 = NULL;
  $tmp38 = NULL;
  $tmp39 = NULL;
  $tmp40 = NULL;
//
  __patsflab__ats2phppre_intrange_patsfun_26:
  $tmp37 = ats2phppre_lt_int1_int1($env2, $env0);
  if($tmp37) {
    $tmp38 = $env1[0]($env1, $env2);
    $tmp40 = ats2phppre_add_int1_int1($env2, 1);
    $tmp39 = _ats2phppre_intrange_aux_25($env0, $env1, $tmp40);
    $tmpret36 = array($tmp38, $tmp39);
  } else {
    $tmpret36 = NULL;
  } // endif
  return $tmpret36;
} // end-of-function


function
ats2phppre_int_stream_map_method($arg0, $arg1)
{
//
  $tmpret41 = NULL;
//
  __patsflab_int_stream_map_method:
  $tmpret41 = _ats2phppre_intrange_patsfun_28__closurerize($arg0);
  return $tmpret41;
} // end-of-function


function
_ats2phppre_intrange_patsfun_28($env0, $arg0)
{
//
  $tmpret42 = NULL;
//
  __patsflab__ats2phppre_intrange_patsfun_28:
  $tmpret42 = ats2phppre_int_stream_map_cloref($env0, $arg0);
  return $tmpret42;
} // end-of-function


function
ats2phppre_int_stream_vt_map_cloref($arg0, $arg1)
{
//
  $tmpret43 = NULL;
//
  __patsflab_int_stream_vt_map_cloref:
  $tmpret43 = _ats2phppre_intrange_aux_30($arg0, $arg1, 0);
  return $tmpret43;
} // end-of-function


function
_ats2phppre_intrange_aux_30($env0, $env1, $arg0)
{
//
  $tmpret44 = NULL;
//
  __patsflab__ats2phppre_intrange_aux_30:
  $tmpret44 = ATSPMVllazyval(_ats2phppre_intrange_patsfun_31__closurerize($env0, $env1, $arg0));
  return $tmpret44;
} // end-of-function


function
_ats2phppre_intrange_patsfun_31($env0, $env1, $env2, $arg0)
{
//
  $tmpret45 = NULL;
  $tmp46 = NULL;
  $tmp47 = NULL;
  $tmp48 = NULL;
  $tmp49 = NULL;
//
  __patsflab__ats2phppre_intrange_patsfun_31:
  if($arg0) {
    $tmp46 = ats2phppre_lt_int1_int1($env2, $env0);
    if($tmp46) {
      $tmp47 = $env1[0]($env1, $env2);
      $tmp49 = ats2phppre_add_int1_int1($env2, 1);
      $tmp48 = _ats2phppre_intrange_aux_30($env0, $env1, $tmp49);
      $tmpret45 = array($tmp47, $tmp48);
    } else {
      $tmpret45 = NULL;
    } // endif
  } else {
  } // endif
  return $tmpret45;
} // end-of-function


function
ats2phppre_int_stream_vt_map_method($arg0, $arg1)
{
//
  $tmpret50 = NULL;
//
  __patsflab_int_stream_vt_map_method:
  $tmpret50 = _ats2phppre_intrange_patsfun_33__closurerize($arg0);
  return $tmpret50;
} // end-of-function


function
_ats2phppre_intrange_patsfun_33($env0, $arg0)
{
//
  $tmpret51 = NULL;
//
  __patsflab__ats2phppre_intrange_patsfun_33:
  $tmpret51 = ats2phppre_int_stream_vt_map_cloref($env0, $arg0);
  return $tmpret51;
} // end-of-function


function
ats2phppre_int2_exists_cloref($arg0, $arg1, $arg2)
{
//
  $tmpret52 = NULL;
//
  __patsflab_int2_exists_cloref:
  $tmpret52 = ats2phppre_intrange2_exists_cloref(0, $arg0, 0, $arg1, $arg2);
  return $tmpret52;
} // end-of-function


function
ats2phppre_int2_forall_cloref($arg0, $arg1, $arg2)
{
//
  $tmpret53 = NULL;
//
  __patsflab_int2_forall_cloref:
  $tmpret53 = ats2phppre_intrange2_forall_cloref(0, $arg0, 0, $arg1, $arg2);
  return $tmpret53;
} // end-of-function


function
ats2phppre_int2_foreach_cloref($arg0, $arg1, $arg2)
{
//
//
  __patsflab_int2_foreach_cloref:
  ats2phppre_intrange2_foreach_cloref(0, $arg0, 0, $arg1, $arg2);
  return/*_void*/;
} // end-of-function


function
ats2phppre_intrange_exists_cloref($arg0, $arg1, $arg2)
{
//
  $tmpret55 = NULL;
//
  __patsflab_intrange_exists_cloref:
  $tmpret55 = _ats2phppre_intrange_loop_38($arg0, $arg1, $arg2);
  return $tmpret55;
} // end-of-function


function
_ats2phppre_intrange_loop_38($arg0, $arg1, $arg2)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $tmpret56 = NULL;
  $tmp57 = NULL;
  $tmp58 = NULL;
  $tmp59 = NULL;
//
  __patsflab__ats2phppre_intrange_loop_38:
  $tmp57 = ats2phppre_lt_int0_int0($arg0, $arg1);
  if($tmp57) {
    $tmp58 = $arg2[0]($arg2, $arg0);
    if($tmp58) {
      $tmpret56 = true;
    } else {
      $tmp59 = ats2phppre_add_int0_int0($arg0, 1);
      // ATStailcalseq_beg
      $apy0 = $tmp59;
      $apy1 = $arg1;
      $apy2 = $arg2;
      $arg0 = $apy0;
      $arg1 = $apy1;
      $arg2 = $apy2;
      goto __patsflab__ats2phppre_intrange_loop_38;
      // ATStailcalseq_end
    } // endif
  } else {
    $tmpret56 = false;
  } // endif
  return $tmpret56;
} // end-of-function


function
ats2phppre_intrange_exists_method($arg0)
{
//
  $tmpret60 = NULL;
//
  __patsflab_intrange_exists_method:
  $tmpret60 = _ats2phppre_intrange_patsfun_40__closurerize($arg0);
  return $tmpret60;
} // end-of-function


function
_ats2phppre_intrange_patsfun_40($env0, $arg0)
{
//
  $tmpret61 = NULL;
//
  __patsflab__ats2phppre_intrange_patsfun_40:
  $tmpret61 = ats2phppre_intrange_exists_cloref($env0[0], $env0[1], $arg0);
  return $tmpret61;
} // end-of-function


function
ats2phppre_intrange_forall_cloref($arg0, $arg1, $arg2)
{
//
  $tmpret62 = NULL;
//
  __patsflab_intrange_forall_cloref:
  $tmpret62 = _ats2phppre_intrange_loop_42($arg0, $arg1, $arg2);
  return $tmpret62;
} // end-of-function


function
_ats2phppre_intrange_loop_42($arg0, $arg1, $arg2)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $tmpret63 = NULL;
  $tmp64 = NULL;
  $tmp65 = NULL;
  $tmp66 = NULL;
//
  __patsflab__ats2phppre_intrange_loop_42:
  $tmp64 = ats2phppre_lt_int0_int0($arg0, $arg1);
  if($tmp64) {
    $tmp65 = $arg2[0]($arg2, $arg0);
    if($tmp65) {
      $tmp66 = ats2phppre_add_int0_int0($arg0, 1);
      // ATStailcalseq_beg
      $apy0 = $tmp66;
      $apy1 = $arg1;
      $apy2 = $arg2;
      $arg0 = $apy0;
      $arg1 = $apy1;
      $arg2 = $apy2;
      goto __patsflab__ats2phppre_intrange_loop_42;
      // ATStailcalseq_end
    } else {
      $tmpret63 = false;
    } // endif
  } else {
    $tmpret63 = true;
  } // endif
  return $tmpret63;
} // end-of-function


function
ats2phppre_intrange_forall_method($arg0)
{
//
  $tmpret67 = NULL;
//
  __patsflab_intrange_forall_method:
  $tmpret67 = _ats2phppre_intrange_patsfun_44__closurerize($arg0);
  return $tmpret67;
} // end-of-function


function
_ats2phppre_intrange_patsfun_44($env0, $arg0)
{
//
  $tmpret68 = NULL;
//
  __patsflab__ats2phppre_intrange_patsfun_44:
  $tmpret68 = ats2phppre_intrange_forall_cloref($env0[0], $env0[1], $arg0);
  return $tmpret68;
} // end-of-function


function
ats2phppre_intrange_foreach_cloref($arg0, $arg1, $arg2)
{
//
//
  __patsflab_intrange_foreach_cloref:
  _ats2phppre_intrange_loop_46($arg0, $arg1, $arg2);
  return/*_void*/;
} // end-of-function


function
_ats2phppre_intrange_loop_46($arg0, $arg1, $arg2)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $tmp71 = NULL;
  $tmp73 = NULL;
//
  __patsflab__ats2phppre_intrange_loop_46:
  $tmp71 = ats2phppre_lt_int0_int0($arg0, $arg1);
  if($tmp71) {
    $arg2[0]($arg2, $arg0);
    $tmp73 = ats2phppre_add_int0_int0($arg0, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp73;
    $apy1 = $arg1;
    $apy2 = $arg2;
    $arg0 = $apy0;
    $arg1 = $apy1;
    $arg2 = $apy2;
    goto __patsflab__ats2phppre_intrange_loop_46;
    // ATStailcalseq_end
  } else {
    // ATSINSmove_void;
  } // endif
  return/*_void*/;
} // end-of-function


function
ats2phppre_intrange_foreach_method($arg0)
{
//
  $tmpret74 = NULL;
//
  __patsflab_intrange_foreach_method:
  $tmpret74 = _ats2phppre_intrange_patsfun_48__closurerize($arg0);
  return $tmpret74;
} // end-of-function


function
_ats2phppre_intrange_patsfun_48($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_intrange_patsfun_48:
  ats2phppre_intrange_foreach_cloref($env0[0], $env0[1], $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_intrange_foldleft_cloref($arg0, $arg1, $arg2, $arg3)
{
//
  $tmpret76 = NULL;
//
  __patsflab_intrange_foldleft_cloref:
  $tmpret76 = _ats2phppre_intrange_loop_50($arg3, $arg0, $arg1, $arg2, $arg3);
  return $tmpret76;
} // end-of-function


function
_ats2phppre_intrange_loop_50($env0, $arg0, $arg1, $arg2, $arg3)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $apy3 = NULL;
  $tmpret77 = NULL;
  $tmp78 = NULL;
  $tmp79 = NULL;
  $tmp80 = NULL;
//
  __patsflab__ats2phppre_intrange_loop_50:
  $tmp78 = ats2phppre_lt_int0_int0($arg0, $arg1);
  if($tmp78) {
    $tmp79 = ats2phppre_add_int0_int0($arg0, 1);
    $tmp80 = $arg3[0]($arg3, $arg2, $arg0);
    // ATStailcalseq_beg
    $apy0 = $tmp79;
    $apy1 = $arg1;
    $apy2 = $tmp80;
    $apy3 = $env0;
    $arg0 = $apy0;
    $arg1 = $apy1;
    $arg2 = $apy2;
    $arg3 = $apy3;
    goto __patsflab__ats2phppre_intrange_loop_50;
    // ATStailcalseq_end
  } else {
    $tmpret77 = $arg2;
  } // endif
  return $tmpret77;
} // end-of-function


function
ats2phppre_intrange_foldleft_method($arg0, $arg1)
{
//
  $tmp81 = NULL;
  $tmp82 = NULL;
  $tmpret83 = NULL;
//
  __patsflab_intrange_foldleft_method:
  $tmp81 = $arg0[0];
  $tmp82 = $arg0[1];
  $tmpret83 = _ats2phppre_intrange_patsfun_52__closurerize($tmp81, $tmp82, $arg1);
  return $tmpret83;
} // end-of-function


function
_ats2phppre_intrange_patsfun_52($env0, $env1, $env2, $arg0)
{
//
  $tmpret84 = NULL;
//
  __patsflab__ats2phppre_intrange_patsfun_52:
  $tmpret84 = ats2phppre_intrange_foldleft_cloref($env0, $env1, $env2, $arg0);
  return $tmpret84;
} // end-of-function


function
ats2phppre_intrange2_exists_cloref($arg0, $arg1, $arg2, $arg3, $arg4)
{
//
  $tmpret85 = NULL;
//
  __patsflab_intrange2_exists_cloref:
  $tmpret85 = _ats2phppre_intrange_loop1_54($arg2, $arg3, $arg4, $arg0, $arg1, $arg2, $arg3, $arg4);
  return $tmpret85;
} // end-of-function


function
_ats2phppre_intrange_loop1_54($env0, $env1, $env2, $arg0, $arg1, $arg2, $arg3, $arg4)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $apy3 = NULL;
  $apy4 = NULL;
  $tmpret86 = NULL;
  $tmp87 = NULL;
  $a2rg0 = NULL;
  $a2rg1 = NULL;
  $a2rg2 = NULL;
  $a2rg3 = NULL;
  $a2rg4 = NULL;
  $a2py0 = NULL;
  $a2py1 = NULL;
  $a2py2 = NULL;
  $a2py3 = NULL;
  $a2py4 = NULL;
  $tmpret88 = NULL;
  $tmp89 = NULL;
  $tmp90 = NULL;
  $tmp91 = NULL;
  $tmp92 = NULL;
//
  __patsflab__ats2phppre_intrange_loop1_54:
  $tmp87 = ats2phppre_lt_int0_int0($arg0, $arg1);
  if($tmp87) {
    // ATStailcalseq_beg
    $a2py0 = $arg0;
    $a2py1 = $arg1;
    $a2py2 = $arg2;
    $a2py3 = $arg3;
    $a2py4 = $env2;
    $a2rg0 = $a2py0;
    $a2rg1 = $a2py1;
    $a2rg2 = $a2py2;
    $a2rg3 = $a2py3;
    $a2rg4 = $a2py4;
    goto __patsflab__ats2phppre_intrange_loop2_55;
    // ATStailcalseq_end
  } else {
    $tmpret86 = false;
  } // endif
  return $tmpret86;
//
  __patsflab__ats2phppre_intrange_loop2_55:
  $tmp89 = ats2phppre_lt_int0_int0($a2rg2, $a2rg3);
  if($tmp89) {
    $tmp90 = $a2rg4[0]($a2rg4, $a2rg0, $a2rg2);
    if($tmp90) {
      $tmpret88 = true;
    } else {
      $tmp91 = ats2phppre_add_int0_int0($a2rg2, 1);
      // ATStailcalseq_beg
      $a2py0 = $a2rg0;
      $a2py1 = $a2rg1;
      $a2py2 = $tmp91;
      $a2py3 = $a2rg3;
      $a2py4 = $a2rg4;
      $a2rg0 = $a2py0;
      $a2rg1 = $a2py1;
      $a2rg2 = $a2py2;
      $a2rg3 = $a2py3;
      $a2rg4 = $a2py4;
      goto __patsflab__ats2phppre_intrange_loop2_55;
      // ATStailcalseq_end
    } // endif
  } else {
    $tmp92 = ats2phppre_add_int0_int0($a2rg0, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp92;
    $apy1 = $a2rg1;
    $apy2 = $env0;
    $apy3 = $env1;
    $apy4 = $a2rg4;
    $arg0 = $apy0;
    $arg1 = $apy1;
    $arg2 = $apy2;
    $arg3 = $apy3;
    $arg4 = $apy4;
    goto __patsflab__ats2phppre_intrange_loop1_54;
    // ATStailcalseq_end
  } // endif
  return $tmpret88;
} // end-of-function


function
ats2phppre_intrange2_forall_cloref($arg0, $arg1, $arg2, $arg3, $arg4)
{
//
  $tmpret93 = NULL;
//
  __patsflab_intrange2_forall_cloref:
  $tmpret93 = _ats2phppre_intrange_loop1_57($arg2, $arg3, $arg0, $arg1, $arg2, $arg3, $arg4);
  return $tmpret93;
} // end-of-function


function
_ats2phppre_intrange_loop1_57($env0, $env1, $arg0, $arg1, $arg2, $arg3, $arg4)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $apy3 = NULL;
  $apy4 = NULL;
  $tmpret94 = NULL;
  $tmp95 = NULL;
  $a2rg0 = NULL;
  $a2rg1 = NULL;
  $a2rg2 = NULL;
  $a2rg3 = NULL;
  $a2rg4 = NULL;
  $a2py0 = NULL;
  $a2py1 = NULL;
  $a2py2 = NULL;
  $a2py3 = NULL;
  $a2py4 = NULL;
  $tmpret96 = NULL;
  $tmp97 = NULL;
  $tmp98 = NULL;
  $tmp99 = NULL;
  $tmp100 = NULL;
//
  __patsflab__ats2phppre_intrange_loop1_57:
  $tmp95 = ats2phppre_lt_int0_int0($arg0, $arg1);
  if($tmp95) {
    // ATStailcalseq_beg
    $a2py0 = $arg0;
    $a2py1 = $arg1;
    $a2py2 = $arg2;
    $a2py3 = $arg3;
    $a2py4 = $arg4;
    $a2rg0 = $a2py0;
    $a2rg1 = $a2py1;
    $a2rg2 = $a2py2;
    $a2rg3 = $a2py3;
    $a2rg4 = $a2py4;
    goto __patsflab__ats2phppre_intrange_loop2_58;
    // ATStailcalseq_end
  } else {
    $tmpret94 = true;
  } // endif
  return $tmpret94;
//
  __patsflab__ats2phppre_intrange_loop2_58:
  $tmp97 = ats2phppre_lt_int0_int0($a2rg2, $a2rg3);
  if($tmp97) {
    $tmp98 = $a2rg4[0]($a2rg4, $a2rg0, $a2rg2);
    if($tmp98) {
      $tmp99 = ats2phppre_add_int0_int0($a2rg2, 1);
      // ATStailcalseq_beg
      $a2py0 = $a2rg0;
      $a2py1 = $a2rg1;
      $a2py2 = $tmp99;
      $a2py3 = $a2rg3;
      $a2py4 = $a2rg4;
      $a2rg0 = $a2py0;
      $a2rg1 = $a2py1;
      $a2rg2 = $a2py2;
      $a2rg3 = $a2py3;
      $a2rg4 = $a2py4;
      goto __patsflab__ats2phppre_intrange_loop2_58;
      // ATStailcalseq_end
    } else {
      $tmpret96 = false;
    } // endif
  } else {
    $tmp100 = ats2phppre_add_int0_int0($a2rg0, 1);
    // ATStailcalseq_beg
    $apy0 = $tmp100;
    $apy1 = $a2rg1;
    $apy2 = $env0;
    $apy3 = $env1;
    $apy4 = $a2rg4;
    $arg0 = $apy0;
    $arg1 = $apy1;
    $arg2 = $apy2;
    $arg3 = $apy3;
    $arg4 = $apy4;
    goto __patsflab__ats2phppre_intrange_loop1_57;
    // ATStailcalseq_end
  } // endif
  return $tmpret96;
} // end-of-function


function
ats2phppre_intrange2_foreach_cloref($arg0, $arg1, $arg2, $arg3, $arg4)
{
//
//
  __patsflab_intrange2_foreach_cloref:
  _ats2phppre_intrange_loop1_60($arg2, $arg3, $arg0, $arg1, $arg2, $arg3, $arg4);
  return/*_void*/;
} // end-of-function


function
_ats2phppre_intrange_loop1_60($env0, $env1, $arg0, $arg1, $arg2, $arg3, $arg4)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $apy3 = NULL;
  $apy4 = NULL;
  $tmp103 = NULL;
  $a2rg0 = NULL;
  $a2rg1 = NULL;
  $a2rg2 = NULL;
  $a2rg3 = NULL;
  $a2rg4 = NULL;
  $a2py0 = NULL;
  $a2py1 = NULL;
  $a2py2 = NULL;
  $a2py3 = NULL;
  $a2py4 = NULL;
  $tmp105 = NULL;
  $tmp107 = NULL;
  $tmp108 = NULL;
//
  __patsflab__ats2phppre_intrange_loop1_60:
  $tmp103 = ats2phppre_lt_int0_int0($arg0, $arg1);
  if($tmp103) {
    // ATStailcalseq_beg
    $a2py0 = $arg0;
    $a2py1 = $arg1;
    $a2py2 = $arg2;
    $a2py3 = $arg3;
    $a2py4 = $arg4;
    $a2rg0 = $a2py0;
    $a2rg1 = $a2py1;
    $a2rg2 = $a2py2;
    $a2rg3 = $a2py3;
    $a2rg4 = $a2py4;
    goto __patsflab__ats2phppre_intrange_loop2_61;
    // ATStailcalseq_end
  } else {
    // ATSINSmove_void;
  } // endif
  return/*_void*/;
//
  __patsflab__ats2phppre_intrange_loop2_61:
  $tmp105 = ats2phppre_lt_int0_int0($a2rg2, $a2rg3);
  if($tmp105) {
    $a2rg4[0]($a2rg4, $a2rg0, $a2rg2);
    $tmp107 = ats2phppre_add_int0_int0($a2rg2, 1);
    // ATStailcalseq_beg
    $a2py0 = $a2rg0;
    $a2py1 = $a2rg1;
    $a2py2 = $tmp107;
    $a2py3 = $a2rg3;
    $a2py4 = $a2rg4;
    $a2rg0 = $a2py0;
    $a2rg1 = $a2py1;
    $a2rg2 = $a2py2;
    $a2rg3 = $a2py3;
    $a2rg4 = $a2py4;
    goto __patsflab__ats2phppre_intrange_loop2_61;
    // ATStailcalseq_end
  } else {
    $tmp108 = ats2phppre_succ_int0($a2rg0);
    // ATStailcalseq_beg
    $apy0 = $tmp108;
    $apy1 = $a2rg1;
    $apy2 = $env0;
    $apy3 = $env1;
    $apy4 = $a2rg4;
    $arg0 = $apy0;
    $arg1 = $apy1;
    $arg2 = $apy2;
    $arg3 = $apy3;
    $arg4 = $apy4;
    goto __patsflab__ats2phppre_intrange_loop1_60;
    // ATStailcalseq_end
  } // endif
  return/*_void*/;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/
function
_ats2phppre_PHParray_patsfun_10__closurerize($env0, $env1, $env2)
{
  return array(function($cenv, $arg0) { return _ats2phppre_PHParray_patsfun_10($cenv[1], $cenv[2], $cenv[3], $arg0); }, $env0, $env1, $env2);
}


function
ats2phppre_PHParray2list($arg0)
{
//
  $tmpret0 = NULL;
  $tmp1 = NULL;
  $tmp8 = NULL;
//
  __patsflab_PHParray2list:
  $tmp1 = ats2phppre_PHParray_size($arg0);
  $tmp8 = NULL;
  $tmpret0 = _ats2phppre_PHParray_loop_1($arg0, $tmp1, $tmp8);
  return $tmpret0;
} // end-of-function


function
_ats2phppre_PHParray_loop_1($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret2 = NULL;
  $tmp3 = NULL;
  $tmp4 = NULL;
  $tmp5 = NULL;
  $tmp6 = NULL;
  $tmp7 = NULL;
//
  __patsflab__ats2phppre_PHParray_loop_1:
  $tmp3 = ats2phppre_gt_int1_int1($arg0, 0);
  if($tmp3) {
    $tmp4 = ats2phppre_sub_int1_int1($arg0, 1);
    $tmp7 = ats2phppre_sub_int1_int1($arg0, 1);
    $tmp6 = ats2phppre_PHParray_get_at($env0, $tmp7);
    $tmp5 = array($tmp6, $arg1);
    // ATStailcalseq_beg
    $apy0 = $tmp4;
    $apy1 = $tmp5;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_PHParray_loop_1;
    // ATStailcalseq_end
  } else {
    $tmpret2 = $arg1;
  } // endif
  return $tmpret2;
} // end-of-function


function
ats2phppre_PHParray2list_rev($arg0)
{
//
  $tmpret9 = NULL;
  $tmp10 = NULL;
  $tmp16 = NULL;
//
  __patsflab_PHParray2list_rev:
  $tmp10 = ats2phppre_PHParray_size($arg0);
  $tmp16 = NULL;
  $tmpret9 = _ats2phppre_PHParray_loop_3($arg0, $tmp10, 0, $tmp16);
  return $tmpret9;
} // end-of-function


function
_ats2phppre_PHParray_loop_3($env0, $arg0, $arg1, $arg2)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $tmpret11 = NULL;
  $tmp12 = NULL;
  $tmp13 = NULL;
  $tmp14 = NULL;
  $tmp15 = NULL;
//
  __patsflab__ats2phppre_PHParray_loop_3:
  $tmp12 = ats2phppre_lt_int1_int1($arg1, $arg0);
  if($tmp12) {
    $tmp13 = ats2phppre_add_int1_int1($arg1, 1);
    $tmp15 = ats2phppre_PHParray_get_at($env0, $arg1);
    $tmp14 = array($tmp15, $arg2);
    // ATStailcalseq_beg
    $apy0 = $arg0;
    $apy1 = $tmp13;
    $apy2 = $tmp14;
    $arg0 = $apy0;
    $arg1 = $apy1;
    $arg2 = $apy2;
    goto __patsflab__ats2phppre_PHParray_loop_3;
    // ATStailcalseq_end
  } else {
    $tmpret11 = $arg2;
  } // endif
  return $tmpret11;
} // end-of-function


function
ats2phppre_PHParray2list_map($arg0, $arg1)
{
//
  $tmpret17 = NULL;
  $tmp18 = NULL;
  $tmp26 = NULL;
//
  __patsflab_PHParray2list_map:
  $tmp18 = ats2phppre_PHParray_size($arg0);
  $tmp26 = NULL;
  $tmpret17 = _ats2phppre_PHParray_loop_5($arg0, $arg1, $tmp18, $tmp26);
  return $tmpret17;
} // end-of-function


function
_ats2phppre_PHParray_loop_5($env0, $env1, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret19 = NULL;
  $tmp20 = NULL;
  $tmp21 = NULL;
  $tmp22 = NULL;
  $tmp23 = NULL;
  $tmp24 = NULL;
  $tmp25 = NULL;
//
  __patsflab__ats2phppre_PHParray_loop_5:
  $tmp20 = ats2phppre_gt_int1_int1($arg0, 0);
  if($tmp20) {
    $tmp21 = ats2phppre_sub_int1_int1($arg0, 1);
    $tmp25 = ats2phppre_sub_int1_int1($arg0, 1);
    $tmp24 = ats2phppre_PHParray_get_at($env0, $tmp25);
    $tmp23 = $env1[0]($env1, $tmp24);
    $tmp22 = array($tmp23, $arg1);
    // ATStailcalseq_beg
    $apy0 = $tmp21;
    $apy1 = $tmp22;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_PHParray_loop_5;
    // ATStailcalseq_end
  } else {
    $tmpret19 = $arg1;
  } // endif
  return $tmpret19;
} // end-of-function


function
ats2phppre_PHParray2list_map_rev($arg0, $arg1)
{
//
  $tmpret27 = NULL;
  $tmp28 = NULL;
  $tmp35 = NULL;
//
  __patsflab_PHParray2list_map_rev:
  $tmp28 = ats2phppre_PHParray_size($arg0);
  $tmp35 = NULL;
  $tmpret27 = _ats2phppre_PHParray_loop_7($arg0, $arg1, $tmp28, 0, $tmp35);
  return $tmpret27;
} // end-of-function


function
_ats2phppre_PHParray_loop_7($env0, $env1, $arg0, $arg1, $arg2)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $apy2 = NULL;
  $tmpret29 = NULL;
  $tmp30 = NULL;
  $tmp31 = NULL;
  $tmp32 = NULL;
  $tmp33 = NULL;
  $tmp34 = NULL;
//
  __patsflab__ats2phppre_PHParray_loop_7:
  $tmp30 = ats2phppre_lt_int1_int1($arg1, $arg0);
  if($tmp30) {
    $tmp31 = ats2phppre_add_int1_int1($arg1, 1);
    $tmp34 = ats2phppre_PHParray_get_at($env0, $arg1);
    $tmp33 = $env1[0]($env1, $tmp34);
    $tmp32 = array($tmp33, $arg2);
    // ATStailcalseq_beg
    $apy0 = $arg0;
    $apy1 = $tmp31;
    $apy2 = $tmp32;
    $arg0 = $apy0;
    $arg1 = $apy1;
    $arg2 = $apy2;
    goto __patsflab__ats2phppre_PHParray_loop_7;
    // ATStailcalseq_end
  } else {
    $tmpret29 = $arg2;
  } // endif
  return $tmpret29;
} // end-of-function


function
ats2phppre_PHParray_streamize_elt($arg0)
{
//
  $tmpret36 = NULL;
  $tmp37 = NULL;
//
  __patsflab_PHParray_streamize_elt:
  $tmp37 = ats2phppre_PHParray_size($arg0);
  $tmpret36 = _ats2phppre_PHParray_auxmain_9($arg0, $tmp37, 0);
  return $tmpret36;
} // end-of-function


function
_ats2phppre_PHParray_auxmain_9($env0, $arg0, $arg1)
{
//
  $tmpret38 = NULL;
//
  __patsflab__ats2phppre_PHParray_auxmain_9:
  $tmpret38 = ATSPMVllazyval(_ats2phppre_PHParray_patsfun_10__closurerize($env0, $arg0, $arg1));
  return $tmpret38;
} // end-of-function


function
_ats2phppre_PHParray_patsfun_10($env0, $env1, $env2, $arg0)
{
//
  $tmpret39 = NULL;
  $tmp40 = NULL;
  $tmp41 = NULL;
  $tmp42 = NULL;
  $tmp43 = NULL;
//
  __patsflab__ats2phppre_PHParray_patsfun_10:
  if($arg0) {
    $tmp40 = ats2phppre_lt_int1_int1($env2, $env1);
    if($tmp40) {
      $tmp41 = ats2phppre_PHParray_get_at($env0, $env2);
      $tmp43 = ats2phppre_add_int1_int1($env2, 1);
      $tmp42 = _ats2phppre_PHParray_auxmain_9($env0, $env1, $tmp43);
      $tmpret39 = array($tmp41, $tmp42);
    } else {
      $tmpret39 = NULL;
    } // endif
  } else {
  } // endif
  return $tmpret39;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/

function
ats2phppre_PHParref2list($arg0)
{
//
  $tmpret0 = NULL;
  $tmp1 = NULL;
//
  __patsflab_PHParref2list:
  $tmp1 = ats2phppre_PHParref2array($arg0);
  $tmpret0 = ats2phppre_PHParray2list($tmp1);
  return $tmpret0;
} // end-of-function


function
ats2phppre_PHParref2list_rev($arg0)
{
//
  $tmpret2 = NULL;
  $tmp3 = NULL;
//
  __patsflab_PHParref2list_rev:
  $tmp3 = ats2phppre_PHParref2array($arg0);
  $tmpret2 = ats2phppre_PHParray2list_rev($tmp3);
  return $tmpret2;
} // end-of-function


function
ats2phppre_PHParref_streamize_elt($arg0)
{
//
  $tmpret4 = NULL;
  $tmp5 = NULL;
//
  __patsflab_PHParref_streamize_elt:
  $tmp5 = ats2phppre_PHParref2array($arg0);
  $tmpret4 = ats2phppre_PHParray_streamize_elt($tmp5);
  return $tmpret4;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/
function
_ats2phppre_arrayref_patsfun_8__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_arrayref_patsfun_8($cenv[1], $arg0); }, $env0);
}


function
ats2phppre_arrayref_exists_cloref($arg0, $arg1, $arg2)
{
//
  $tmpret0 = NULL;
//
  __patsflab_arrayref_exists_cloref:
  $tmpret0 = ats2phppre_int_exists_cloref($arg1, $arg2);
  return $tmpret0;
} // end-of-function


function
ats2phppre_arrayref_forall_cloref($arg0, $arg1, $arg2)
{
//
  $tmpret1 = NULL;
//
  __patsflab_arrayref_forall_cloref:
  $tmpret1 = ats2phppre_int_forall_cloref($arg1, $arg2);
  return $tmpret1;
} // end-of-function


function
ats2phppre_arrayref_foreach_cloref($arg0, $arg1, $arg2)
{
//
//
  __patsflab_arrayref_foreach_cloref:
  ats2phppre_int_foreach_cloref($arg1, $arg2);
  return/*_void*/;
} // end-of-function


function
ats2phppre_arrszref_make_elt($arg0, $arg1)
{
//
  $tmpret3 = NULL;
  $tmp4 = NULL;
//
  __patsflab_arrszref_make_elt:
  $tmp4 = ats2phppre_arrayref_make_elt($arg0, $arg1);
  $tmpret3 = ats2phppre_arrszref_make_arrayref($tmp4, $arg0);
  return $tmpret3;
} // end-of-function


function
ats2phppre_arrszref_exists_cloref($arg0, $arg1)
{
//
  $tmpret5 = NULL;
  $tmp6 = NULL;
//
  __patsflab_arrszref_exists_cloref:
  $tmp6 = ats2phppre_arrszref_size($arg0);
  $tmpret5 = ats2phppre_int_exists_cloref($tmp6, $arg1);
  return $tmpret5;
} // end-of-function


function
ats2phppre_arrszref_forall_cloref($arg0, $arg1)
{
//
  $tmpret7 = NULL;
  $tmp8 = NULL;
//
  __patsflab_arrszref_forall_cloref:
  $tmp8 = ats2phppre_arrszref_size($arg0);
  $tmpret7 = ats2phppre_int_forall_cloref($tmp8, $arg1);
  return $tmpret7;
} // end-of-function


function
ats2phppre_arrszref_foreach_cloref($arg0, $arg1)
{
//
  $tmp10 = NULL;
//
  __patsflab_arrszref_foreach_cloref:
  $tmp10 = ats2phppre_arrszref_size($arg0);
  ats2phppre_int_foreach_cloref($tmp10, $arg1);
  return/*_void*/;
} // end-of-function


function
ats2phppre_arrszref_foreach_method($arg0)
{
//
  $tmpret11 = NULL;
//
  __patsflab_arrszref_foreach_method:
  $tmpret11 = _ats2phppre_arrayref_patsfun_8__closurerize($arg0);
  return $tmpret11;
} // end-of-function


function
_ats2phppre_arrayref_patsfun_8($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_arrayref_patsfun_8:
  ats2phppre_arrszref_foreach_cloref($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_arrayref_make_elt($arg0, $arg1)
{
//
  $tmpret13 = NULL;
  $tmp14 = NULL;
//
  __patsflab_arrayref_make_elt:
  $tmp14 = ats2phppre_PHParref_make_elt($arg0, $arg1);
  $tmpret13 = $tmp14;
  return $tmpret13;
} // end-of-function


function
ats2phppre_arrayref_get_at($arg0, $arg1)
{
//
  $tmpret15 = NULL;
//
  __patsflab_arrayref_get_at:
  $tmpret15 = ats2phppre_PHParref_get_at($arg0, $arg1);
  return $tmpret15;
} // end-of-function


function
ats2phppre_arrayref_set_at($arg0, $arg1, $arg2)
{
//
//
  __patsflab_arrayref_set_at:
  ats2phppre_PHParref_set_at($arg0, $arg1, $arg2);
  return/*_void*/;
} // end-of-function


function
ats2phppre_arrszref_make_arrayref($arg0, $arg1)
{
//
  $tmpret17 = NULL;
//
  __patsflab_arrszref_make_arrayref:
  $tmpret17 = $arg0;
  return $tmpret17;
} // end-of-function


function
ats2phppre_arrszref_size($arg0)
{
//
  $tmpret18 = NULL;
//
  __patsflab_arrszref_size:
  $tmpret18 = ats2phppre_PHParref_length($arg0);
  return $tmpret18;
} // end-of-function


function
ats2phppre_arrszref_get_at($arg0, $arg1)
{
//
  $tmpret19 = NULL;
//
  __patsflab_arrszref_get_at:
  $tmpret19 = ats2phppre_PHParref_get_at($arg0, $arg1);
  return $tmpret19;
} // end-of-function


function
ats2phppre_arrszref_set_at($arg0, $arg1, $arg2)
{
//
//
  __patsflab_arrszref_set_at:
  ats2phppre_PHParref_set_at($arg0, $arg1, $arg2);
  return/*_void*/;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/

function
ats2phppre_ref($arg0)
{
//
  $tmpret0 = NULL;
//
  __patsflab_ref:
  $tmpret0 = ats2phppre_ref_make_elt($arg0);
  return $tmpret0;
} // end-of-function


function
ats2phppre_ref_make_elt($arg0)
{
//
  $tmpret1 = NULL;
  $tmp2 = NULL;
//
  __patsflab_ref_make_elt:
  $tmp2 = ats2phppre_PHPref_new($arg0);
  $tmpret1 = $tmp2;
  return $tmpret1;
} // end-of-function


function
ats2phppre_ref_get_elt($arg0)
{
//
  $tmpret3 = NULL;
//
  __patsflab_ref_get_elt:
  $tmpret3 = ats2phppre_PHPref_get_elt($arg0);
  return $tmpret3;
} // end-of-function


function
ats2phppre_ref_set_elt($arg0, $arg1)
{
//
//
  __patsflab_ref_set_elt:
  ats2phppre_PHPref_set_elt($arg0, $arg1);
  return/*_void*/;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/

function
slistref_make_nil()
{
//
  $tmpret0 = NULL;
  $tmp1 = NULL;
//
  __patsflab_slistref_make_nil:
  $tmp1 = NULL;
  $tmpret0 = ats2phppre_ref($tmp1);
  return $tmpret0;
} // end-of-function


function
slistref_length($arg0)
{
//
  $tmpret2 = NULL;
  $tmp3 = NULL;
//
  __patsflab_slistref_length:
  $tmp3 = ats2phppre_ref_get_elt($arg0);
  $tmpret2 = ats2phppre_list_length($tmp3);
  return $tmpret2;
} // end-of-function


function
slistref_push($arg0, $arg1)
{
//
  $tmp5 = NULL;
  $tmp6 = NULL;
//
  __patsflab_slistref_push:
  $tmp6 = ats2phppre_ref_get_elt($arg0);
  $tmp5 = array($arg1, $tmp6);
  ats2phppre_ref_set_elt($arg0, $tmp5);
  return/*_void*/;
} // end-of-function


function
slistref_pop_opt($arg0)
{
//
  $tmpret7 = NULL;
  $tmp8 = NULL;
  $tmp9 = NULL;
  $tmp10 = NULL;
//
  __patsflab_slistref_pop_opt:
  $tmp8 = ats2phppre_ref_get_elt($arg0);
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab0:
    if(ATSCKptriscons($tmp8)) goto __atstmplab3;
    __atstmplab1:
    $tmpret7 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab2:
    __atstmplab3:
    $tmp9 = $tmp8[0];
    $tmp10 = $tmp8[1];
    ats2phppre_ref_set_elt($arg0, $tmp10);
    $tmpret7 = array($tmp9);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret7;
} // end-of-function


function
slistref_foldleft($arg0, $arg1, $arg2)
{
//
  $tmpret12 = NULL;
  $tmp13 = NULL;
//
  __patsflab_slistref_foldleft:
  $tmp13 = ats2phppre_ref_get_elt($arg0);
  $tmpret12 = ats2phppre_list_foldleft($tmp13, $arg1, $arg2);
  return $tmpret12;
} // end-of-function


function
slistref_foldright($arg0, $arg1, $arg2)
{
//
  $tmpret14 = NULL;
  $tmp15 = NULL;
//
  __patsflab_slistref_foldright:
  $tmp15 = ats2phppre_ref_get_elt($arg0);
  $tmpret14 = ats2phppre_list_foldright($tmp15, $arg1, $arg2);
  return $tmpret14;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/

function
ats2phppre_qlistref_make_nil()
{
//
  $tmpret0 = NULL;
  $tmp1 = NULL;
  $tmp2 = NULL;
  $tmp3 = NULL;
  $tmp4 = NULL;
//
  __patsflab_qlistref_make_nil:
  $tmp2 = NULL;
  $tmp1 = ats2phppre_ref($tmp2);
  $tmp4 = NULL;
  $tmp3 = ats2phppre_ref($tmp4);
  $tmpret0 = array($tmp1, $tmp3);
  return $tmpret0;
} // end-of-function


function
ats2phppre_qlistref_length($arg0)
{
//
  $tmpret5 = NULL;
  $tmp6 = NULL;
  $tmp7 = NULL;
  $tmp8 = NULL;
  $tmp9 = NULL;
  $tmp10 = NULL;
  $tmp11 = NULL;
//
  __patsflab_qlistref_length:
  $tmp6 = $arg0[0];
  $tmp7 = $arg0[1];
  $tmp9 = ats2phppre_ref_get_elt($tmp6);
  $tmp8 = ats2phppre_list_length($tmp9);
  $tmp11 = ats2phppre_ref_get_elt($tmp7);
  $tmp10 = ats2phppre_list_length($tmp11);
  $tmpret5 = ats2phppre_add_int1_int1($tmp8, $tmp10);
  return $tmpret5;
} // end-of-function


function
ats2phppre_qlistref_enqueue($arg0, $arg1)
{
//
  $tmp13 = NULL;
  $tmp14 = NULL;
  $tmp15 = NULL;
  $tmp16 = NULL;
//
  __patsflab_qlistref_enqueue:
  $tmp13 = $arg0[0];
  $tmp14 = $arg0[1];
  $tmp16 = ats2phppre_ref_get_elt($tmp13);
  $tmp15 = array($arg1, $tmp16);
  ats2phppre_ref_set_elt($tmp13, $tmp15);
  return/*_void*/;
} // end-of-function


function
ats2phppre_qlistref_dequeue_opt($arg0)
{
//
  $tmpret17 = NULL;
  $tmp18 = NULL;
  $tmp19 = NULL;
  $tmp20 = NULL;
  $tmp21 = NULL;
  $tmp22 = NULL;
  $tmp23 = NULL;
  $tmp25 = NULL;
  $tmp26 = NULL;
  $tmp27 = NULL;
//
  __patsflab_qlistref_dequeue_opt:
  $tmp18 = $arg0[0];
  $tmp19 = $arg0[1];
  $tmp20 = ats2phppre_ref_get_elt($tmp19);
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab0:
    if(ATSCKptriscons($tmp20)) goto __atstmplab3;
    __atstmplab1:
    $tmp23 = ats2phppre_ref_get_elt($tmp18);
    $tmp25 = NULL;
    ats2phppre_ref_set_elt($tmp18, $tmp25);
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab4:
      if(ATSCKptriscons($tmp23)) goto __atstmplab7;
      __atstmplab5:
      $tmpret17 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab6:
      __atstmplab7:
      $tmp26 = $tmp23[0];
      $tmp27 = $tmp23[1];
      ats2phppre_ref_set_elt($tmp19, $tmp27);
      $tmpret17 = array($tmp26);
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab2:
    __atstmplab3:
    $tmp21 = $tmp20[0];
    $tmp22 = $tmp20[1];
    ats2phppre_ref_set_elt($tmp19, $tmp22);
    $tmpret17 = array($tmp21);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret17;
} // end-of-function


function
ats2phppre_qlistref_foldleft($arg0, $arg1, $arg2)
{
//
  $tmpret30 = NULL;
  $tmp31 = NULL;
  $tmp32 = NULL;
  $tmp41 = NULL;
  $tmp42 = NULL;
  $tmp43 = NULL;
//
  __patsflab_qlistref_foldleft:
  $tmp31 = $arg0[0];
  $tmp32 = $arg0[1];
  $tmp41 = ats2phppre_ref_get_elt($tmp31);
  $tmp43 = ats2phppre_ref_get_elt($tmp32);
  $tmp42 = _ats2phppre_qlistref_auxl_5($arg2, $arg1, $tmp43);
  $tmpret30 = _ats2phppre_qlistref_auxr_6($arg2, $tmp41, $tmp42);
  return $tmpret30;
} // end-of-function


function
_ats2phppre_qlistref_auxl_5($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret33 = NULL;
  $tmp34 = NULL;
  $tmp35 = NULL;
  $tmp36 = NULL;
//
  __patsflab__ats2phppre_qlistref_auxl_5:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab8:
    if(ATSCKptriscons($arg1)) goto __atstmplab11;
    __atstmplab9:
    $tmpret33 = $arg0;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab10:
    __atstmplab11:
    $tmp34 = $arg1[0];
    $tmp35 = $arg1[1];
    $tmp36 = $env0[0]($env0, $arg0, $tmp34);
    // ATStailcalseq_beg
    $apy0 = $tmp36;
    $apy1 = $tmp35;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_qlistref_auxl_5;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret33;
} // end-of-function


function
_ats2phppre_qlistref_auxr_6($env0, $arg0, $arg1)
{
//
  $tmpret37 = NULL;
  $tmp38 = NULL;
  $tmp39 = NULL;
  $tmp40 = NULL;
//
  __patsflab__ats2phppre_qlistref_auxr_6:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab12:
    if(ATSCKptriscons($arg0)) goto __atstmplab15;
    __atstmplab13:
    $tmpret37 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab14:
    __atstmplab15:
    $tmp38 = $arg0[0];
    $tmp39 = $arg0[1];
    $tmp40 = _ats2phppre_qlistref_auxr_6($env0, $tmp39, $arg1);
    $tmpret37 = $env0[0]($env0, $tmp40, $tmp38);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret37;
} // end-of-function


function
ats2phppre_qlistref_foldright($arg0, $arg1, $arg2)
{
//
  $tmpret44 = NULL;
  $tmp45 = NULL;
  $tmp46 = NULL;
  $tmp55 = NULL;
  $tmp56 = NULL;
  $tmp57 = NULL;
//
  __patsflab_qlistref_foldright:
  $tmp45 = $arg0[0];
  $tmp46 = $arg0[1];
  $tmp55 = ats2phppre_ref_get_elt($tmp46);
  $tmp57 = ats2phppre_ref_get_elt($tmp45);
  $tmp56 = _ats2phppre_qlistref_auxl_8($arg1, $arg2, $tmp57);
  $tmpret44 = _ats2phppre_qlistref_auxr_9($arg1, $tmp55, $tmp56);
  return $tmpret44;
} // end-of-function


function
_ats2phppre_qlistref_auxl_8($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret47 = NULL;
  $tmp48 = NULL;
  $tmp49 = NULL;
  $tmp50 = NULL;
//
  __patsflab__ats2phppre_qlistref_auxl_8:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab16:
    if(ATSCKptriscons($arg1)) goto __atstmplab19;
    __atstmplab17:
    $tmpret47 = $arg0;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab18:
    __atstmplab19:
    $tmp48 = $arg1[0];
    $tmp49 = $arg1[1];
    $tmp50 = $env0[0]($env0, $tmp48, $arg0);
    // ATStailcalseq_beg
    $apy0 = $tmp50;
    $apy1 = $tmp49;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_qlistref_auxl_8;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret47;
} // end-of-function


function
_ats2phppre_qlistref_auxr_9($env0, $arg0, $arg1)
{
//
  $tmpret51 = NULL;
  $tmp52 = NULL;
  $tmp53 = NULL;
  $tmp54 = NULL;
//
  __patsflab__ats2phppre_qlistref_auxr_9:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab20:
    if(ATSCKptriscons($arg0)) goto __atstmplab23;
    __atstmplab21:
    $tmpret51 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab22:
    __atstmplab23:
    $tmp52 = $arg0[0];
    $tmp53 = $arg0[1];
    $tmp54 = _ats2phppre_qlistref_auxr_9($env0, $tmp53, $arg1);
    $tmpret51 = $env0[0]($env0, $tmp52, $tmp54);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret51;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/
function
_ats2phppre_ML_list0_patsfun_29__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_list0_patsfun_29($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_ML_list0_patsfun_32__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_list0_patsfun_32($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_ML_list0_patsfun_35__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_list0_patsfun_35($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_ML_list0_patsfun_38__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_list0_patsfun_38($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_ML_list0_patsfun_42__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_list0_patsfun_42($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_ML_list0_patsfun_45__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_list0_patsfun_45($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_ML_list0_patsfun_48__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_list0_patsfun_48($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_ML_list0_patsfun_51__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_list0_patsfun_51($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_ML_list0_patsfun_54__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_list0_patsfun_54($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_ML_list0_patsfun_58__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_list0_patsfun_58($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_ML_list0_patsfun_64__closurerize($env0, $env1)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_list0_patsfun_64($cenv[1], $cenv[2], $arg0); }, $env0, $env1);
}


function
ats2phppre_ML_list0_head_opt($arg0)
{
//
  $tmpret7 = NULL;
  $tmp8 = NULL;
//
  __patsflab_list0_head_opt:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab6:
    if(ATSCKptriscons($arg0)) goto __atstmplab9;
    __atstmplab7:
    $tmpret7 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab8:
    __atstmplab9:
    $tmp8 = $arg0[0];
    $tmpret7 = array($tmp8);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret7;
} // end-of-function


function
ats2phppre_ML_list0_tail_opt($arg0)
{
//
  $tmpret10 = NULL;
  $tmp12 = NULL;
//
  __patsflab_list0_tail_opt:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab10:
    if(ATSCKptriscons($arg0)) goto __atstmplab13;
    __atstmplab11:
    $tmpret10 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab12:
    __atstmplab13:
    $tmp12 = $arg0[1];
    $tmpret10 = array($tmp12);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret10;
} // end-of-function


function
ats2phppre_ML_list0_length($arg0)
{
//
  $tmpret13 = NULL;
//
  __patsflab_list0_length:
  $tmpret13 = ats2phppre_list_length($arg0);
  return $tmpret13;
} // end-of-function


function
ats2phppre_ML_list0_last_opt($arg0)
{
//
  $tmpret14 = NULL;
  $tmp18 = NULL;
  $tmp19 = NULL;
  $tmp20 = NULL;
//
  __patsflab_list0_last_opt:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab18:
    if(ATSCKptriscons($arg0)) goto __atstmplab21;
    __atstmplab19:
    $tmpret14 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab20:
    __atstmplab21:
    $tmp18 = $arg0[0];
    $tmp19 = $arg0[1];
    $tmp20 = _ats2phppre_ML_list0_loop_8($tmp18, $tmp19);
    $tmpret14 = array($tmp20);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret14;
} // end-of-function


function
_ats2phppre_ML_list0_loop_8($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret15 = NULL;
  $tmp16 = NULL;
  $tmp17 = NULL;
//
  __patsflab__ats2phppre_ML_list0_loop_8:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab14:
    if(ATSCKptriscons($arg1)) goto __atstmplab17;
    __atstmplab15:
    $tmpret15 = $arg0;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab16:
    __atstmplab17:
    $tmp16 = $arg1[0];
    $tmp17 = $arg1[1];
    // ATStailcalseq_beg
    $apy0 = $tmp16;
    $apy1 = $tmp17;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_ML_list0_loop_8;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret15;
} // end-of-function


function
ats2phppre_ML_list0_get_at_opt($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret21 = NULL;
  $tmp22 = NULL;
  $tmp23 = NULL;
  $tmp24 = NULL;
  $tmp25 = NULL;
//
  __patsflab_list0_get_at_opt:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab22:
    if(ATSCKptriscons($arg0)) goto __atstmplab25;
    __atstmplab23:
    $tmpret21 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab24:
    __atstmplab25:
    $tmp22 = $arg0[0];
    $tmp23 = $arg0[1];
    $tmp24 = ats2phppre_gt_int1_int1($arg1, 0);
    if($tmp24) {
      $tmp25 = ats2phppre_sub_int1_int1($arg1, 1);
      // ATStailcalseq_beg
      $apy0 = $tmp23;
      $apy1 = $tmp25;
      $arg0 = $apy0;
      $arg1 = $apy1;
      goto __patsflab_list0_get_at_opt;
      // ATStailcalseq_end
    } else {
      $tmpret21 = array($tmp22);
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret21;
} // end-of-function


function
ats2phppre_ML_list0_make_elt($arg0, $arg1)
{
//
  $tmpret26 = NULL;
  $tmp27 = NULL;
  $tmp28 = NULL;
//
  __patsflab_list0_make_elt:
  $tmp27 = ats2phppre_gte_int1_int1($arg0, 0);
  if($tmp27) {
    $tmp28 = ats2phppre_list_make_elt($arg0, $arg1);
    $tmpret26 = $tmp28;
  } else {
    $tmpret26 = NULL;
  } // endif
  return $tmpret26;
} // end-of-function


function
ats2phppre_ML_list0_make_intrange_2($arg0, $arg1)
{
//
  $tmpret29 = NULL;
  $tmp30 = NULL;
//
  __patsflab_list0_make_intrange_2:
  $tmp30 = ats2phppre_list_make_intrange_2($arg0, $arg1);
  $tmpret29 = $tmp30;
  return $tmpret29;
} // end-of-function


function
ats2phppre_ML_list0_make_intrange_3($arg0, $arg1, $arg2)
{
//
  $tmpret31 = NULL;
  $tmp32 = NULL;
//
  __patsflab_list0_make_intrange_3:
  $tmp32 = ats2phppre_list_make_intrange_3($arg0, $arg1, $arg2);
  $tmpret31 = $tmp32;
  return $tmpret31;
} // end-of-function


function
ats2phppre_ML_list0_snoc($arg0, $arg1)
{
//
  $tmpret44 = NULL;
  $tmp45 = NULL;
//
  __patsflab_list0_snoc:
  $tmp45 = ats2phppre_list_snoc($arg0, $arg1);
  $tmpret44 = $tmp45;
  return $tmpret44;
} // end-of-function


function
ats2phppre_ML_list0_extend($arg0, $arg1)
{
//
  $tmpret46 = NULL;
  $tmp47 = NULL;
//
  __patsflab_list0_extend:
  $tmp47 = ats2phppre_list_extend($arg0, $arg1);
  $tmpret46 = $tmp47;
  return $tmpret46;
} // end-of-function


function
ats2phppre_ML_list0_append($arg0, $arg1)
{
//
  $tmpret48 = NULL;
  $tmp49 = NULL;
//
  __patsflab_list0_append:
  $tmp49 = ats2phppre_list_append($arg0, $arg1);
  $tmpret48 = $tmp49;
  return $tmpret48;
} // end-of-function


function
ats2phppre_ML_mul_int_list0($arg0, $arg1)
{
//
  $tmpret50 = NULL;
  $tmp51 = NULL;
//
  __patsflab_mul_int_list0:
  $tmp51 = ats2phppre_mul_int_list($arg0, $arg1);
  $tmpret50 = $tmp51;
  return $tmpret50;
} // end-of-function


function
ats2phppre_ML_list0_reverse($arg0)
{
//
  $tmpret52 = NULL;
  $tmp53 = NULL;
//
  __patsflab_list0_reverse:
  $tmp53 = ats2phppre_list_reverse($arg0);
  $tmpret52 = $tmp53;
  return $tmpret52;
} // end-of-function


function
ats2phppre_ML_list0_reverse_append($arg0, $arg1)
{
//
  $tmpret54 = NULL;
  $tmp55 = NULL;
//
  __patsflab_list0_reverse_append:
  $tmp55 = ats2phppre_list_reverse_append($arg0, $arg1);
  $tmpret54 = $tmp55;
  return $tmpret54;
} // end-of-function


function
ats2phppre_ML_list0_concat($arg0)
{
//
  $tmpret56 = NULL;
  $tmp57 = NULL;
//
  __patsflab_list0_concat:
  $tmp57 = ats2phppre_list_concat($arg0);
  $tmpret56 = $tmp57;
  return $tmpret56;
} // end-of-function


function
ats2phppre_ML_list0_remove_at_opt($arg0, $arg1)
{
//
  $tmpret58 = NULL;
//
  __patsflab_list0_remove_at_opt:
  $tmpret58 = _ats2phppre_ML_list0_aux_26($arg0, 0);
  return $tmpret58;
} // end-of-function


function
_ats2phppre_ML_list0_aux_26($arg0, $arg1)
{
//
  $tmpret59 = NULL;
  $tmp60 = NULL;
  $tmp61 = NULL;
  $tmp62 = NULL;
  $tmp63 = NULL;
  $tmp64 = NULL;
  $tmp65 = NULL;
  $tmp66 = NULL;
//
  __patsflab__ats2phppre_ML_list0_aux_26:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab30:
    if(ATSCKptriscons($arg0)) goto __atstmplab33;
    __atstmplab31:
    $tmpret59 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab32:
    __atstmplab33:
    $tmp60 = $arg0[0];
    $tmp61 = $arg0[1];
    $tmp62 = ats2phppre_gt_int1_int1($arg1, 0);
    if($tmp62) {
      $tmp64 = ats2phppre_sub_int1_int1($arg1, 1);
      $tmp63 = _ats2phppre_ML_list0_aux_26($tmp61, $tmp64);
      // ATScaseofseq_beg
      do {
        // ATSbranchseq_beg
        __atstmplab34:
        if(ATSCKptriscons($tmp63)) goto __atstmplab37;
        __atstmplab35:
        $tmpret59 = NULL;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        __atstmplab36:
        __atstmplab37:
        $tmp65 = $tmp63[0];
        // ATSINSfreecon($tmp63);
        $tmp66 = array($tmp60, $tmp65);
        $tmpret59 = array($tmp66);
        break;
        // ATSbranchseq_end
      } while(0);
      // ATScaseofseq_end
    } else {
      $tmpret59 = array($tmp61);
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret59;
} // end-of-function


function
ats2phppre_ML_list0_exists($arg0, $arg1)
{
//
  $tmpret67 = NULL;
//
  __patsflab_list0_exists:
  $tmpret67 = ats2phppre_list_exists($arg0, $arg1);
  return $tmpret67;
} // end-of-function


function
ats2phppre_ML_list0_exists_method($arg0)
{
//
  $tmpret68 = NULL;
//
  __patsflab_list0_exists_method:
  $tmpret68 = _ats2phppre_ML_list0_patsfun_29__closurerize($arg0);
  return $tmpret68;
} // end-of-function


function
_ats2phppre_ML_list0_patsfun_29($env0, $arg0)
{
//
  $tmpret69 = NULL;
//
  __patsflab__ats2phppre_ML_list0_patsfun_29:
  $tmpret69 = ats2phppre_ML_list0_exists($env0, $arg0);
  return $tmpret69;
} // end-of-function


function
ats2phppre_ML_list0_iexists($arg0, $arg1)
{
//
  $tmpret70 = NULL;
//
  __patsflab_list0_iexists:
  $tmpret70 = ats2phppre_list_iexists($arg0, $arg1);
  return $tmpret70;
} // end-of-function


function
ats2phppre_ML_list0_iexists_method($arg0)
{
//
  $tmpret71 = NULL;
//
  __patsflab_list0_iexists_method:
  $tmpret71 = _ats2phppre_ML_list0_patsfun_32__closurerize($arg0);
  return $tmpret71;
} // end-of-function


function
_ats2phppre_ML_list0_patsfun_32($env0, $arg0)
{
//
  $tmpret72 = NULL;
//
  __patsflab__ats2phppre_ML_list0_patsfun_32:
  $tmpret72 = ats2phppre_ML_list0_iexists($env0, $arg0);
  return $tmpret72;
} // end-of-function


function
ats2phppre_ML_list0_forall($arg0, $arg1)
{
//
  $tmpret73 = NULL;
//
  __patsflab_list0_forall:
  $tmpret73 = ats2phppre_list_forall($arg0, $arg1);
  return $tmpret73;
} // end-of-function


function
ats2phppre_ML_list0_forall_method($arg0)
{
//
  $tmpret74 = NULL;
//
  __patsflab_list0_forall_method:
  $tmpret74 = _ats2phppre_ML_list0_patsfun_35__closurerize($arg0);
  return $tmpret74;
} // end-of-function


function
_ats2phppre_ML_list0_patsfun_35($env0, $arg0)
{
//
  $tmpret75 = NULL;
//
  __patsflab__ats2phppre_ML_list0_patsfun_35:
  $tmpret75 = ats2phppre_ML_list0_forall($env0, $arg0);
  return $tmpret75;
} // end-of-function


function
ats2phppre_ML_list0_iforall($arg0, $arg1)
{
//
  $tmpret76 = NULL;
//
  __patsflab_list0_iforall:
  $tmpret76 = ats2phppre_list_iforall($arg0, $arg1);
  return $tmpret76;
} // end-of-function


function
ats2phppre_ML_list0_iforall_method($arg0)
{
//
  $tmpret77 = NULL;
//
  __patsflab_list0_iforall_method:
  $tmpret77 = _ats2phppre_ML_list0_patsfun_38__closurerize($arg0);
  return $tmpret77;
} // end-of-function


function
_ats2phppre_ML_list0_patsfun_38($env0, $arg0)
{
//
  $tmpret78 = NULL;
//
  __patsflab__ats2phppre_ML_list0_patsfun_38:
  $tmpret78 = ats2phppre_ML_list0_iforall($env0, $arg0);
  return $tmpret78;
} // end-of-function


function
ats2phppre_ML_list0_app($arg0, $arg1)
{
//
//
  __patsflab_list0_app:
  ats2phppre_ML_list0_foreach($arg0, $arg1);
  return/*_void*/;
} // end-of-function


function
ats2phppre_ML_list0_foreach($arg0, $arg1)
{
//
//
  __patsflab_list0_foreach:
  ats2phppre_list_foreach($arg0, $arg1);
  return/*_void*/;
} // end-of-function


function
ats2phppre_ML_list0_foreach_method($arg0)
{
//
  $tmpret81 = NULL;
//
  __patsflab_list0_foreach_method:
  $tmpret81 = _ats2phppre_ML_list0_patsfun_42__closurerize($arg0);
  return $tmpret81;
} // end-of-function


function
_ats2phppre_ML_list0_patsfun_42($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_ML_list0_patsfun_42:
  ats2phppre_ML_list0_foreach($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_ML_list0_iforeach($arg0, $arg1)
{
//
//
  __patsflab_list0_iforeach:
  ats2phppre_list_iforeach($arg0, $arg1);
  return/*_void*/;
} // end-of-function


function
ats2phppre_ML_list0_iforeach_method($arg0)
{
//
  $tmpret84 = NULL;
//
  __patsflab_list0_iforeach_method:
  $tmpret84 = _ats2phppre_ML_list0_patsfun_45__closurerize($arg0);
  return $tmpret84;
} // end-of-function


function
_ats2phppre_ML_list0_patsfun_45($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_ML_list0_patsfun_45:
  ats2phppre_ML_list0_iforeach($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_ML_list0_rforeach($arg0, $arg1)
{
//
//
  __patsflab_list0_rforeach:
  ats2phppre_list_rforeach($arg0, $arg1);
  return/*_void*/;
} // end-of-function


function
ats2phppre_ML_list0_rforeach_method($arg0)
{
//
  $tmpret87 = NULL;
//
  __patsflab_list0_rforeach_method:
  $tmpret87 = _ats2phppre_ML_list0_patsfun_48__closurerize($arg0);
  return $tmpret87;
} // end-of-function


function
_ats2phppre_ML_list0_patsfun_48($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_ML_list0_patsfun_48:
  ats2phppre_ML_list0_rforeach($env0, $arg0);
  return/*_void*/;
} // end-of-function


function
ats2phppre_ML_list0_filter($arg0, $arg1)
{
//
  $tmpret89 = NULL;
  $tmp90 = NULL;
//
  __patsflab_list0_filter:
  $tmp90 = ats2phppre_list_filter($arg0, $arg1);
  $tmpret89 = $tmp90;
  return $tmpret89;
} // end-of-function


function
ats2phppre_ML_list0_filter_method($arg0)
{
//
  $tmpret91 = NULL;
//
  __patsflab_list0_filter_method:
  $tmpret91 = _ats2phppre_ML_list0_patsfun_51__closurerize($arg0);
  return $tmpret91;
} // end-of-function


function
_ats2phppre_ML_list0_patsfun_51($env0, $arg0)
{
//
  $tmpret92 = NULL;
//
  __patsflab__ats2phppre_ML_list0_patsfun_51:
  $tmpret92 = ats2phppre_ML_list0_filter($env0, $arg0);
  return $tmpret92;
} // end-of-function


function
ats2phppre_ML_list0_map($arg0, $arg1)
{
//
  $tmpret93 = NULL;
  $tmp94 = NULL;
//
  __patsflab_list0_map:
  $tmp94 = ats2phppre_list_map($arg0, $arg1);
  $tmpret93 = $tmp94;
  return $tmpret93;
} // end-of-function


function
ats2phppre_ML_list0_map_method($arg0, $arg1)
{
//
  $tmpret95 = NULL;
//
  __patsflab_list0_map_method:
  $tmpret95 = _ats2phppre_ML_list0_patsfun_54__closurerize($arg0);
  return $tmpret95;
} // end-of-function


function
_ats2phppre_ML_list0_patsfun_54($env0, $arg0)
{
//
  $tmpret96 = NULL;
//
  __patsflab__ats2phppre_ML_list0_patsfun_54:
  $tmpret96 = ats2phppre_ML_list0_map($env0, $arg0);
  return $tmpret96;
} // end-of-function


function
ats2phppre_ML_list0_mapcons($arg0, $arg1)
{
//
  $tmpret97 = NULL;
  $tmp98 = NULL;
  $tmp99 = NULL;
  $tmp100 = NULL;
  $tmp101 = NULL;
//
  __patsflab_list0_mapcons:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab38:
    if(ATSCKptriscons($arg1)) goto __atstmplab41;
    __atstmplab39:
    $tmpret97 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab40:
    __atstmplab41:
    $tmp98 = $arg1[0];
    $tmp99 = $arg1[1];
    $tmp100 = array($arg0, $tmp98);
    $tmp101 = ats2phppre_ML_list0_mapcons($arg0, $tmp99);
    $tmpret97 = array($tmp100, $tmp101);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret97;
} // end-of-function


function
ats2phppre_ML_list0_find_opt($arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret102 = NULL;
  $tmp103 = NULL;
  $tmp104 = NULL;
  $tmp105 = NULL;
//
  __patsflab_list0_find_opt:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab42:
    if(ATSCKptriscons($arg0)) goto __atstmplab45;
    __atstmplab43:
    $tmpret102 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab44:
    __atstmplab45:
    $tmp103 = $arg0[0];
    $tmp104 = $arg0[1];
    $tmp105 = $arg1[0]($arg1, $tmp103);
    if($tmp105) {
      $tmpret102 = array($tmp103);
    } else {
      // ATStailcalseq_beg
      $apy0 = $tmp104;
      $apy1 = $arg1;
      $arg0 = $apy0;
      $arg1 = $apy1;
      goto __patsflab_list0_find_opt;
      // ATStailcalseq_end
    } // endif
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret102;
} // end-of-function


function
ats2phppre_ML_list0_find_opt_method($arg0)
{
//
  $tmpret106 = NULL;
//
  __patsflab_list0_find_opt_method:
  $tmpret106 = _ats2phppre_ML_list0_patsfun_58__closurerize($arg0);
  return $tmpret106;
} // end-of-function


function
_ats2phppre_ML_list0_patsfun_58($env0, $arg0)
{
//
  $tmpret107 = NULL;
//
  __patsflab__ats2phppre_ML_list0_patsfun_58:
  $tmpret107 = ats2phppre_ML_list0_find_opt($env0, $arg0);
  return $tmpret107;
} // end-of-function


function
ats2phppre_ML_list0_zip($arg0, $arg1)
{
//
  $tmpret108 = NULL;
//
  __patsflab_list0_zip:
  $tmpret108 = _ats2phppre_ML_list0_aux_60($arg0, $arg1);
  return $tmpret108;
} // end-of-function


function
_ats2phppre_ML_list0_aux_60($arg0, $arg1)
{
//
  $tmpret109 = NULL;
  $tmp110 = NULL;
  $tmp111 = NULL;
  $tmp112 = NULL;
  $tmp113 = NULL;
  $tmp114 = NULL;
  $tmp115 = NULL;
//
  __patsflab__ats2phppre_ML_list0_aux_60:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab46:
    if(ATSCKptriscons($arg0)) goto __atstmplab49;
    __atstmplab47:
    $tmpret109 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab48:
    __atstmplab49:
    $tmp110 = $arg0[0];
    $tmp111 = $arg0[1];
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab50:
      if(ATSCKptriscons($arg1)) goto __atstmplab53;
      __atstmplab51:
      $tmpret109 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab52:
      __atstmplab53:
      $tmp112 = $arg1[0];
      $tmp113 = $arg1[1];
      $tmp114 = array($tmp110, $tmp112);
      $tmp115 = _ats2phppre_ML_list0_aux_60($tmp111, $tmp113);
      $tmpret109 = array($tmp114, $tmp115);
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret109;
} // end-of-function


function
ats2phppre_ML_list0_zipwith($arg0, $arg1, $arg2)
{
//
  $tmpret116 = NULL;
//
  __patsflab_list0_zipwith:
  $tmpret116 = _ats2phppre_ML_list0_aux_62($arg0, $arg1, $arg2);
  return $tmpret116;
} // end-of-function


function
_ats2phppre_ML_list0_aux_62($arg0, $arg1, $arg2)
{
//
  $tmpret117 = NULL;
  $tmp118 = NULL;
  $tmp119 = NULL;
  $tmp120 = NULL;
  $tmp121 = NULL;
  $tmp122 = NULL;
  $tmp123 = NULL;
//
  __patsflab__ats2phppre_ML_list0_aux_62:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab54:
    if(ATSCKptriscons($arg0)) goto __atstmplab57;
    __atstmplab55:
    $tmpret117 = NULL;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab56:
    __atstmplab57:
    $tmp118 = $arg0[0];
    $tmp119 = $arg0[1];
    // ATScaseofseq_beg
    do {
      // ATSbranchseq_beg
      __atstmplab58:
      if(ATSCKptriscons($arg1)) goto __atstmplab61;
      __atstmplab59:
      $tmpret117 = NULL;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      __atstmplab60:
      __atstmplab61:
      $tmp120 = $arg1[0];
      $tmp121 = $arg1[1];
      $tmp122 = $arg2[0]($arg2, $tmp118, $tmp120);
      $tmp123 = _ats2phppre_ML_list0_aux_62($tmp119, $tmp121, $arg2);
      $tmpret117 = array($tmp122, $tmp123);
      break;
      // ATSbranchseq_end
    } while(0);
    // ATScaseofseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret117;
} // end-of-function


function
ats2phppre_ML_list0_zipwith_method($arg0, $arg1)
{
//
  $tmpret124 = NULL;
//
  __patsflab_list0_zipwith_method:
  $tmpret124 = _ats2phppre_ML_list0_patsfun_64__closurerize($arg0, $arg1);
  return $tmpret124;
} // end-of-function


function
_ats2phppre_ML_list0_patsfun_64($env0, $env1, $arg0)
{
//
  $tmpret125 = NULL;
//
  __patsflab__ats2phppre_ML_list0_patsfun_64:
  $tmpret125 = ats2phppre_ML_list0_zipwith($env0, $env1, $arg0);
  return $tmpret125;
} // end-of-function


function
ats2phppre_ML_list0_foldleft($arg0, $arg1, $arg2)
{
//
  $tmpret126 = NULL;
//
  __patsflab_list0_foldleft:
  $tmpret126 = _ats2phppre_ML_list0_aux_66($arg2, $arg1, $arg0);
  return $tmpret126;
} // end-of-function


function
_ats2phppre_ML_list0_aux_66($env0, $arg0, $arg1)
{
//
  $apy0 = NULL;
  $apy1 = NULL;
  $tmpret127 = NULL;
  $tmp128 = NULL;
  $tmp129 = NULL;
  $tmp130 = NULL;
//
  __patsflab__ats2phppre_ML_list0_aux_66:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab62:
    if(ATSCKptriscons($arg1)) goto __atstmplab65;
    __atstmplab63:
    $tmpret127 = $arg0;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab64:
    __atstmplab65:
    $tmp128 = $arg1[0];
    $tmp129 = $arg1[1];
    $tmp130 = $env0[0]($env0, $arg0, $tmp128);
    // ATStailcalseq_beg
    $apy0 = $tmp130;
    $apy1 = $tmp129;
    $arg0 = $apy0;
    $arg1 = $apy1;
    goto __patsflab__ats2phppre_ML_list0_aux_66;
    // ATStailcalseq_end
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret127;
} // end-of-function


function
ats2phppre_ML_list0_foldright($arg0, $arg1, $arg2)
{
//
  $tmpret131 = NULL;
//
  __patsflab_list0_foldright:
  $tmpret131 = _ats2phppre_ML_list0_aux_68($arg1, $arg2, $arg0, $arg2);
  return $tmpret131;
} // end-of-function


function
_ats2phppre_ML_list0_aux_68($env0, $env1, $arg0, $arg1)
{
//
  $tmpret132 = NULL;
  $tmp133 = NULL;
  $tmp134 = NULL;
  $tmp135 = NULL;
//
  __patsflab__ats2phppre_ML_list0_aux_68:
  // ATScaseofseq_beg
  do {
    // ATSbranchseq_beg
    __atstmplab66:
    if(ATSCKptriscons($arg0)) goto __atstmplab69;
    __atstmplab67:
    $tmpret132 = $arg1;
    break;
    // ATSbranchseq_end
    // ATSbranchseq_beg
    __atstmplab68:
    __atstmplab69:
    $tmp133 = $arg0[0];
    $tmp134 = $arg0[1];
    $tmp135 = _ats2phppre_ML_list0_aux_68($env0, $env1, $tmp134, $env1);
    $tmpret132 = $env0[0]($env0, $tmp133, $tmp135);
    break;
    // ATSbranchseq_end
  } while(0);
  // ATScaseofseq_end
  return $tmpret132;
} // end-of-function


function
ats2phppre_ML_list0_sort_2($arg0, $arg1)
{
//
  $tmpret138 = NULL;
  $tmp139 = NULL;
//
  __patsflab_list0_sort_2:
  $tmp139 = ats2phppre_list_sort_2($arg0, $arg1);
  $tmpret138 = $tmp139;
  return $tmpret138;
} // end-of-function


function
ats2phppre_ML_streamize_list0_zip($arg0, $arg1)
{
//
  $tmpret140 = NULL;
//
  __patsflab_streamize_list0_zip:
  $tmpret140 = ats2phppre_streamize_list_zip($arg0, $arg1);
  return $tmpret140;
} // end-of-function


function
ats2phppre_ML_streamize_list0_cross($arg0, $arg1)
{
//
  $tmpret141 = NULL;
//
  __patsflab_streamize_list0_cross:
  $tmpret141 = ats2phppre_streamize_list_cross($arg0, $arg1);
  return $tmpret141;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
**
** The PHP code is generated by atscc2php
** The starting compilation time is: 2017-9-15: 15h:38m
**
*/
function
_ats2phppre_ML_array0_patsfun_7__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_array0_patsfun_7($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_ML_array0_patsfun_10__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_array0_patsfun_10($cenv[1], $arg0); }, $env0);
}

function
_ats2phppre_ML_array0_patsfun_14__closurerize($env0)
{
  return array(function($cenv, $arg0) { return _ats2phppre_ML_array0_patsfun_14($cenv[1], $arg0); }, $env0);
}


function
ats2phppre_ML_array0_make_elt($arg0, $arg1)
{
//
  $tmpret0 = NULL;
//
  __patsflab_array0_make_elt:
  $tmpret0 = ats2phppre_arrszref_make_elt($arg0, $arg1);
  return $tmpret0;
} // end-of-function


function
ats2phppre_ML_array0_size($arg0)
{
//
  $tmpret1 = NULL;
//
  __patsflab_array0_size:
  $tmpret1 = ats2phppre_arrszref_size($arg0);
  return $tmpret1;
} // end-of-function


function
ats2phppre_ML_array0_get_at($arg0, $arg1)
{
//
  $tmpret2 = NULL;
//
  __patsflab_array0_get_at:
  $tmpret2 = ats2phppre_arrszref_get_at($arg0, $arg1);
  return $tmpret2;
} // end-of-function


function
ats2phppre_ML_array0_set_at($arg0, $arg1, $arg2)
{
//
//
  __patsflab_array0_set_at:
  ats2phppre_arrszref_set_at($arg0, $arg1, $arg2);
  return/*_void*/;
} // end-of-function


function
ats2phppre_ML_array0_exch_at($arg0, $arg1, $arg2)
{
//
  $tmpret4 = NULL;
//
  __patsflab_array0_exch_at:
  $tmpret4 = ats2phppre_arrszref_exch_at($arg0, $arg1, $arg2);
  return $tmpret4;
} // end-of-function


function
ats2phppre_ML_array0_exists_cloref($arg0, $arg1)
{
//
  $tmpret5 = NULL;
//
  __patsflab_array0_exists_cloref:
  $tmpret5 = ats2phppre_arrszref_exists_cloref($arg0, $arg1);
  return $tmpret5;
} // end-of-function


function
ats2phppre_ML_array0_exists_method($arg0)
{
//
  $tmpret6 = NULL;
//
  __patsflab_array0_exists_method:
  $tmpret6 = _ats2phppre_ML_array0_patsfun_7__closurerize($arg0);
  return $tmpret6;
} // end-of-function


function
_ats2phppre_ML_array0_patsfun_7($env0, $arg0)
{
//
  $tmpret7 = NULL;
//
  __patsflab__ats2phppre_ML_array0_patsfun_7:
  $tmpret7 = ats2phppre_ML_array0_exists_cloref($env0, $arg0);
  return $tmpret7;
} // end-of-function


function
ats2phppre_ML_array0_forall_cloref($arg0, $arg1)
{
//
  $tmpret8 = NULL;
//
  __patsflab_array0_forall_cloref:
  $tmpret8 = ats2phppre_arrszref_forall_cloref($arg0, $arg1);
  return $tmpret8;
} // end-of-function


function
ats2phppre_ML_array0_forall_method($arg0)
{
//
  $tmpret9 = NULL;
//
  __patsflab_array0_forall_method:
  $tmpret9 = _ats2phppre_ML_array0_patsfun_10__closurerize($arg0);
  return $tmpret9;
} // end-of-function


function
_ats2phppre_ML_array0_patsfun_10($env0, $arg0)
{
//
  $tmpret10 = NULL;
//
  __patsflab__ats2phppre_ML_array0_patsfun_10:
  $tmpret10 = ats2phppre_ML_array0_forall_cloref($env0, $arg0);
  return $tmpret10;
} // end-of-function


function
ats2phppre_ML_array0_app_cloref($arg0, $arg1)
{
//
//
  __patsflab_array0_app_cloref:
  ats2phppre_ML_array0_foreach_cloref($arg0, $arg1);
  return/*_void*/;
} // end-of-function


function
ats2phppre_ML_array0_foreach_cloref($arg0, $arg1)
{
//
//
  __patsflab_array0_foreach_cloref:
  ats2phppre_arrszref_foreach_cloref($arg0, $arg1);
  return/*_void*/;
} // end-of-function


function
ats2phppre_ML_array0_foreach_method($arg0)
{
//
  $tmpret13 = NULL;
//
  __patsflab_array0_foreach_method:
  $tmpret13 = _ats2phppre_ML_array0_patsfun_14__closurerize($arg0);
  return $tmpret13;
} // end-of-function


function
_ats2phppre_ML_array0_patsfun_14($env0, $arg0)
{
//
//
  __patsflab__ats2phppre_ML_array0_patsfun_14:
  ats2phppre_ML_array0_foreach_cloref($env0, $arg0);
  return/*_void*/;
} // end-of-function

/* ****** ****** */

/* end-of-compilation-unit */
?>
<?php
/*
** end of [output/libatscc2php_all.php]
*/
?>
