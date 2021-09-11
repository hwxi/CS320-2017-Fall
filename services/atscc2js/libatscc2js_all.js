
/*
Time of Generation:
Sat Sep 16 08:43:43 EDT 2017
*/

/*
******
*
* HX-2014-08:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [basics_cats.js]
******
*/

/* ****** ****** */

var the_atsptr_null = 0;

/* ****** ****** */

function
ATSCKiseqz(x) { return (x === 0); }
function
ATSCKisneqz(x) { return (x !== 0); }

/* ****** ****** */

function
ATSCKptrisnull(xs) { return (xs === null); }
function
ATSCKptriscons(xs) { return (xs !== null); }

/* ****** ****** */

function
ATSCKpat_int(tmp, given) { return (tmp === given); }
function
ATSCKpat_bool(tmp, given) { return (tmp === given); }
function
ATSCKpat_char(tmp, given) { return (tmp === given); }
function
ATSCKpat_float(tmp, given) { return (tmp === given); }
function
ATSCKpat_string(tmp, given) { return (tmp === given); }

/* ****** ****** */

function
ATSCKpat_con0 (con, tag) { return (con === tag); }
function
ATSCKpat_con1 (con, tag) { return (con[0] === tag); }

/* ****** ****** */
//
function
ATSINScaseof_fail(errmsg)
{
  throw new Error("ATSINScaseof_fail:"+errmsg);
  return;
}
//
function
ATSINSdeadcode_fail()
  { throw new Error("ATSINSdeadcode_fail"); return; }
//
/* ****** ****** */

function
ATSPMVempty() { return; }

/* ****** ****** */
//
function
ATSPMVlazyval(thunk)
  { return [0, thunk]; }
//
/* ****** ****** */

function
ATSPMVlazyval_eval(lazyval)
{
//
  var
  flag, mythunk;
//
  flag = lazyval[0];
//
  if(flag===0)
  {
    lazyval[0] = 1;
    mythunk = lazyval[1];
    lazyval[1] = mythunk[0](mythunk);
  } else {
    lazyval[0] = flag + 1;
  } // end of [if]
//
  return (lazyval[1]);
//
} // end of [ATSPMVlazyval_eval]

/* ****** ****** */
//
function
ATSPMVllazyval(thunk){ return thunk; }
//
/* ****** ****** */
//
function
ATSPMVllazyval_eval(llazyval)
  { return llazyval[0](llazyval, true); }
function
atspre_lazy_vt_free(llazyval)
  { return llazyval[0](llazyval, false); }
//
/* ****** ****** */

function
ats2jspre_alert(msg) { alert(msg); return; }

/* ****** ****** */

function
ats2jspre_confirm(msg) { return confirm(msg); }

/* ****** ****** */
//
function
ats2jspre_prompt_none
  (msg) { return prompt(msg); }
//
function
ats2jspre_prompt_some
  (msg, dflt) { return prompt(msg, dflt); }
//
/* ****** ****** */

function
ats2jspre_typeof(obj) { return typeof(obj); }

/* ****** ****** */
//
function
ats2jspre_tostring(obj) { return String(obj); }
function
ats2jspre_toString(obj) { return String(obj); }
//
/* ****** ****** */

function
ats2jspre_console_log(obj) { return console.log(obj); }

/* ****** ****** */

function
ats2jspre_lazy2cloref(lazyval) { return lazyval[1]; }

/* ****** ****** */
//
function
ats2jspre_ListSubscriptExn_throw
  (/*void*/) { throw new Error("ListSubscriptionExn"); }
function
ats2jspre_ArraySubscriptExn_throw
  (/*void*/) { throw new Error("ArraySubscriptionExn"); }
function
ats2jspre_StreamSubscriptExn_throw
  (/*void*/) { throw new Error("StreamSubscriptionExn"); }
//
/* ****** ****** */
//
function
ats2jspre_assert_bool0(tfv)
  { if (!tfv) throw new Error("Assert"); return; }
function
ats2jspre_assert_bool1(tfv)
  { if (!tfv) throw new Error("Assert"); return; }
//
/* ****** ****** */
//
function
ats2jspre_assert_errmsg_bool0
  (tfv, errmsg) { if (!tfv) throw new Error(errmsg); return; }
function
ats2jspre_assert_errmsg_bool1
  (tfv, errmsg) { if (!tfv) throw new Error(errmsg); return; }
//
/* ****** ****** */
//
/*
//
// HX-2015-10-25:
// Commenting out
// implementation in basics.dats
//
*/
function
ats2jspre_cloref0_app(cf) { return cf[0](cf); }
function
ats2jspre_cloref1_app(cf, x) { return cf[0](cf, x); }
function
ats2jspre_cloref2_app(cf, x1, x2) { return cf[0](cf, x1, x2); }
function
ats2jspre_cloref3_app(cf, x1, x2, x3) { return cf[0](cf, x1, x2, x3); }
//
/* ****** ****** */
//
function
ats2jspre_cloref2fun0(cf)
{
  return function(){return ats2jspre_cloref0_app(cf);};
}
function
ats2jspre_cloref2fun1(cf)
{
  return function(x){return ats2jspre_cloref1_app(cf,x);};
}
function
ats2jspre_cloref2fun2(cf)
{
  return function(x1,x2){return ats2jspre_cloref2_app(cf,x1,x2);};
}
function
ats2jspre_cloref2fun3(cf)
{
  return function(x1,x2,x3){return ats2jspre_cloref2_app(cf,x1,x2,x3);};
}
//
/* ****** ****** */

/* end of [basics_cats.js] */
/*
******
*
* HX-2014-08:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [integer_cats.js]
******
*/

/* ****** ****** */
//
// HX: for signed integers
//
/* ****** ****** */

function
ats2jspre_neg_int0(x) { return ( -x ); }
function
ats2jspre_neg_int1(x) { return ( -x ); }

/* ****** ****** */

function
ats2jspre_abs_int0(x) { return Math.abs(x); }

/* ****** ****** */

function
ats2jspre_succ_int0(x) { return (x + 1); }
function
ats2jspre_pred_int0(x) { return (x - 1); }

/* ****** ****** */

function
ats2jspre_half_int0(x)
{
  return (x >= 0) ? Math.floor(x/2) : Math.ceil(x/2);
}

/* ****** ****** */

function
ats2jspre_succ_int1(x) { return (x + 1); }
function
ats2jspre_pred_int1(x) { return (x - 1); }

/* ****** ****** */

function
ats2jspre_half_int1(x) { return ats2jspre_half_int0(x); }

/* ****** ****** */

function
ats2jspre_add_int0_int0(x, y) { return (x + y); }
function
ats2jspre_sub_int0_int0(x, y) { return (x - y); }
function
ats2jspre_mul_int0_int0(x, y) { return (x * y); }
function
ats2jspre_div_int0_int0(x, y)
{ 
  var q = x / y; return (q >= 0 ? Math.floor(q) : Math.ceil(q));
}
function
ats2jspre_mod_int0_int0(x, y) { return (x % y); }
//
/* ****** ****** */

function
ats2jspre_add_int1_int1(x, y) { return (x + y); }
function
ats2jspre_sub_int1_int1(x, y) { return (x - y); }
function
ats2jspre_mul_int1_int1(x, y) { return (x * y); }
function
ats2jspre_div_int1_int1(x, y) { return ats2jspre_div_int0_int0(x, y); }
//
function
ats2jspre_mod_int1_int1(x, y) { return (x % y); }
function
ats2jspre_nmod_int1_int1(x, y) { return (x % y); }
//
/* ****** ****** */

function
ats2jspre_pow_int0_int1(x, y)
{
  var res = 1;
  while(y >= 2)
  {
    if (y%2 > 0) res *= x;
    x = x * x; y = Math.floor(y/2);
  }
  return (y > 0) ? (x * res) : res;
}

/* ****** ****** */

function
ats2jspre_asl_int0_int1(x, y) { return (x << y); }
function
ats2jspre_asr_int0_int1(x, y) { return (x >> y); }

/* ****** ****** */

function
ats2jspre_lnot_int0(x) { return (~x); }
function
ats2jspre_lor_int0_int0(x, y) { return (x | y); }
function
ats2jspre_lxor_int0_int0(x, y) { return (x ^ y); }
function
ats2jspre_land_int0_int0(x, y) { return (x & y); }

/* ****** ****** */

function
ats2jspre_lt_int0_int0(x, y) { return (x < y); }
function
ats2jspre_lte_int0_int0(x, y) { return (x <= y); }
function
ats2jspre_gt_int0_int0(x, y) { return (x > y); }
function
ats2jspre_gte_int0_int0(x, y) { return (x >= y); }
function
ats2jspre_eq_int0_int0(x, y) { return (x === y); }
function
ats2jspre_neq_int0_int0(x, y) { return (x !== y); }

/* ****** ****** */

function
ats2jspre_compare_int0_int0(x, y)
{
  if (x < y) return -1; else if (x > y) return 1; else return 0;
}

/* ****** ****** */

function
ats2jspre_lt_int1_int1(x, y) { return (x < y); }
function
ats2jspre_lte_int1_int1(x, y) { return (x <= y); }
function
ats2jspre_gt_int1_int1(x, y) { return (x > y); }
function
ats2jspre_gte_int1_int1(x, y) { return (x >= y); }
function
ats2jspre_eq_int1_int1(x, y) { return (x === y); }
function
ats2jspre_neq_int1_int1(x, y) { return (x !== y); }

/* ****** ****** */
//
function
ats2jspre_max_int0_int0(x, y) { return (x >= y) ? x : y ; }
function
ats2jspre_min_int0_int0(x, y) { return (x <= y) ? x : y ; }
//
function
ats2jspre_max_int1_int1(x, y) { return (x >= y) ? x : y ; }
function
ats2jspre_min_int1_int1(x, y) { return (x <= y) ? x : y ; }
//
/* ****** ****** */
//
// HX: for unsigned integers
//
/* ****** ****** */

function
ats2jspre_succ_uint0(x) { return (x + 1); }
function
ats2jspre_pred_uint0(x) { return (x - 1); }

/* ****** ****** */

function
ats2jspre_add_uint0_uint0(x, y) { return (x + y); }
function
ats2jspre_sub_uint0_uint0(x, y) { return (x - y); }
function
ats2jspre_mul_uint0_uint0(x, y) { return (x * y); }
function
ats2jspre_div_uint0_uint0(x, y) { return Math.floor(x/y); }
function
ats2jspre_mod_uint0_uint0(x, y) { return (x % y); }

/* ****** ****** */

function
ats2jspre_lsl_uint0_int1(x, y) { return (x << y); }
function
ats2jspre_lsr_uint0_int1(x, y) { return (x >>> y); }

/* ****** ****** */

function
ats2jspre_lnot_uint0(x) { return (~x); }
function
ats2jspre_lor_uint0_uint0(x, y) { return (x | y); }
function
ats2jspre_lxor_uint0_uint0(x, y) { return (x ^ y); }
function
ats2jspre_land_uint0_uint0(x, y) { return (x & y); }

/* ****** ****** */

function
ats2jspre_lt_uint0_uint0(x, y) { return (x < y); }
function
ats2jspre_lte_uint0_uint0(x, y) { return (x <= y); }
function
ats2jspre_gt_uint0_uint0(x, y) { return (x > y); }
function
ats2jspre_gte_uint0_uint0(x, y) { return (x >= y); }
function
ats2jspre_eq_uint0_uint0(x, y) { return (x === y); }
function
ats2jspre_neq_uint0_uint0(x, y) { return (x !== y); }

/* ****** ****** */

function
ats2jspre_compare_uint0_uint0(x, y)
{
  if (x < y) return -1; else if (x > y) return 1; else return 0;
}

/* ****** ****** */

/* end of [integer_cats.js] */
/*
******
*
* HX-2014-08:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [bool_cats.js]
******
*/

/* ****** ****** */
//
function
ats2jspre_bool2int0(x)
  { return ( x ? 1 : 0 ); }
function
ats2jspre_bool2int1(x)
  { return ( x ? 1 : 0 ); }
//
/* ****** ****** */
//
function
ats2jspre_int2bool0(x)
  { return ( x !== 0 ? true : false ) ; }
function
ats2jspre_int2bool1(x)
  { return ( x !== 0 ? true : false ) ; }
//
/* ****** ****** */
//
function
ats2jspre_neg_bool0(x)
  { return ( x ? false : true ); }
function
ats2jspre_neg_bool1(x)
  { return ( x ? false : true ); }
//
/* ****** ****** */

function
ats2jspre_add_bool0_bool0(x, y) { return (x || y); }
function
ats2jspre_add_bool0_bool1(x, y) { return (x || y); }
function
ats2jspre_add_bool1_bool0(x, y) { return (x || y); }
function
ats2jspre_add_bool1_bool1(x, y) { return (x || y); }

/* ****** ****** */

function
ats2jspre_mul_bool0_bool0(x, y) { return (x && y); }
function
ats2jspre_mul_bool0_bool1(x, y) { return (x && y); }
function
ats2jspre_mul_bool1_bool0(x, y) { return (x && y); }
function
ats2jspre_mul_bool1_bool1(x, y) { return (x && y); }

/* ****** ****** */
//
function
ats2jspre_eq_bool0_bool0(x, y) { return (x === y); }
function
ats2jspre_neq_bool0_bool0(x, y) { return (x !== y); }
//
function
ats2jspre_eq_bool1_bool1(x, y) { return (x === y); }
function
ats2jspre_neq_bool1_bool1(x, y) { return (x !== y); }
//
/* ****** ****** */
//
function
ats2jspre_int2bool0(x)
  { return (x !== 0 ? true : false) ; }
function
ats2jspre_int2bool1(x)
  { return (x !== 0 ? true : false) ; }
//
/* ****** ****** */
//
function
ats2jspre_bool2int0(x) { return (x ? 1 : 0); }
function
ats2jspre_bool2int1(x) { return (x ? 1 : 0); }
//
/* ****** ****** */

/* end of [bool_cats.js] */
/*
******
*
* HX-2014-08:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [float_cats.js]
******
*/

/* ****** ****** */
//
function
ats2jspre_int2double(x) { return x; }
function
ats2jspre_double_of_int(x) { return x; }
//
function
ats2jspre_double2int(x)
{
  return (x >= 0 ? Math.floor(x) : Math.ceil(x));
}
function
ats2jspre_int_of_double(x)
{
  return (x >= 0 ? Math.floor(x) : Math.ceil(x));
}
//
/* ****** ****** */

function
ats2jspre_neg_double(x) { return ( -x ); }

/* ****** ****** */

function
ats2jspre_abs_double(x) { return Math.abs(x); }

/* ****** ****** */
//
function
ats2jspre_add_int_double(x, y) { return (x + y); }
function
ats2jspre_add_double_int(x, y) { return (x + y); }
//
function
ats2jspre_sub_int_double(x, y) { return (x - y); }
function
ats2jspre_sub_double_int(x, y) { return (x - y); }
//
function
ats2jspre_mul_int_double(x, y) { return (x * y); }
function
ats2jspre_mul_double_int(x, y) { return (x * y); }
//
function
ats2jspre_div_int_double(x, y) { return (x / y); }
function
ats2jspre_div_double_int(x, y) { return (x / y); }
//
/* ****** ****** */

function
ats2jspre_pow_double_int1(x, y)
{
  var res = 1;
  while(y >= 2)
  {
    if (y%2 > 0) res *= x;
    x = x * x; y = Math.floor(y/2);
  }
  return (y > 0) ? (x * res) : res;
}

/* ****** ****** */

function
ats2jspre_add_double_double(x, y) { return (x + y); }
function
ats2jspre_sub_double_double(x, y) { return (x - y); }
function
ats2jspre_mul_double_double(x, y) { return (x * y); }
function
ats2jspre_div_double_double(x, y) { return (x / y); }

/* ****** ****** */
//
function
ats2jspre_lt_int_double(x, y) { return (x < y); }
function
ats2jspre_lt_double_int(x, y) { return (x < y); }
//
function
ats2jspre_lte_int_double(x, y) { return (x <= y); }
function
ats2jspre_lte_double_int(x, y) { return (x <= y); }
//
function
ats2jspre_gt_int_double(x, y) { return (x > y); }
function
ats2jspre_gt_double_int(x, y) { return (x > y); }
//
function
ats2jspre_gte_int_double(x, y) { return (x >= y); }
function
ats2jspre_gte_double_int(x, y) { return (x >= y); }
//
/* ****** ****** */

function
ats2jspre_lt_double_double(x, y) { return (x < y); }
function
ats2jspre_lte_double_double(x, y) { return (x <= y); }
function
ats2jspre_gt_double_double(x, y) { return (x > y); }
function
ats2jspre_gte_double_double(x, y) { return (x >= y); }
function
ats2jspre_eq_double_double(x, y) { return (x === y); }
function
ats2jspre_neq_double_double(x, y) { return (x !== y); }

/* ****** ****** */

function
ats2jspre_compare_double_double(x, y)
{
  if (x < y) return -1; else if (x > y) return 1; else return 0;
}

/* ****** ****** */
//
function
ats2jspre_max_double_double(x, y) { return (x >= y) ? x : y ; }
function
ats2jspre_min_double_double(x, y) { return (x <= y) ? x : y ; }
//
/* ****** ****** */

/* end of [float_cats.js] */
/*
******
*
* HX-2014-08:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [string_cats.js]
******
*/

/* ****** ****** */
//
function
ats2jspre_string_length
  (str) { return str.length ; }
//
/* ****** ****** */
//
function
ats2jspre_string_get_at
  (str, i) { return str.charAt(i) ; }
//
/* ****** ****** */
//
function
ats2jspre_string0_is_empty(x) { return !Boolean(x); }
function
ats2jspre_string1_is_empty(x) { return !Boolean(x); }
//
function
ats2jspre_string0_isnot_empty(x) { return Boolean(x); }
function
ats2jspre_string1_isnot_empty(x) { return Boolean(x); }
//
/* ****** ****** */
//
function
ats2jspre_string_substring_beg_end
  (str, i, j) { return str.substring(i, j) ; }
function
ats2jspre_string_substring_beg_len
  (str, i, len) { return str.substring(i, i+len) ; }
//
/* ****** ****** */
//
function
ats2jspre_lt_string_string(x, y) { return (x < y); }
function
ats2jspre_lte_string_string(x, y) { return (x <= y); }
//
function
ats2jspre_gt_string_string(x, y) { return (x > y); }
function
ats2jspre_gte_string_string(x, y) { return (x >= y); }
//
function
ats2jspre_eq_string_string(x, y) { return (x === y); }
function
ats2jspre_neq_string_string(x, y) { return (x !== y); }
//
/* ****** ****** */
//
function
ats2jspre_compare_string_string(x, y)
{
  if (x < y) return -1; else if (x > y) return 1; else return 0;
}
//
/* ****** ****** */

function
ats2jspre_string_charAt(str, i) { return str.charAt(i) ; }
function
ats2jspre_string_charCodeAt(str, i) { return str.charCodeAt(i) ; }

/* ****** ****** */
//
function
ats2jspre_string_fromCharCode_1
  (c1) { return String.fromCharCode(c1) ; }
function
ats2jspre_string_fromCharCode_2
  (c1,c2) { return String.fromCharCode(c1,c2) ; }
function
ats2jspre_string_fromCharCode_3
  (c1,c2,c3) { return String.fromCharCode(c1,c2,c3) ; }
function
ats2jspre_string_fromCharCode_4
  (c1,c2,c3,c4) { return String.fromCharCode(c1,c2,c3,c4) ; }
function
ats2jspre_string_fromCharCode_5
  (c1,c2,c3,c4,c5) { return String.fromCharCode(c1,c2,c3,c4,c5) ; }
function
ats2jspre_string_fromCharCode_6
  (c1,c2,c3,c4,c5,c6) { return String.fromCharCode(c1,c2,c3,c4,c5,c6) ; }
//
/* ****** ****** */
//
function
ats2jspre_strstr
  (str, key) { return str.indexOf(key) ; }
function
ats2jspre_string_indexOf_2
  (str, key) { return str.indexOf(key) ; }
function
ats2jspre_string_indexOf_3
  (str, key, start) { return str.indexOf(key, start) ; }
//
/* ****** ****** */

function
ats2jspre_string_lastIndexOf_2
  (str, key) { return str.lastIndexOf(key) ; }
function
ats2jspre_string_lastIndexOf_3
  (str, key, start) { return str.lastIndexOf(key, start) ; }

/* ****** ****** */

function
ats2jspre_string_append(str1, str2) { return str1.concat(str2) ; }

/* ****** ****** */
//
function
ats2jspre_string_concat_2(str1, str2) { return str1.concat(str2) ; }
function
ats2jspre_string_concat_3(str1, str2, str3) { return str1.concat(str2, str3) ; }
//
/* ****** ****** */

/* end of [string_cats.js] */
/*
******
*
* HX-2015-12:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [gvalue_cats.js]
******
*/

/* ****** ****** */
//
function
ats2jspre_gvhashtbl_make_nil() { return {}; }
//
/* ****** ****** */
//
function
ats2jspre_gvhashtbl_get_atkey(tbl, k0)
{
  var res = tbl[k0];
  return (res !== undefined ? res : ats2jspre_gvalue_nil());
}
//
/* ****** ****** */
//
function
ats2jspre_gvhashtbl_set_atkey(tbl, k0, x0) { tbl[k0] = x0; return; }
//
/* ****** ****** */
//
function
ats2jspre_gvhashtbl_exch_atkey(tbl, k0, x0)
{
  var res = tbl[k0]; tbl[k0] = x0;
  return (res !== undefined ? res : ats2jspre_gvalue_nil());
}
//
/* ****** ****** */

/* end of [gvalue_cats.js] */
/*
******
*
* HX-2014-08:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [JSmath_cats.js]
******
*/

/* ****** ****** */
//
var
ats2jspre_JSmath_E = Math.E
var
ats2jspre_JSmath_PI = Math.PI
var
ats2jspre_JSmath_SQRT2 = Math.SQRT2
var
ats2jspre_JSmath_SQRT1_2 = Math.SQRT1_2
var
ats2jspre_JSmath_LN2 = Math.LN2
var
ats2jspre_JSmath_LN10 = Math.LN10
var
ats2jspre_JSmath_LOG2E = Math.LOG2E
var
ats2jspre_JSmath_LOG10E = Math.LOG10E
//
/* ****** ****** */
//
function
ats2jspre_JSmath_abs(x) { return Math.abs(x); }
//
function
ats2jspre_JSmath_max(x, y) { return Math.max(x, y); }
//
function
ats2jspre_JSmath_min(x, y) { return Math.min(x, y); }
//
/* ****** ****** */
//
function
ats2jspre_JSmath_sqrt(x) { return Math.sqrt(x); }
//
/* ****** ****** */
//
function
ats2jspre_JSmath_exp(x) { return Math.exp(x); }
//
function
ats2jspre_JSmath_pow(x, y) { return Math.pow(x, y); }
//
function
ats2jspre_JSmath_log(x) { return Math.log(x); }
//
/* ****** ****** */
//
function
ats2jspre_JSmath_ceil(x) { return Math.ceil(x); }
function
ats2jspre_JSmath_floor(x) { return Math.floor(x); }
function
ats2jspre_JSmath_round(x) { return Math.round(x); }
//
/* ****** ****** */
//
function
ats2jspre_JSmath_sin(x) { return Math.sin(x); }
function
ats2jspre_JSmath_cos(x) { return Math.cos(x); }
function
ats2jspre_JSmath_tan(x) { return Math.tan(x); }
//
/* ****** ****** */
//
function
ats2jspre_JSmath_asin(x) { return Math.asin(x); }
function
ats2jspre_JSmath_acos(x) { return Math.acos(x); }
function
ats2jspre_JSmath_atan(x) { return Math.atan(x); }
function
ats2jspre_JSmath_atan2(y, x) { return Math.atan2(y, x); }
//
/* ****** ****** */
//
function
ats2jspre_JSmath_random() { return Math.random(); }
//
/* ****** ****** */

/* end of [JSmath_cats.js] */
/*
******
*
* HX-2014-08:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [JSdate_cats.js]
******
*/

/* ****** ****** */
//
function
ats2jspre_Date_new_0
  () { return new Date(); }
function
ats2jspre_Date_new_1_int
  (msec) { return new Date(msec); }
function
ats2jspre_Date_new_1_string
  (date) { return new Date(date); }
function
ats2jspre_Date_new_7
  (year, mon, day, hour, min, sec, ms)
{
  return new Date(year, mon, day, hour, min, sec, ms);
}
//
/* ****** ****** */
//
function
ats2jspre_getTime
  (date) { return date.getTime(); }
function
ats2jspre_getTimezoneOffset
  (date) { return date.getTimezoneOffset(); }
//
/* ****** ****** */
//
function
ats2jspre_getDay(date) { return date.getDay(); }
function
ats2jspre_getDate(date) { return date.getDate(); }
function
ats2jspre_getMonth(date) { return date.getMonth(); }
function
ats2jspre_getFullYear(date) { return date.getFullYear(); }
//
function
ats2jspre_getHours(date) { return date.getHours(); }
function
ats2jspre_getMinutes(date) { return date.getMinutes(); }
function
ats2jspre_getSeconds(date) { return date.getSeconds(); }
function
ats2jspre_getMilliseconds(date) { return date.getMilliseconds(); }
//
/* ****** ****** */
//
function
ats2jspre_getUTCDay(date) { return date.getUTCDay(); }
function
ats2jspre_getUTCDate(date) { return date.getUTCDate(); }
function
ats2jspre_getUTCMonth(date) { return date.getUTCMonth(); }
function
ats2jspre_getUTCFullYear(date) { return date.getUTCFullYear(); }
//
function
ats2jspre_getUTCHours(date) { return date.getUTCHours(); }
function
ats2jspre_getUTCMinutes(date) { return date.getUTCMinutes(); }
function
ats2jspre_getUTCSeconds(date) { return date.getUTCSeconds(); }
function
ats2jspre_getUTCMilliseconds(date) { return date.getUTCMilliseconds(); }
//
/* ****** ****** */

/* end of [JSdate_cats.js] */
/*
******
*
* HX-2014-08:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [JSarray_cats.js]
******
*/

/* ****** ****** */

function
ats2jspre_JSarray_nil() { return []; }
function
ats2jspre_JSarray_sing(x) { return [x]; }
function
ats2jspre_JSarray_pair(x1, x2) { return [x1, x2]; }

/* ****** ****** */

function
ats2jspre_JSarray_copy_arrayref(A, n)
{
//
  var A2 = new Array(n);
  for (var i = 0; i < n; i += 1) A2[i] = A[i]; return A2;
//
} // end of [ats2jspre_JSarray_copy_arrayref]

/* ****** ****** */
//
function
ats2jspre_JSarray_get_at
  (A, i) { return A[i]; }
function
ats2jspre_JSarray_set_at
  (A, i, x0) { A[i] = x0; return; }
//
function
ats2jspre_JSarray_exch_at
  (A, i, x0) { var x1 = A[i]; A[i] = x0; return x1; }
//
/* ****** ****** */
//
function
ats2jspre_JSarray_length(A) { return A.length; }
//
/* ****** ****** */

function
ats2jspre_JSarray_pop(A) { return A.pop(); }
function
ats2jspre_JSarray_push(A, x) { return A.push(x); }

/* ****** ****** */

function
ats2jspre_JSarray_shift(A) { return A.shift(); }
function
ats2jspre_JSarray_unshift(A, x) { return A.unshift(x); }

/* ****** ****** */

function
ats2jspre_JSarray_reverse(A) { return A.reverse(); }

/* ****** ****** */

function
ats2jspre_JSarray_copy(A) { return A.slice(0); }

/* ****** ****** */

function
ats2jspre_JSarray_concat(A1, A2) { return A1.concat(A2); }

/* ****** ****** */
//
function
ats2jspre_JSarray_insert_at
  (A, i, x) { A.splice(i, 0, x); return; }
//
function
ats2jspre_JSarray_takeout_at
  (A, i) { var res = A.splice(i, 1); return res[0]; }
//
function
ats2jspre_JSarray_remove_at(A, i) { A.splice(i, 1); return; }
//
/* ****** ****** */
//
function
ats2jspre_JSarray_join(A) { return A.join(""); }
function
ats2jspre_JSarray_join_sep(A, sep) { return A.join(sep); }
//
/* ****** ****** */
//
function
ats2jspre_JSarray_sort_2(A, cmp)
  { A.sort(ats2jspre_cloref2fun2(cmp)); return; }
//
/* ****** ****** */

/* end of [JSarray_cats.js] */
/*
******
*
* HX-2014-08:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [JSglobal_cats.js]
******
*/

/* ****** ****** */

function
ats2jspre_eval(code) { return eval(code); }

/* ****** ****** */

function
ats2jspre_Number(obj) { return Number(obj); }
function
ats2jspre_String(obj) { return String(obj); }

/* ****** ****** */

function
ats2jspre_isFinite_int(x) { return isFinite(x); }
function
ats2jspre_isFinite_double(x) { return isFinite(x); }

/* ****** ****** */

function
ats2jspre_isNaN_int(x) { return isNaN(x); }
function
ats2jspre_isNaN_double(x) { return isNaN(x); }

/* ****** ****** */

function
ats2jspre_parseInt_1(rep) { return parseInt(rep); }
function
ats2jspre_parseInt_2(rep, base) { return parseInt(rep, base); }

/* ****** ****** */

function
ats2jspre_parseFloat(rep) { return parseFloat(rep); }

/* ****** ****** */

function
ats2jspre_encodeURI(uri) { return encodeURI(uri); }
function
ats2jspre_decodeURI(uri) { return decodeURI(uri); }

/* ****** ****** */

function
ats2jspre_encodeURIComponent(uri) { return encodeURIComponent(uri); }
function
ats2jspre_decodeURIComponent(uri) { return decodeURIComponent(uri); }

/* ****** ****** */

/* end of [JSglobal_cats.js] */
/*
******
*
* HX-2014-08:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [Ajax_cats.js]
******
*/

/* ****** ****** */

function
ats2js_Ajax_XMLHttpRequest_new
(
  // argumentless
)
{ 
  var res = new XMLHttpRequest(); return res;
}

/* ****** ****** */
//
function
ats2js_Ajax_XMLHttpRequest_open
  (xmlhttp, method, URL, async)
  { xmlhttp.open(method, URL, async); return; }
//
/* ****** ****** */
//
function
ats2js_Ajax_XMLHttpRequest_send_0
  (xmlhttp) { xmlhttp.send(); return; }
function
ats2js_Ajax_XMLHttpRequest_send_1
  (xmlhttp, msg) { xmlhttp.send(msg); return; }
//
/* ****** ****** */
//
function
ats2js_Ajax_XMLHttpRequest_setRequestHeader
  (xmlhttp, header, value)
  { xmlhttp.setRequestHeader(header, value); return; }
//
/* ****** ****** */
//
function
ats2js_Ajax_XMLHttpRequest_get_responseXML
  (xmlhttp) { return xmlhttp.responseXML; }
function
ats2js_Ajax_XMLHttpRequest_get_responseText
  (xmlhttp) { return xmlhttp.responseText; }
//
/* ****** ****** */
//
function
ats2js_Ajax_XMLHttpRequest_get_status
  (xmlhttp) { return xmlhttp.status; }
//
function
ats2js_Ajax_XMLHttpRequest_get_readyState
  (xmlhttp) { return xmlhttp.readyState; }
//
function
ats2js_Ajax_XMLHttpRequest_set_onreadystatechange
  (xmlhttp, f_action)
{
  xmlhttp.onreadystatechange = function() { f_action[0](f_action); };
}
//
/* ****** ****** */
//
// HX-2014-09: Convenience functions
//
/* ****** ****** */
//
function
ats2js_Ajax_XMLHttpRequest_is_ready_okay
  (xmlhttp) { return xmlhttp.readyState===4 && xmlhttp.status===200; }
//
/* ****** ****** */

/* end of [Ajax_cats.js] */
/*
******
*
* HX-2014-08:
* for JavaScript code
* translated from ATS
*
******
*/

/*
******
* beg of [canvas2d_cats.js]
******
*/

/* ****** ****** */

function
ats2js_HTML5_canvas_getById
  (id)
{
  var
  canvas =
  document.getElementById(id);
  if(!canvas)
  {
    throw "ats2js_HTML5_canvas_getById: canvas is not found";
  }
  return canvas;
}

/* ****** ****** */

function
ats2js_HTML5_canvas2d_getById
  (id)
{
  var
  canvas =
  document.getElementById(id);
  if(!canvas)
  {
    throw "ats2js_HTML5_canvas_getById: canvas is not found";
  }
  if(!canvas.getContext)
  {
    throw "ats2js_HTML5_canvas2d_getById: canvas-2d is not supported";
  }
  return canvas.getContext("2d");
}

/* ****** ****** */

function
ats2js_HTML5_canvas2d_beginPath
  (ctx) { ctx.beginPath(); return; }
function
ats2js_HTML5_canvas2d_closePath
  (ctx) { ctx.closePath(); return; }

/* ****** ****** */

function
ats2js_HTML5_canvas2d_moveTo
  (ctx, x, y) { ctx.moveTo(x, y); return; }
function
ats2js_HTML5_canvas2d_lineTo
  (ctx, x, y) { ctx.lineTo(x, y); return; }

/* ****** ****** */
//
function
ats2js_HTML5_canvas2d_translate
  (ctx, x, y) { ctx.translate(x, y); return; }
//
function
ats2js_HTML5_canvas2d_scale
  (ctx, sx, sy) { ctx.scale(sx, sy); return; }
//
function
ats2js_HTML5_canvas2d_rotate
  (ctx, rangle) { ctx.rotate(rangle); return; }
//
/* ****** ****** */

function
ats2js_HTML5_canvas2d_rect
  (ctx, xul, yul, width, height)
{
  ctx.rect(xul, yul, width, height); return;
} /* end of [ats2js_HTML5_canvas2d_rect] */

function
ats2js_HTML5_canvas2d_arc
  (ctx, xc, yc, rad, angle_beg, angle_end, CCW)
{
  ctx.arc(xc, yc, rad, angle_beg, angle_end, CCW); return;
} /* end of [ats2js_HTML5_canvas2d_arc] */

/* ****** ****** */

function
ats2js_HTML5_canvas2d_clearRect
  (ctx, xul, yul, width, height)
{
  ctx.clearRect(xul, yul, width, height); return;
} /* end of [ats2js_HTML5_canvas2d_clearRect] */

/* ****** ****** */
//
function
ats2js_HTML5_canvas2d_fill(ctx) { ctx.fill(); return; }
function
ats2js_HTML5_canvas2d_stroke(ctx) { ctx.stroke(); return; }
//
/* ****** ****** */
//
function
ats2js_HTML5_canvas2d_fillRect
  (ctx, xul, yul, width, height)
{
  ctx.fillRect(xul, yul, width, height); return;
} /* end of [ats2js_HTML5_canvas2d_fillRect] */
//
function
ats2js_HTML5_canvas2d_strokeRect
  (ctx, xul, yul, width, height)
{
  ctx.strokeRect(xul, yul, width, height); return;
} /* end of [ats2js_HTML5_canvas2d_strokeRect] */
//
/* ****** ****** */
//
function
ats2js_HTML5_canvas2d_fillText
  (ctx, text, xstart, ystart)
{
  ctx.fillText(text, xstart, ystart); return;
}
function
ats2js_HTML5_canvas2d_fillText2
  (ctx, text, xstart, ystart, maxWidth)
{ 
  ctx.fillText2(text, xstart, ystart, maxWidth); return;
}
//
/* ****** ****** */

function
ats2js_HTML5_canvas2d_save(ctx) { ctx.save(); return; }
function
ats2js_HTML5_canvas2d_restore(ctx) { ctx.restore(); return; }

/* ****** ****** */
//
function
ats2js_HTML5_canvas2d_get_lineWidth
  (ctx) { return ctx.lineWidth; }
function
ats2js_HTML5_canvas2d_set_lineWidth_int
  (ctx, lineWidth) { ctx.lineWidth = lineWidth; return; }
function
ats2js_HTML5_canvas2d_set_lineWidth_double
  (ctx, lineWidth) { ctx.lineWidth = lineWidth; return; }
//
/* ****** ****** */

function
ats2js_HTML5_canvas2d_set_font_string
  (ctx, font) { ctx.font = font; return; }
function
ats2js_HTML5_canvas2d_set_textAlign_string
  (ctx, textAlign) { ctx.textAlign = textAlign; return; }
function
ats2js_HTML5_canvas2d_set_textBaseline_string
  (ctx, textBaseline) { ctx.textBaseline = textBaseline; return; }

/* ****** ****** */

function
ats2js_HTML5_canvas2d_set_fillStyle_string
  (ctx, fillStyle) { ctx.fillStyle = fillStyle; return; }
function
ats2js_HTML5_canvas2d_set_strokeStyle_string
  (ctx, strokeStyle) { ctx.strokeStyle = strokeStyle; return; }

/* ****** ****** */

function
ats2js_HTML5_canvas2d_set_shadowColor_string
  (ctx, shadowColor) { ctx.shadowColor = shadowColor; return; }

/* ****** ****** */

function
ats2js_HTML5_canvas2d_set_shadowBlur_int
  (ctx, shadowBlur) { ctx.shadowBlur = shadowBlur; return; }
function
ats2js_HTML5_canvas2d_set_shadowBlur_string
  (ctx, shadowBlur) { ctx.shadowBlur = shadowBlur; return; }

/* ****** ****** */
//
function
ats2js_HTML5_canvas2d_set_shadowOffsetX_int
  (ctx, X) { ctx.shadowOffsetX = X; return; }
function
ats2js_HTML5_canvas2d_set_shadowOffsetX_double
  (ctx, X) { ctx.shadowOffsetX = X; return; }
//
function
ats2js_HTML5_canvas2d_set_shadowOffsetY_int
  (ctx, Y) { ctx.shadowOffsetY = Y; return; }
function
ats2js_HTML5_canvas2d_set_shadowOffsetY_double
  (ctx, Y) { ctx.shadowOffsetY = Y; return; }
//
/* ****** ****** */

function
ats2js_HTML5_canvas2d_createLinearGradient
  (ctx, x0, y0, x1, y1)
{
  return ctx.createLinearGradient(x0, y0, x1, y1);
}

/* ****** ****** */
//
function
ats2js_HTML5_canvas2d_gradient_addColorStop
  (grad, stop, color) { grad.addColorStop(stop, color); return; }
//
/* ****** ****** */
//
function
ats2js_HTML5_canvas2d_set_fillStyle_gradient
  (ctx, gradient) { ctx.fillStyle = gradient; return; }
function
ats2js_HTML5_canvas2d_set_strokeStyle_gradient
  (ctx, gradient) { ctx.strokeStyle = gradient; return; }
//
/* ****** ****** */

/* end of [canvas2d_cats.js] */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
ats2jspre_char_isalpha(arg0)
{
//
// knd = 0
  var tmpret0
  var tmp1
  var tmp2
  var tmp3
  var tmp4
  var tmplab, tmplab_js
//
  // __patsflab_char_isalpha
  tmp2 = ats2jspre_lte_int0_int0(65, arg0);
  if(tmp2) {
    tmp1 = ats2jspre_lte_int0_int0(arg0, 90);
  } else {
    tmp1 = false;
  } // end-of-if
  if(tmp1) {
    tmpret0 = true;
  } else {
    tmp4 = ats2jspre_lte_int0_int0(97, arg0);
    if(tmp4) {
      tmp3 = ats2jspre_lte_int0_int0(arg0, 122);
    } else {
      tmp3 = false;
    } // end-of-if
    if(tmp3) {
      tmpret0 = true;
    } else {
      tmpret0 = false;
    } // end-of-if
  } // end-of-if
  return tmpret0;
} // end-of-function


function
ats2jspre_char_isalnum(arg0)
{
//
// knd = 0
  var tmpret5
  var tmp6
  var tmp7
  var tmp8
  var tmp9
  var tmp10
  var tmp11
  var tmplab, tmplab_js
//
  // __patsflab_char_isalnum
  tmp7 = ats2jspre_lte_int0_int0(48, arg0);
  if(tmp7) {
    tmp6 = ats2jspre_lte_int0_int0(arg0, 57);
  } else {
    tmp6 = false;
  } // end-of-if
  if(tmp6) {
    tmpret5 = true;
  } else {
    tmp9 = ats2jspre_lte_int0_int0(65, arg0);
    if(tmp9) {
      tmp8 = ats2jspre_lte_int0_int0(arg0, 90);
    } else {
      tmp8 = false;
    } // end-of-if
    if(tmp8) {
      tmpret5 = true;
    } else {
      tmp11 = ats2jspre_lte_int0_int0(97, arg0);
      if(tmp11) {
        tmp10 = ats2jspre_lte_int0_int0(arg0, 122);
      } else {
        tmp10 = false;
      } // end-of-if
      if(tmp10) {
        tmpret5 = true;
      } else {
        tmpret5 = false;
      } // end-of-if
    } // end-of-if
  } // end-of-if
  return tmpret5;
} // end-of-function


function
ats2jspre_char_isdigit(arg0)
{
//
// knd = 0
  var tmpret12
  var tmp13
  var tmp14
  var tmplab, tmplab_js
//
  // __patsflab_char_isdigit
  tmp14 = ats2jspre_lte_int0_int0(48, arg0);
  if(tmp14) {
    tmp13 = ats2jspre_lte_int0_int0(arg0, 57);
  } else {
    tmp13 = false;
  } // end-of-if
  if(tmp13) {
    tmpret12 = true;
  } else {
    tmpret12 = false;
  } // end-of-if
  return tmpret12;
} // end-of-function


function
ats2jspre_char_isspace(arg0)
{
//
// knd = 0
  var tmpret15
  var tmp16
  var tmp17
  var tmp18
  var tmp19
  var tmp20
  var tmp21
  var tmplab, tmplab_js
//
  // __patsflab_char_isspace
  tmp16 = ats2jspre_eq_int0_int0(arg0, 9);
  if(tmp16) {
    tmpret15 = true;
  } else {
    tmp17 = ats2jspre_eq_int0_int0(arg0, 10);
    if(tmp17) {
      tmpret15 = true;
    } else {
      tmp18 = ats2jspre_eq_int0_int0(arg0, 11);
      if(tmp18) {
        tmpret15 = true;
      } else {
        tmp19 = ats2jspre_eq_int0_int0(arg0, 12);
        if(tmp19) {
          tmpret15 = true;
        } else {
          tmp20 = ats2jspre_eq_int0_int0(arg0, 13);
          if(tmp20) {
            tmpret15 = true;
          } else {
            tmp21 = ats2jspre_eq_int0_int0(arg0, 32);
            if(tmp21) {
              tmpret15 = true;
            } else {
              tmpret15 = false;
            } // end-of-if
          } // end-of-if
        } // end-of-if
      } // end-of-if
    } // end-of-if
  } // end-of-if
  return tmpret15;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
_ats2jspre_string_patsfun_5__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_string_patsfun_5(cenv[1], arg0); }, env0];
}


function
_ats2jspre_string_patsfun_9__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_string_patsfun_9(cenv[1], arg0); }, env0];
}


function
_ats2jspre_string_patsfun_13__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_string_patsfun_13(cenv[1], arg0); }, env0];
}


function
_ats2jspre_string_patsfun_17__closurerize(env0, env1, env2)
{
  return [function(cenv, arg0) { return _ats2jspre_string_patsfun_17(cenv[1], cenv[2], cenv[3], arg0); }, env0, env1, env2];
}


function
_ats2jspre_string_patsfun_20__closurerize(env0, env1, env2, env3)
{
  return [function(cenv, arg0) { return _ats2jspre_string_patsfun_20(cenv[1], cenv[2], cenv[3], cenv[4], arg0); }, env0, env1, env2, env3];
}


function
_ats2jspre_string_patsfun_24__24__1__closurerize()
{
  return [function(cenv, arg0) { return _ats2jspre_string_patsfun_24__24__1(arg0); }];
}


function
ats2jspre_strchr_code(arg0)
{
//
// knd = 0
  var tmpret0
  var tmplab, tmplab_js
//
  // __patsflab_strchr_code
  tmpret0 = ats2jspre_string_charCodeAt(arg0, 0);
  return tmpret0;
} // end-of-function


function
ats2jspre_string_fset_at(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret1
  var tmp2
  var tmp3
  var tmp4
  var tmp5
  var tmp6
  var tmplab, tmplab_js
//
  // __patsflab_string_fset_at
  tmp2 = ats2jspre_string_length(arg0);
  tmp3 = ats2jspre_string_substring_beg_end(arg0, 0, arg1);
  tmp5 = ats2jspre_add_int1_int1(arg1, 1);
  tmp4 = ats2jspre_string_substring_beg_end(arg0, tmp5, tmp2);
  tmp6 = ats2jspre_string_concat_3(tmp3, arg2, tmp4);
  tmpret1 = tmp6;
  return tmpret1;
} // end-of-function


function
ats2jspre_string_exists_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret7
  var tmp8
  var tmplab, tmplab_js
//
  // __patsflab_string_exists_cloref
  tmp8 = ats2jspre_string_length(arg0);
  tmpret7 = _ats2jspre_string_loop_3(arg1, arg0, tmp8, 0);
  return tmpret7;
} // end-of-function


function
_ats2jspre_string_loop_3(env0, env1, env2, arg0)
{
//
// knd = 1
  var apy0
  var tmpret9
  var tmp10
  var tmp11
  var tmp12
  var tmp13
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_string_loop_3
    tmp10 = ats2jspre_lt_int1_int1(arg0, env2);
    if(tmp10) {
      tmp12 = ats2jspre_string_get_at(env1, arg0);
      tmp11 = env0[0](env0, tmp12);
      if(tmp11) {
        tmpret9 = true;
      } else {
        tmp13 = ats2jspre_add_int1_int1(arg0, 1);
        // ATStailcalseq_beg
        apy0 = tmp13;
        arg0 = apy0;
        funlab_js = 1; // __patsflab__ats2jspre_string_loop_3
        // ATStailcalseq_end
      } // end-of-if
    } else {
      tmpret9 = false;
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret9;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_string_exists_method(arg0)
{
//
// knd = 0
  var tmpret14
  var tmplab, tmplab_js
//
  // __patsflab_string_exists_method
  tmpret14 = _ats2jspre_string_patsfun_5__closurerize(arg0);
  return tmpret14;
} // end-of-function


function
_ats2jspre_string_patsfun_5(env0, arg0)
{
//
// knd = 0
  var tmpret15
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_string_patsfun_5
  tmpret15 = ats2jspre_string_exists_cloref(env0, arg0);
  return tmpret15;
} // end-of-function


function
ats2jspre_string_forall_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret16
  var tmp17
  var tmplab, tmplab_js
//
  // __patsflab_string_forall_cloref
  tmp17 = ats2jspre_string_length(arg0);
  tmpret16 = _ats2jspre_string_loop_7(arg1, arg0, tmp17, 0);
  return tmpret16;
} // end-of-function


function
_ats2jspre_string_loop_7(env0, env1, env2, arg0)
{
//
// knd = 1
  var apy0
  var tmpret18
  var tmp19
  var tmp20
  var tmp21
  var tmp22
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_string_loop_7
    tmp19 = ats2jspre_lt_int1_int1(arg0, env2);
    if(tmp19) {
      tmp21 = ats2jspre_string_get_at(env1, arg0);
      tmp20 = env0[0](env0, tmp21);
      if(tmp20) {
        tmp22 = ats2jspre_add_int1_int1(arg0, 1);
        // ATStailcalseq_beg
        apy0 = tmp22;
        arg0 = apy0;
        funlab_js = 1; // __patsflab__ats2jspre_string_loop_7
        // ATStailcalseq_end
      } else {
        tmpret18 = false;
      } // end-of-if
    } else {
      tmpret18 = true;
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret18;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_string_forall_method(arg0)
{
//
// knd = 0
  var tmpret23
  var tmplab, tmplab_js
//
  // __patsflab_string_forall_method
  tmpret23 = _ats2jspre_string_patsfun_9__closurerize(arg0);
  return tmpret23;
} // end-of-function


function
_ats2jspre_string_patsfun_9(env0, arg0)
{
//
// knd = 0
  var tmpret24
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_string_patsfun_9
  tmpret24 = ats2jspre_string_forall_cloref(env0, arg0);
  return tmpret24;
} // end-of-function


function
ats2jspre_string_foreach_cloref(arg0, arg1)
{
//
// knd = 0
  var tmp26
  var tmplab, tmplab_js
//
  // __patsflab_string_foreach_cloref
  tmp26 = ats2jspre_string_length(arg0);
  _ats2jspre_string_loop_11(arg1, arg0, tmp26, 0);
  return/*_void*/;
} // end-of-function


function
_ats2jspre_string_loop_11(env0, env1, env2, arg0)
{
//
// knd = 1
  var apy0
  var tmp28
  var tmp30
  var tmp31
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_string_loop_11
    tmp28 = ats2jspre_lt_int1_int1(arg0, env2);
    if(tmp28) {
      tmp30 = ats2jspre_string_get_at(env1, arg0);
      env0[0](env0, tmp30);
      tmp31 = ats2jspre_add_int1_int1(arg0, 1);
      // ATStailcalseq_beg
      apy0 = tmp31;
      arg0 = apy0;
      funlab_js = 1; // __patsflab__ats2jspre_string_loop_11
      // ATStailcalseq_end
    } else {
      // ATSINSmove_void
    } // end-of-if
    if (funlab_js > 0) continue; else return/*_void*/;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_string_foreach_method(arg0)
{
//
// knd = 0
  var tmpret32
  var tmplab, tmplab_js
//
  // __patsflab_string_foreach_method
  tmpret32 = _ats2jspre_string_patsfun_13__closurerize(arg0);
  return tmpret32;
} // end-of-function


function
_ats2jspre_string_patsfun_13(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_string_patsfun_13
  ats2jspre_string_foreach_cloref(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_string_tabulate_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret34
  var tmp35
  var tmp36
  var tmplab, tmplab_js
//
  // __patsflab_string_tabulate_cloref
  tmp36 = _057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2js_057_ATS2_055_0_056_3_056_2_057_SATS_057_JSarray_056_sats__JSarray_tabulate_cloref(arg0, arg1);
  tmp35 = ats2jspre_JSarray_join_sep(tmp36, "");
  tmpret34 = tmp35;
  return tmpret34;
} // end-of-function


function
ats2jspre_streamize_string_code(arg0)
{
//
// knd = 0
  var tmpret37
  var tmp38
  var tmplab, tmplab_js
//
  // __patsflab_streamize_string_code
  tmp38 = ats2jspre_string_length(arg0);
  tmpret37 = _ats2jspre_string_auxmain_16(arg0, tmp38, 0);
  return tmpret37;
} // end-of-function


function
_ats2jspre_string_auxmain_16(env0, env1, arg0)
{
//
// knd = 0
  var tmpret39
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_string_auxmain_16
  tmpret39 = ATSPMVllazyval(_ats2jspre_string_patsfun_17__closurerize(env0, env1, arg0));
  return tmpret39;
} // end-of-function


function
_ats2jspre_string_patsfun_17(env0, env1, env2, arg0)
{
//
// knd = 0
  var tmpret40
  var tmp41
  var tmp42
  var tmp43
  var tmp44
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_string_patsfun_17
  if(arg0) {
    tmp41 = ats2jspre_lt_int1_int1(env2, env1);
    if(tmp41) {
      tmp42 = ats2jspre_string_charCodeAt(env0, env2);
      tmp44 = ats2jspre_add_int1_int1(env2, 1);
      tmp43 = _ats2jspre_string_auxmain_16(env0, env1, tmp44);
      tmpret40 = [tmp42, tmp43];
    } else {
      tmpret40 = null;
    } // end-of-if
  } else {
  } // end-of-if
  return tmpret40;
} // end-of-function


function
ats2jspre_streamize_string_line(arg0)
{
//
// knd = 0
  var tmpret45
  var tmp46
  var tmplab, tmplab_js
//
  // __patsflab_streamize_string_line
  tmp46 = ats2jspre_string_length(arg0);
  tmpret45 = _ats2jspre_string_auxmain_19(arg0, tmp46, 0, 0);
  return tmpret45;
} // end-of-function


function
_ats2jspre_string_auxmain_19(env0, env1, arg0, arg1)
{
//
// knd = 0
  var tmpret47
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_string_auxmain_19
  tmpret47 = ATSPMVllazyval(_ats2jspre_string_patsfun_20__closurerize(env0, env1, arg0, arg1));
  return tmpret47;
} // end-of-function


function
_ats2jspre_string_patsfun_20(env0, env1, env2, env3, arg0)
{
//
// knd = 0
  var tmpret48
  var tmp49
  var tmp50
  var tmp51
  var tmp52
  var tmp53
  var tmp54
  var tmp55
  var tmp56
  var tmp57
  var tmp66
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_string_patsfun_20
  if(arg0) {
    tmp49 = ats2jspre_lt_int1_int1(env3, env1);
    if(tmp49) {
      tmp50 = ats2jspre_string_charCodeAt(env0, env3);
      tmp51 = ats2jspre_neq_int0_int0(tmp50, 10);
      if(tmp51) {
        tmp53 = ats2jspre_add_int1_int1(env3, 1);
        tmp52 = _ats2jspre_string_auxmain_19(env0, env1, env2, tmp53);
        tmpret48 = ATSPMVllazyval_eval(tmp52);
      } else {
        tmp54 = ats2jspre_add_int1_int1(env3, 1);
        tmp55 = ats2jspre_string_substring_beg_end(env0, env2, env3);
        tmp56 = _ats2jspre_string_auxmain_19(env0, env1, tmp54, tmp54);
        tmpret48 = [tmp55, tmp56];
      } // end-of-if
    } else {
      tmp57 = ats2jspre_eq_int1_int1(env2, env3);
      if(tmp57) {
        tmpret48 = null;
      } else {
        tmp66 = ats2jspre_string_substring_beg_end(env0, env2, env3);
        tmpret48 = ats2jspre_stream_vt_sing__21__1(tmp66);
      } // end-of-if
    } // end-of-if
  } else {
  } // end-of-if
  return tmpret48;
} // end-of-function


function
ats2jspre_stream_vt_sing__21__1(arg0)
{
//
// knd = 0
  var tmpret58__1
  var tmp59__1
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_sing
  tmp59__1 = ats2jspre_stream_vt_make_nil__23__1();
  tmpret58__1 = [arg0, tmp59__1];
  return tmpret58__1;
} // end-of-function


function
ats2jspre_stream_vt_make_nil__23__1()
{
//
// knd = 0
  var tmpret62__1
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_make_nil
  tmpret62__1 = ATSPMVllazyval(_ats2jspre_string_patsfun_24__24__1__closurerize());
  return tmpret62__1;
} // end-of-function


function
_ats2jspre_string_patsfun_24__24__1(arg0)
{
//
// knd = 0
  var tmpret63__1
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_string_patsfun_24
  if(arg0) {
    tmpret63__1 = null;
  } else {
  } // end-of-if
  return tmpret63__1;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
_ats2jspre_list_patsfun_40__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_40(cenv[1], arg0); }, env0];
}


function
_ats2jspre_list_patsfun_44__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_44(cenv[1], arg0); }, env0];
}


function
_ats2jspre_list_patsfun_47__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_47(cenv[1], arg0); }, env0];
}


function
_ats2jspre_list_patsfun_51__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_51(cenv[1], arg0); }, env0];
}


function
_ats2jspre_list_patsfun_55__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_55(cenv[1], arg0); }, env0];
}


function
_ats2jspre_list_patsfun_59__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_59(cenv[1], arg0); }, env0];
}


function
_ats2jspre_list_patsfun_62__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_62(cenv[1], arg0); }, env0];
}


function
_ats2jspre_list_patsfun_66__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_66(cenv[1], arg0); }, env0];
}


function
_ats2jspre_list_patsfun_70__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_70(cenv[1], arg0); }, env0];
}


function
_ats2jspre_list_patsfun_74__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_74(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_list_patsfun_78__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_78(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_list_patsfun_82__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_82(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_list_patsfun_86__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_86(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_list_patsfun_91__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_91(cenv[1], arg0); }, env0];
}


function
_ats2jspre_list_patsfun_94__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_94(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_list_patsfun_97__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_97(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_list_patsfun_99__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_list_patsfun_99(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
ats2jspre_list_make_elt(arg0, arg1)
{
//
// knd = 0
  var tmpret2
  var tmp7
  var tmplab, tmplab_js
//
  // __patsflab_list_make_elt
  tmp7 = null;
  tmpret2 = _ats2jspre_list_loop_3(arg1, arg0, tmp7);
  return tmpret2;
} // end-of-function


function
_ats2jspre_list_loop_3(env0, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret3
  var tmp4
  var tmp5
  var tmp6
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop_3
    tmp4 = ats2jspre_gt_int1_int1(arg0, 0);
    if(tmp4) {
      tmp5 = ats2jspre_sub_int1_int1(arg0, 1);
      tmp6 = [env0, arg1];
      // ATStailcalseq_beg
      apy0 = tmp5;
      apy1 = tmp6;
      arg0 = apy0;
      arg1 = apy1;
      funlab_js = 1; // __patsflab__ats2jspre_list_loop_3
      // ATStailcalseq_end
    } else {
      tmpret3 = arg1;
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret3;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_make_intrange_2(arg0, arg1)
{
//
// knd = 0
  var tmpret8
  var tmplab, tmplab_js
//
  // __patsflab_list_make_intrange_2
  tmpret8 = ats2jspre_list_make_intrange_3(arg0, arg1, 1);
  return tmpret8;
} // end-of-function


function
ats2jspre_list_make_intrange_3(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret9
  var tmp20
  var tmp21
  var tmp22
  var tmp23
  var tmp24
  var tmp25
  var tmp26
  var tmp27
  var tmp28
  var tmp29
  var tmp30
  var tmp31
  var tmp32
  var tmp33
  var tmp34
  var tmp35
  var tmp36
  var tmp37
  var tmp38
  var tmp39
  var tmp40
  var tmplab, tmplab_js
//
  // __patsflab_list_make_intrange_3
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab6
      tmp20 = ats2jspre_gt_int0_int0(arg2, 0);
      if(!ATSCKpat_bool(tmp20, true)) {
        { tmplab_js = 2; break; }
      } // ifnthen
      tmp21 = ats2jspre_lt_int0_int0(arg0, arg1);
      if(tmp21) {
        tmp25 = ats2jspre_sub_int0_int0(arg1, arg0);
        tmp24 = ats2jspre_add_int0_int0(tmp25, arg2);
        tmp23 = ats2jspre_sub_int0_int0(tmp24, 1);
        tmp22 = ats2jspre_div_int0_int0(tmp23, arg2);
        tmp28 = ats2jspre_sub_int0_int0(tmp22, 1);
        tmp27 = ats2jspre_mul_int0_int0(tmp28, arg2);
        tmp26 = ats2jspre_add_int0_int0(arg0, tmp27);
        tmp29 = null;
        tmpret9 = _ats2jspre_list_loop1_6(tmp22, tmp26, arg2, tmp29);
      } else {
        tmpret9 = null;
      } // end-of-if
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 2: // __atstmplab7
      tmp30 = ats2jspre_lt_int0_int0(arg2, 0);
      if(!ATSCKpat_bool(tmp30, true)) {
        { tmplab_js = 3; break; }
      } // ifnthen
      tmp31 = ats2jspre_gt_int0_int0(arg0, arg1);
      if(tmp31) {
        tmp32 = ats2jspre_neg_int0(arg2);
        tmp36 = ats2jspre_sub_int0_int0(arg0, arg1);
        tmp35 = ats2jspre_add_int0_int0(tmp36, tmp32);
        tmp34 = ats2jspre_sub_int0_int0(tmp35, 1);
        tmp33 = ats2jspre_div_int0_int0(tmp34, tmp32);
        tmp39 = ats2jspre_sub_int0_int0(tmp33, 1);
        tmp38 = ats2jspre_mul_int0_int0(tmp39, tmp32);
        tmp37 = ats2jspre_sub_int0_int0(arg0, tmp38);
        tmp40 = null;
        tmpret9 = _ats2jspre_list_loop2_7(tmp33, tmp37, tmp32, tmp40);
      } else {
        tmpret9 = null;
      } // end-of-if
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab8
      tmpret9 = null;
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret9;
} // end-of-function


function
_ats2jspre_list_loop1_6(arg0, arg1, arg2, arg3)
{
//
// knd = 1
  var apy0
  var apy1
  var apy2
  var apy3
  var tmpret10
  var tmp11
  var tmp12
  var tmp13
  var tmp14
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop1_6
    tmp11 = ats2jspre_gt_int0_int0(arg0, 0);
    if(tmp11) {
      tmp12 = ats2jspre_sub_int0_int0(arg0, 1);
      tmp13 = ats2jspre_sub_int0_int0(arg1, arg2);
      tmp14 = [arg1, arg3];
      // ATStailcalseq_beg
      apy0 = tmp12;
      apy1 = tmp13;
      apy2 = arg2;
      apy3 = tmp14;
      arg0 = apy0;
      arg1 = apy1;
      arg2 = apy2;
      arg3 = apy3;
      funlab_js = 1; // __patsflab__ats2jspre_list_loop1_6
      // ATStailcalseq_end
    } else {
      tmpret10 = arg3;
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret10;
  } // endwhile-fun
} // end-of-function


function
_ats2jspre_list_loop2_7(arg0, arg1, arg2, arg3)
{
//
// knd = 1
  var apy0
  var apy1
  var apy2
  var apy3
  var tmpret15
  var tmp16
  var tmp17
  var tmp18
  var tmp19
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop2_7
    tmp16 = ats2jspre_gt_int0_int0(arg0, 0);
    if(tmp16) {
      tmp17 = ats2jspre_sub_int0_int0(arg0, 1);
      tmp18 = ats2jspre_add_int0_int0(arg1, arg2);
      tmp19 = [arg1, arg3];
      // ATStailcalseq_beg
      apy0 = tmp17;
      apy1 = tmp18;
      apy2 = arg2;
      apy3 = tmp19;
      arg0 = apy0;
      arg1 = apy1;
      arg2 = apy2;
      arg3 = apy3;
      funlab_js = 1; // __patsflab__ats2jspre_list_loop2_7
      // ATStailcalseq_end
    } else {
      tmpret15 = arg3;
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret15;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_length(arg0)
{
//
// knd = 0
  var tmpret52
  var tmplab, tmplab_js
//
  // __patsflab_list_length
  tmpret52 = _ats2jspre_list_loop_14(arg0, 0);
  return tmpret52;
} // end-of-function


function
_ats2jspre_list_loop_14(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret53
  var tmp55
  var tmp56
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop_14
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab13
        if(ATSCKptriscons(arg0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab14
        tmpret53 = arg1;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab15
        case 4: // __atstmplab16
        tmp55 = arg0[1];
        tmp56 = ats2jspre_add_int1_int1(arg1, 1);
        // ATStailcalseq_beg
        apy0 = tmp55;
        apy1 = tmp56;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_list_loop_14
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret53;
  } // endwhile-fun
} // end-of-function


function
_057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2js_057_ATS2_055_0_056_3_056_2_057_SATS_057_list_056_sats__list_length_gte(arg0, arg1)
{
//
// knd = 0
  var tmpret57
  var tmp58
  var tmplab, tmplab_js
//
  // __patsflab_list_length_gte
  tmp58 = _057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2js_057_ATS2_055_0_056_3_056_2_057_SATS_057_list_056_sats__list_length_compare(arg0, arg1);
  tmpret57 = ats2jspre_gte_int1_int1(tmp58, 0);
  return tmpret57;
} // end-of-function


function
_057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2js_057_ATS2_055_0_056_3_056_2_057_SATS_057_list_056_sats__list_length_compare(arg0, arg1)
{
//
// knd = 0
  var tmpret59
  var tmplab, tmplab_js
//
  // __patsflab_list_length_compare
  tmpret59 = _ats2jspre_list_loop_17(arg0, arg1);
  return tmpret59;
} // end-of-function


function
_ats2jspre_list_loop_17(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret60
  var tmp61
  var tmp63
  var tmp64
  var tmp65
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop_17
    tmp61 = ats2jspre_lt_int1_int1(arg1, 0);
    if(tmp61) {
      tmpret60 = 1;
    } else {
      // ATScaseofseq_beg
      tmplab_js = 1;
      while(true) {
        tmplab = tmplab_js; tmplab_js = 0;
        switch(tmplab) {
          // ATSbranchseq_beg
          case 1: // __atstmplab17
          if(ATSCKptrisnull(arg0)) {
            { tmplab_js = 3; break; }
          } // ifthen
          case 2: // __atstmplab18
          tmp63 = arg0[1];
          tmp64 = ats2jspre_sub_int1_int1(arg1, 1);
          // ATStailcalseq_beg
          apy0 = tmp63;
          apy1 = tmp64;
          arg0 = apy0;
          arg1 = apy1;
          funlab_js = 1; // __patsflab__ats2jspre_list_loop_17
          // ATStailcalseq_end
          break;
          // ATSbranchseq_end
          // ATSbranchseq_beg
          case 3: // __atstmplab19
          tmp65 = ats2jspre_eq_int1_int1(arg1, 0);
          if(tmp65) {
            tmpret60 = 0;
          } else {
            tmpret60 = ats2jspre_neg_int1(1);
          } // end-of-if
          break;
          // ATSbranchseq_end
        } // end-of-switch
        if (tmplab_js === 0) break;
      } // endwhile
      // ATScaseofseq_end
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret60;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_head(arg0)
{
//
// knd = 0
  var tmpret66
  var tmp67
  var tmplab, tmplab_js
//
  // __patsflab_list_head
  tmp67 = arg0[0];
  tmpret66 = tmp67;
  return tmpret66;
} // end-of-function


function
ats2jspre_list_tail(arg0)
{
//
// knd = 0
  var tmpret68
  var tmp69
  var tmplab, tmplab_js
//
  // __patsflab_list_tail
  tmp69 = arg0[1];
  tmpret68 = tmp69;
  return tmpret68;
} // end-of-function


function
ats2jspre_list_last(arg0)
{
//
// knd = 1
  var apy0
  var tmpret70
  var tmp71
  var tmp72
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab_list_last
    tmp71 = arg0[0];
    tmp72 = arg0[1];
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab20
        if(ATSCKptriscons(tmp72)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab21
        tmpret70 = tmp71;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab22
        case 4: // __atstmplab23
        // ATStailcalseq_beg
        apy0 = tmp72;
        arg0 = apy0;
        funlab_js = 1; // __patsflab_list_last
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret70;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_get_at(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret73
  var tmp74
  var tmp75
  var tmp76
  var tmp77
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab_list_get_at
    tmp74 = ats2jspre_eq_int1_int1(arg1, 0);
    if(tmp74) {
      tmp75 = arg0[0];
      tmpret73 = tmp75;
    } else {
      tmp76 = arg0[1];
      tmp77 = ats2jspre_sub_int1_int1(arg1, 1);
      // ATStailcalseq_beg
      apy0 = tmp76;
      apy1 = tmp77;
      arg0 = apy0;
      arg1 = apy1;
      funlab_js = 1; // __patsflab_list_get_at
      // ATStailcalseq_end
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret73;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_snoc(arg0, arg1)
{
//
// knd = 0
  var tmpret78
  var tmp79
  var tmp80
  var tmplab, tmplab_js
//
  // __patsflab_list_snoc
  tmp80 = null;
  tmp79 = [arg1, tmp80];
  tmpret78 = ats2jspre_list_append(arg0, tmp79);
  return tmpret78;
} // end-of-function


function
ats2jspre_list_extend(arg0, arg1)
{
//
// knd = 0
  var tmpret81
  var tmp82
  var tmp83
  var tmplab, tmplab_js
//
  // __patsflab_list_extend
  tmp83 = null;
  tmp82 = [arg1, tmp83];
  tmpret81 = ats2jspre_list_append(arg0, tmp82);
  return tmpret81;
} // end-of-function


function
ats2jspre_list_append(arg0, arg1)
{
//
// knd = 0
  var tmpret84
  var tmp85
  var tmp86
  var tmp87
  var tmplab, tmplab_js
//
  // __patsflab_list_append
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab24
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab25
      tmpret84 = arg1;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab26
      case 4: // __atstmplab27
      tmp85 = arg0[0];
      tmp86 = arg0[1];
      tmp87 = ats2jspre_list_append(tmp86, arg1);
      tmpret84 = [tmp85, tmp87];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret84;
} // end-of-function


function
ats2jspre_mul_int_list(arg0, arg1)
{
//
// knd = 0
  var tmpret88
  var tmp93
  var tmplab, tmplab_js
//
  // __patsflab_mul_int_list
  tmp93 = null;
  tmpret88 = _ats2jspre_list_loop_26(arg1, arg0, tmp93);
  return tmpret88;
} // end-of-function


function
_ats2jspre_list_loop_26(env0, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret89
  var tmp90
  var tmp91
  var tmp92
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop_26
    tmp90 = ats2jspre_gt_int1_int1(arg0, 0);
    if(tmp90) {
      tmp91 = ats2jspre_sub_int1_int1(arg0, 1);
      tmp92 = ats2jspre_list_append(env0, arg1);
      // ATStailcalseq_beg
      apy0 = tmp91;
      apy1 = tmp92;
      arg0 = apy0;
      arg1 = apy1;
      funlab_js = 1; // __patsflab__ats2jspre_list_loop_26
      // ATStailcalseq_end
    } else {
      tmpret89 = arg1;
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret89;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_reverse(arg0)
{
//
// knd = 0
  var tmpret94
  var tmp95
  var tmplab, tmplab_js
//
  // __patsflab_list_reverse
  tmp95 = null;
  tmpret94 = ats2jspre_list_reverse_append(arg0, tmp95);
  return tmpret94;
} // end-of-function


function
ats2jspre_list_reverse_append(arg0, arg1)
{
//
// knd = 0
  var tmpret96
  var tmplab, tmplab_js
//
  // __patsflab_list_reverse_append
  tmpret96 = _ats2jspre_list_loop_29(arg0, arg1);
  return tmpret96;
} // end-of-function


function
_ats2jspre_list_loop_29(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret97
  var tmp98
  var tmp99
  var tmp100
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop_29
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab28
        if(ATSCKptriscons(arg0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab29
        tmpret97 = arg1;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab30
        case 4: // __atstmplab31
        tmp98 = arg0[0];
        tmp99 = arg0[1];
        tmp100 = [tmp98, arg1];
        // ATStailcalseq_beg
        apy0 = tmp99;
        apy1 = tmp100;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_list_loop_29
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret97;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_concat(arg0)
{
//
// knd = 0
  var tmpret101
  var tmplab, tmplab_js
//
  // __patsflab_list_concat
  tmpret101 = _ats2jspre_list_auxlst_31(arg0);
  return tmpret101;
} // end-of-function


function
_ats2jspre_list_auxlst_31(arg0)
{
//
// knd = 0
  var tmpret102
  var tmp103
  var tmp104
  var tmp105
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_auxlst_31
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab32
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab33
      tmpret102 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab34
      case 4: // __atstmplab35
      tmp103 = arg0[0];
      tmp104 = arg0[1];
      tmp105 = _ats2jspre_list_auxlst_31(tmp104);
      tmpret102 = ats2jspre_list_append(tmp103, tmp105);
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret102;
} // end-of-function


function
ats2jspre_list_take(arg0, arg1)
{
//
// knd = 0
  var tmpret106
  var tmp107
  var tmp108
  var tmp109
  var tmp110
  var tmp111
  var tmplab, tmplab_js
//
  // __patsflab_list_take
  tmp107 = ats2jspre_gt_int1_int1(arg1, 0);
  if(tmp107) {
    tmp108 = arg0[0];
    tmp109 = arg0[1];
    tmp111 = ats2jspre_sub_int1_int1(arg1, 1);
    tmp110 = ats2jspre_list_take(tmp109, tmp111);
    tmpret106 = [tmp108, tmp110];
  } else {
    tmpret106 = null;
  } // end-of-if
  return tmpret106;
} // end-of-function


function
ats2jspre_list_drop(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret112
  var tmp113
  var tmp114
  var tmp115
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab_list_drop
    tmp113 = ats2jspre_gt_int1_int1(arg1, 0);
    if(tmp113) {
      tmp114 = arg0[1];
      tmp115 = ats2jspre_sub_int1_int1(arg1, 1);
      // ATStailcalseq_beg
      apy0 = tmp114;
      apy1 = tmp115;
      arg0 = apy0;
      arg1 = apy1;
      funlab_js = 1; // __patsflab_list_drop
      // ATStailcalseq_end
    } else {
      tmpret112 = arg0;
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret112;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_split_at(arg0, arg1)
{
//
// knd = 0
  var tmpret116
  var tmp117
  var tmp118
  var tmplab, tmplab_js
//
  // __patsflab_list_split_at
  tmp117 = ats2jspre_list_take(arg0, arg1);
  tmp118 = ats2jspre_list_drop(arg0, arg1);
  tmpret116 = [tmp117, tmp118];
  return tmpret116;
} // end-of-function


function
ats2jspre_list_insert_at(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret119
  var tmp120
  var tmp121
  var tmp122
  var tmp123
  var tmp124
  var tmplab, tmplab_js
//
  // __patsflab_list_insert_at
  tmp120 = ats2jspre_gt_int1_int1(arg1, 0);
  if(tmp120) {
    tmp121 = arg0[0];
    tmp122 = arg0[1];
    tmp124 = ats2jspre_sub_int1_int1(arg1, 1);
    tmp123 = ats2jspre_list_insert_at(tmp122, tmp124, arg2);
    tmpret119 = [tmp121, tmp123];
  } else {
    tmpret119 = [arg2, arg0];
  } // end-of-if
  return tmpret119;
} // end-of-function


function
ats2jspre_list_remove_at(arg0, arg1)
{
//
// knd = 0
  var tmpret125
  var tmp126
  var tmp127
  var tmp128
  var tmp129
  var tmp130
  var tmplab, tmplab_js
//
  // __patsflab_list_remove_at
  tmp126 = arg0[0];
  tmp127 = arg0[1];
  tmp128 = ats2jspre_gt_int1_int1(arg1, 0);
  if(tmp128) {
    tmp130 = ats2jspre_sub_int1_int1(arg1, 1);
    tmp129 = ats2jspre_list_remove_at(tmp127, tmp130);
    tmpret125 = [tmp126, tmp129];
  } else {
    tmpret125 = tmp127;
  } // end-of-if
  return tmpret125;
} // end-of-function


function
ats2jspre_list_takeout_at(arg0, arg1)
{
//
// knd = 0
  var tmpret131
  var tmp132
  var tmp133
  var tmp134
  var tmp135
  var tmp136
  var tmp137
  var tmp138
  var tmp139
  var tmplab, tmplab_js
//
  // __patsflab_list_takeout_at
  tmp132 = arg0[0];
  tmp133 = arg0[1];
  tmp134 = ats2jspre_gt_int1_int1(arg1, 0);
  if(tmp134) {
    tmp136 = ats2jspre_sub_int1_int1(arg1, 1);
    tmp135 = ats2jspre_list_takeout_at(tmp133, tmp136);
    tmp137 = tmp135[0];
    tmp138 = tmp135[1];
    tmp139 = [tmp132, tmp138];
    tmpret131 = [tmp137, tmp139];
  } else {
    tmpret131 = [tmp132, tmp133];
  } // end-of-if
  return tmpret131;
} // end-of-function


function
ats2jspre_list_exists(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret140
  var tmp141
  var tmp142
  var tmp143
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab_list_exists
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab36
        if(ATSCKptriscons(arg0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab37
        tmpret140 = false;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab38
        case 4: // __atstmplab39
        tmp141 = arg0[0];
        tmp142 = arg0[1];
        tmp143 = arg1[0](arg1, tmp141);
        if(tmp143) {
          tmpret140 = true;
        } else {
          // ATStailcalseq_beg
          apy0 = tmp142;
          apy1 = arg1;
          arg0 = apy0;
          arg1 = apy1;
          funlab_js = 1; // __patsflab_list_exists
          // ATStailcalseq_end
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret140;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_exists_method(arg0)
{
//
// knd = 0
  var tmpret144
  var tmplab, tmplab_js
//
  // __patsflab_list_exists_method
  tmpret144 = _ats2jspre_list_patsfun_40__closurerize(arg0);
  return tmpret144;
} // end-of-function


function
_ats2jspre_list_patsfun_40(env0, arg0)
{
//
// knd = 0
  var tmpret145
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_40
  tmpret145 = ats2jspre_list_exists(env0, arg0);
  return tmpret145;
} // end-of-function


function
ats2jspre_list_iexists(arg0, arg1)
{
//
// knd = 0
  var tmpret146
  var tmplab, tmplab_js
//
  // __patsflab_list_iexists
  tmpret146 = _ats2jspre_list_loop_42(arg1, 0, arg0);
  return tmpret146;
} // end-of-function


function
_ats2jspre_list_loop_42(env0, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret147
  var tmp148
  var tmp149
  var tmp150
  var tmp151
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop_42
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab40
        if(ATSCKptriscons(arg1)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab41
        tmpret147 = false;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab42
        case 4: // __atstmplab43
        tmp148 = arg1[0];
        tmp149 = arg1[1];
        tmp150 = env0[0](env0, arg0, tmp148);
        if(tmp150) {
          tmpret147 = true;
        } else {
          tmp151 = ats2jspre_add_int1_int1(arg0, 1);
          // ATStailcalseq_beg
          apy0 = tmp151;
          apy1 = tmp149;
          arg0 = apy0;
          arg1 = apy1;
          funlab_js = 1; // __patsflab__ats2jspre_list_loop_42
          // ATStailcalseq_end
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret147;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_iexists_method(arg0)
{
//
// knd = 0
  var tmpret152
  var tmplab, tmplab_js
//
  // __patsflab_list_iexists_method
  tmpret152 = _ats2jspre_list_patsfun_44__closurerize(arg0);
  return tmpret152;
} // end-of-function


function
_ats2jspre_list_patsfun_44(env0, arg0)
{
//
// knd = 0
  var tmpret153
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_44
  tmpret153 = ats2jspre_list_iexists(env0, arg0);
  return tmpret153;
} // end-of-function


function
ats2jspre_list_forall(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret154
  var tmp155
  var tmp156
  var tmp157
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab_list_forall
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab44
        if(ATSCKptriscons(arg0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab45
        tmpret154 = true;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab46
        case 4: // __atstmplab47
        tmp155 = arg0[0];
        tmp156 = arg0[1];
        tmp157 = arg1[0](arg1, tmp155);
        if(tmp157) {
          // ATStailcalseq_beg
          apy0 = tmp156;
          apy1 = arg1;
          arg0 = apy0;
          arg1 = apy1;
          funlab_js = 1; // __patsflab_list_forall
          // ATStailcalseq_end
        } else {
          tmpret154 = false;
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret154;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_forall_method(arg0)
{
//
// knd = 0
  var tmpret158
  var tmplab, tmplab_js
//
  // __patsflab_list_forall_method
  tmpret158 = _ats2jspre_list_patsfun_47__closurerize(arg0);
  return tmpret158;
} // end-of-function


function
_ats2jspre_list_patsfun_47(env0, arg0)
{
//
// knd = 0
  var tmpret159
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_47
  tmpret159 = ats2jspre_list_forall(env0, arg0);
  return tmpret159;
} // end-of-function


function
ats2jspre_list_iforall(arg0, arg1)
{
//
// knd = 0
  var tmpret160
  var tmplab, tmplab_js
//
  // __patsflab_list_iforall
  tmpret160 = _ats2jspre_list_loop_49(arg1, 0, arg0);
  return tmpret160;
} // end-of-function


function
_ats2jspre_list_loop_49(env0, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret161
  var tmp162
  var tmp163
  var tmp164
  var tmp165
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop_49
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab48
        if(ATSCKptriscons(arg1)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab49
        tmpret161 = true;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab50
        case 4: // __atstmplab51
        tmp162 = arg1[0];
        tmp163 = arg1[1];
        tmp164 = env0[0](env0, arg0, tmp162);
        if(tmp164) {
          tmp165 = ats2jspre_add_int1_int1(arg0, 1);
          // ATStailcalseq_beg
          apy0 = tmp165;
          apy1 = tmp163;
          arg0 = apy0;
          arg1 = apy1;
          funlab_js = 1; // __patsflab__ats2jspre_list_loop_49
          // ATStailcalseq_end
        } else {
          tmpret161 = false;
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret161;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_iforall_method(arg0)
{
//
// knd = 0
  var tmpret166
  var tmplab, tmplab_js
//
  // __patsflab_list_iforall_method
  tmpret166 = _ats2jspre_list_patsfun_51__closurerize(arg0);
  return tmpret166;
} // end-of-function


function
_ats2jspre_list_patsfun_51(env0, arg0)
{
//
// knd = 0
  var tmpret167
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_51
  tmpret167 = ats2jspre_list_iforall(env0, arg0);
  return tmpret167;
} // end-of-function


function
ats2jspre_list_app(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_list_app
  ats2jspre_list_foreach(arg0, arg1);
  return/*_void*/;
} // end-of-function


function
ats2jspre_list_foreach(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmp170
  var tmp171
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab_list_foreach
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab52
        if(ATSCKptriscons(arg0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab53
        // ATSINSmove_void
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab54
        case 4: // __atstmplab55
        tmp170 = arg0[0];
        tmp171 = arg0[1];
        arg1[0](arg1, tmp170);
        // ATStailcalseq_beg
        apy0 = tmp171;
        apy1 = arg1;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab_list_foreach
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return/*_void*/;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_foreach_method(arg0)
{
//
// knd = 0
  var tmpret173
  var tmplab, tmplab_js
//
  // __patsflab_list_foreach_method
  tmpret173 = _ats2jspre_list_patsfun_55__closurerize(arg0);
  return tmpret173;
} // end-of-function


function
_ats2jspre_list_patsfun_55(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_55
  ats2jspre_list_foreach(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_list_iforeach(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_list_iforeach
  _ats2jspre_list_aux_57(arg1, 0, arg0);
  return/*_void*/;
} // end-of-function


function
_ats2jspre_list_aux_57(env0, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmp177
  var tmp178
  var tmp180
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_aux_57
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab56
        if(ATSCKptriscons(arg1)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab57
        // ATSINSmove_void
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab58
        case 4: // __atstmplab59
        tmp177 = arg1[0];
        tmp178 = arg1[1];
        env0[0](env0, arg0, tmp177);
        tmp180 = ats2jspre_add_int1_int1(arg0, 1);
        // ATStailcalseq_beg
        apy0 = tmp180;
        apy1 = tmp178;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_list_aux_57
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return/*_void*/;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_iforeach_method(arg0)
{
//
// knd = 0
  var tmpret181
  var tmplab, tmplab_js
//
  // __patsflab_list_iforeach_method
  tmpret181 = _ats2jspre_list_patsfun_59__closurerize(arg0);
  return tmpret181;
} // end-of-function


function
_ats2jspre_list_patsfun_59(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_59
  ats2jspre_list_iforeach(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_list_rforeach(arg0, arg1)
{
//
// knd = 0
  var tmp184
  var tmp185
  var tmplab, tmplab_js
//
  // __patsflab_list_rforeach
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab60
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab61
      // ATSINSmove_void
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab62
      case 4: // __atstmplab63
      tmp184 = arg0[0];
      tmp185 = arg0[1];
      ats2jspre_list_rforeach(tmp185, arg1);
      arg1[0](arg1, tmp184);
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return/*_void*/;
} // end-of-function


function
ats2jspre_list_rforeach_method(arg0)
{
//
// knd = 0
  var tmpret187
  var tmplab, tmplab_js
//
  // __patsflab_list_rforeach_method
  tmpret187 = _ats2jspre_list_patsfun_62__closurerize(arg0);
  return tmpret187;
} // end-of-function


function
_ats2jspre_list_patsfun_62(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_62
  ats2jspre_list_rforeach(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_list_filter(arg0, arg1)
{
//
// knd = 0
  var tmpret189
  var tmplab, tmplab_js
//
  // __patsflab_list_filter
  tmpret189 = _ats2jspre_list_aux_64(arg1, arg0);
  return tmpret189;
} // end-of-function


function
_ats2jspre_list_aux_64(env0, arg0)
{
//
// knd = 1
  var apy0
  var tmpret190
  var tmp191
  var tmp192
  var tmp193
  var tmp194
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_aux_64
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab64
        if(ATSCKptriscons(arg0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab65
        tmpret190 = null;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab66
        case 4: // __atstmplab67
        tmp191 = arg0[0];
        tmp192 = arg0[1];
        tmp193 = env0[0](env0, tmp191);
        if(tmp193) {
          tmp194 = _ats2jspre_list_aux_64(env0, tmp192);
          tmpret190 = [tmp191, tmp194];
        } else {
          // ATStailcalseq_beg
          apy0 = tmp192;
          arg0 = apy0;
          funlab_js = 1; // __patsflab__ats2jspre_list_aux_64
          // ATStailcalseq_end
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret190;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_filter_method(arg0)
{
//
// knd = 0
  var tmpret195
  var tmplab, tmplab_js
//
  // __patsflab_list_filter_method
  tmpret195 = _ats2jspre_list_patsfun_66__closurerize(arg0);
  return tmpret195;
} // end-of-function


function
_ats2jspre_list_patsfun_66(env0, arg0)
{
//
// knd = 0
  var tmpret196
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_66
  tmpret196 = ats2jspre_list_filter(env0, arg0);
  return tmpret196;
} // end-of-function


function
ats2jspre_list_map(arg0, arg1)
{
//
// knd = 0
  var tmpret197
  var tmplab, tmplab_js
//
  // __patsflab_list_map
  tmpret197 = _ats2jspre_list_aux_68(arg1, arg0);
  return tmpret197;
} // end-of-function


function
_ats2jspre_list_aux_68(env0, arg0)
{
//
// knd = 0
  var tmpret198
  var tmp199
  var tmp200
  var tmp201
  var tmp202
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_aux_68
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab68
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab69
      tmpret198 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab70
      case 4: // __atstmplab71
      tmp199 = arg0[0];
      tmp200 = arg0[1];
      tmp201 = env0[0](env0, tmp199);
      tmp202 = _ats2jspre_list_aux_68(env0, tmp200);
      tmpret198 = [tmp201, tmp202];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret198;
} // end-of-function


function
ats2jspre_list_map_method(arg0, arg1)
{
//
// knd = 0
  var tmpret203
  var tmplab, tmplab_js
//
  // __patsflab_list_map_method
  tmpret203 = _ats2jspre_list_patsfun_70__closurerize(arg0);
  return tmpret203;
} // end-of-function


function
_ats2jspre_list_patsfun_70(env0, arg0)
{
//
// knd = 0
  var tmpret204
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_70
  tmpret204 = ats2jspre_list_map(env0, arg0);
  return tmpret204;
} // end-of-function


function
ats2jspre_list_foldleft(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret205
  var tmplab, tmplab_js
//
  // __patsflab_list_foldleft
  tmpret205 = _ats2jspre_list_loop_72(arg2, arg1, arg0);
  return tmpret205;
} // end-of-function


function
_ats2jspre_list_loop_72(env0, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret206
  var tmp207
  var tmp208
  var tmp209
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop_72
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab72
        if(ATSCKptriscons(arg1)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab73
        tmpret206 = arg0;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab74
        case 4: // __atstmplab75
        tmp207 = arg1[0];
        tmp208 = arg1[1];
        tmp209 = env0[0](env0, arg0, tmp207);
        // ATStailcalseq_beg
        apy0 = tmp209;
        apy1 = tmp208;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_list_loop_72
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret206;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_foldleft_method(arg0, arg1)
{
//
// knd = 0
  var tmpret210
  var tmplab, tmplab_js
//
  // __patsflab_list_foldleft_method
  tmpret210 = _ats2jspre_list_patsfun_74__closurerize(arg0, arg1);
  return tmpret210;
} // end-of-function


function
_ats2jspre_list_patsfun_74(env0, env1, arg0)
{
//
// knd = 0
  var tmpret211
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_74
  tmpret211 = ats2jspre_list_foldleft(env0, env1, arg0);
  return tmpret211;
} // end-of-function


function
ats2jspre_list_ifoldleft(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret212
  var tmplab, tmplab_js
//
  // __patsflab_list_ifoldleft
  tmpret212 = _ats2jspre_list_loop_76(arg2, 0, arg1, arg0);
  return tmpret212;
} // end-of-function


function
_ats2jspre_list_loop_76(env0, arg0, arg1, arg2)
{
//
// knd = 1
  var apy0
  var apy1
  var apy2
  var tmpret213
  var tmp214
  var tmp215
  var tmp216
  var tmp217
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop_76
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab76
        if(ATSCKptriscons(arg2)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab77
        tmpret213 = arg1;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab78
        case 4: // __atstmplab79
        tmp214 = arg2[0];
        tmp215 = arg2[1];
        tmp216 = ats2jspre_add_int1_int1(arg0, 1);
        tmp217 = env0[0](env0, arg0, arg1, tmp214);
        // ATStailcalseq_beg
        apy0 = tmp216;
        apy1 = tmp217;
        apy2 = tmp215;
        arg0 = apy0;
        arg1 = apy1;
        arg2 = apy2;
        funlab_js = 1; // __patsflab__ats2jspre_list_loop_76
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret213;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_ifoldleft_method(arg0, arg1)
{
//
// knd = 0
  var tmpret218
  var tmplab, tmplab_js
//
  // __patsflab_list_ifoldleft_method
  tmpret218 = _ats2jspre_list_patsfun_78__closurerize(arg0, arg1);
  return tmpret218;
} // end-of-function


function
_ats2jspre_list_patsfun_78(env0, env1, arg0)
{
//
// knd = 0
  var tmpret219
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_78
  tmpret219 = ats2jspre_list_ifoldleft(env0, env1, arg0);
  return tmpret219;
} // end-of-function


function
ats2jspre_list_foldright(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret220
  var tmplab, tmplab_js
//
  // __patsflab_list_foldright
  tmpret220 = _ats2jspre_list_aux_80(arg1, arg0, arg2);
  return tmpret220;
} // end-of-function


function
_ats2jspre_list_aux_80(env0, arg0, arg1)
{
//
// knd = 0
  var tmpret221
  var tmp222
  var tmp223
  var tmp224
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_aux_80
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab80
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab81
      tmpret221 = arg1;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab82
      case 4: // __atstmplab83
      tmp222 = arg0[0];
      tmp223 = arg0[1];
      tmp224 = _ats2jspre_list_aux_80(env0, tmp223, arg1);
      tmpret221 = env0[0](env0, tmp222, tmp224);
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret221;
} // end-of-function


function
ats2jspre_list_foldright_method(arg0, arg1)
{
//
// knd = 0
  var tmpret225
  var tmplab, tmplab_js
//
  // __patsflab_list_foldright_method
  tmpret225 = _ats2jspre_list_patsfun_82__closurerize(arg0, arg1);
  return tmpret225;
} // end-of-function


function
_ats2jspre_list_patsfun_82(env0, env1, arg0)
{
//
// knd = 0
  var tmpret226
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_82
  tmpret226 = ats2jspre_list_foldright(env0, arg0, env1);
  return tmpret226;
} // end-of-function


function
ats2jspre_list_ifoldright(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret227
  var tmplab, tmplab_js
//
  // __patsflab_list_ifoldright
  tmpret227 = _ats2jspre_list_aux_84(arg1, 0, arg0, arg2);
  return tmpret227;
} // end-of-function


function
_ats2jspre_list_aux_84(env0, arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret228
  var tmp229
  var tmp230
  var tmp231
  var tmp232
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_aux_84
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab84
      if(ATSCKptriscons(arg1)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab85
      tmpret228 = arg2;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab86
      case 4: // __atstmplab87
      tmp229 = arg1[0];
      tmp230 = arg1[1];
      tmp232 = ats2jspre_add_int1_int1(arg0, 1);
      tmp231 = _ats2jspre_list_aux_84(env0, tmp232, tmp230, arg2);
      tmpret228 = env0[0](env0, arg0, tmp229, tmp231);
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret228;
} // end-of-function


function
ats2jspre_list_ifoldright_method(arg0, arg1)
{
//
// knd = 0
  var tmpret233
  var tmplab, tmplab_js
//
  // __patsflab_list_ifoldright_method
  tmpret233 = _ats2jspre_list_patsfun_86__closurerize(arg0, arg1);
  return tmpret233;
} // end-of-function


function
_ats2jspre_list_patsfun_86(env0, env1, arg0)
{
//
// knd = 0
  var tmpret234
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_86
  tmpret234 = ats2jspre_list_ifoldright(env0, arg0, env1);
  return tmpret234;
} // end-of-function


function
ats2jspre_streamize_list_elt(arg0)
{
//
// knd = 0
  var tmpret237
  var tmplab, tmplab_js
//
  // __patsflab_streamize_list_elt
  tmpret237 = _ats2jspre_list_auxmain_90(arg0);
  return tmpret237;
} // end-of-function


function
_ats2jspre_list_auxmain_90(arg0)
{
//
// knd = 0
  var tmpret238
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_auxmain_90
  tmpret238 = ATSPMVllazyval(_ats2jspre_list_patsfun_91__closurerize(arg0));
  return tmpret238;
} // end-of-function


function
_ats2jspre_list_patsfun_91(env0, arg0)
{
//
// knd = 0
  var tmpret239
  var tmp240
  var tmp241
  var tmp242
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_91
  if(arg0) {
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab88
        if(ATSCKptriscons(env0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab89
        tmpret239 = null;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab90
        case 4: // __atstmplab91
        tmp240 = env0[0];
        tmp241 = env0[1];
        tmp242 = _ats2jspre_list_auxmain_90(tmp241);
        tmpret239 = [tmp240, tmp242];
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
  } else {
  } // end-of-if
  return tmpret239;
} // end-of-function


function
ats2jspre_streamize_list_zip(arg0, arg1)
{
//
// knd = 0
  var tmpret243
  var tmplab, tmplab_js
//
  // __patsflab_streamize_list_zip
  tmpret243 = _ats2jspre_list_auxmain_93(arg0, arg1);
  return tmpret243;
} // end-of-function


function
_ats2jspre_list_auxmain_93(arg0, arg1)
{
//
// knd = 0
  var tmpret244
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_auxmain_93
  tmpret244 = ATSPMVllazyval(_ats2jspre_list_patsfun_94__closurerize(arg0, arg1));
  return tmpret244;
} // end-of-function


function
_ats2jspre_list_patsfun_94(env0, env1, arg0)
{
//
// knd = 0
  var tmpret245
  var tmp246
  var tmp247
  var tmp248
  var tmp249
  var tmp250
  var tmp251
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_94
  if(arg0) {
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab92
        if(ATSCKptriscons(env0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab93
        tmpret245 = null;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab94
        case 4: // __atstmplab95
        tmp246 = env0[0];
        tmp247 = env0[1];
        // ATScaseofseq_beg
        tmplab_js = 1;
        while(true) {
          tmplab = tmplab_js; tmplab_js = 0;
          switch(tmplab) {
            // ATSbranchseq_beg
            case 1: // __atstmplab96
            if(ATSCKptriscons(env1)) {
              { tmplab_js = 4; break; }
            } // ifthen
            case 2: // __atstmplab97
            tmpret245 = null;
            break;
            // ATSbranchseq_end
            // ATSbranchseq_beg
            case 3: // __atstmplab98
            case 4: // __atstmplab99
            tmp248 = env1[0];
            tmp249 = env1[1];
            tmp250 = [tmp246, tmp248];
            tmp251 = _ats2jspre_list_auxmain_93(tmp247, tmp249);
            tmpret245 = [tmp250, tmp251];
            break;
            // ATSbranchseq_end
          } // end-of-switch
          if (tmplab_js === 0) break;
        } // endwhile
        // ATScaseofseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
  } else {
  } // end-of-if
  return tmpret245;
} // end-of-function


function
ats2jspre_streamize_list_cross(arg0, arg1)
{
//
// knd = 0
  var tmpret252
  var tmplab, tmplab_js
//
  // __patsflab_streamize_list_cross
  tmpret252 = _ats2jspre_list_auxmain_98(arg0, arg1);
  return tmpret252;
} // end-of-function


function
_ats2jspre_list_auxone_96(arg0, arg1)
{
//
// knd = 0
  var tmpret253
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_auxone_96
  tmpret253 = ATSPMVllazyval(_ats2jspre_list_patsfun_97__closurerize(arg0, arg1));
  return tmpret253;
} // end-of-function


function
_ats2jspre_list_patsfun_97(env0, env1, arg0)
{
//
// knd = 0
  var tmpret254
  var tmp255
  var tmp256
  var tmp257
  var tmp258
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_97
  if(arg0) {
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab100
        if(ATSCKptriscons(env1)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab101
        tmpret254 = null;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab102
        case 4: // __atstmplab103
        tmp255 = env1[0];
        tmp256 = env1[1];
        tmp257 = [env0, tmp255];
        tmp258 = _ats2jspre_list_auxone_96(env0, tmp256);
        tmpret254 = [tmp257, tmp258];
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
  } else {
  } // end-of-if
  return tmpret254;
} // end-of-function


function
_ats2jspre_list_auxmain_98(arg0, arg1)
{
//
// knd = 0
  var tmpret259
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_auxmain_98
  tmpret259 = ATSPMVllazyval(_ats2jspre_list_patsfun_99__closurerize(arg0, arg1));
  return tmpret259;
} // end-of-function


function
_ats2jspre_list_patsfun_99(env0, env1, arg0)
{
//
// knd = 0
  var tmpret260
  var tmp261
  var tmp262
  var tmp263
  var tmp264
  var tmp265
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_patsfun_99
  if(arg0) {
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab104
        if(ATSCKptriscons(env0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab105
        tmpret260 = null;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab106
        case 4: // __atstmplab107
        tmp261 = env0[0];
        tmp262 = env0[1];
        tmp264 = _ats2jspre_list_auxone_96(tmp261, env1);
        tmp265 = _ats2jspre_list_auxmain_98(tmp262, env1);
        tmp263 = ats2jspre_stream_vt_append(tmp264, tmp265);
        tmpret260 = ATSPMVllazyval_eval(tmp263);
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
  } else {
  } // end-of-if
  return tmpret260;
} // end-of-function


function
ats2jspre_list_sort_2(arg0, arg1)
{
//
// knd = 0
  var tmpret273
  var tmp274
  var tmp276
  var tmp282
  var tmp283
  var tmplab, tmplab_js
//
  // __patsflab_list_sort_2
  tmp274 = ats2jspre_JSarray_make_list(arg0);
  ats2jspre_JSarray_sort_2(tmp274, arg1);
  tmp276 = ats2jspre_JSarray_length(tmp274);
  tmp283 = null;
  tmp282 = _ats2jspre_list_loop_108(tmp274, tmp276, 0, tmp283);
  tmpret273 = tmp282;
  return tmpret273;
} // end-of-function


function
_ats2jspre_list_loop_108(env0, env1, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret277
  var tmp278
  var tmp279
  var tmp280
  var tmp281
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop_108
    tmp278 = ats2jspre_lt_int0_int0(arg0, env1);
    if(tmp278) {
      tmp279 = ats2jspre_add_int0_int0(arg0, 1);
      tmp281 = ats2jspre_JSarray_pop(env0);
      tmp280 = [tmp281, arg1];
      // ATStailcalseq_beg
      apy0 = tmp279;
      apy1 = tmp280;
      arg0 = apy0;
      arg1 = apy1;
      funlab_js = 1; // __patsflab__ats2jspre_list_loop_108
      // ATStailcalseq_end
    } else {
      tmpret277 = arg1;
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret277;
  } // endwhile-fun
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
ats2jspre_list_vt_length(arg0)
{
//
// knd = 0
  var tmpret2
  var tmplab, tmplab_js
//
  // __patsflab_list_vt_length
  tmpret2 = _ats2jspre_list_loop_3(arg0, 0);
  return tmpret2;
} // end-of-function


function
_ats2jspre_list_loop_3(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret3
  var tmp5
  var tmp6
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop_3
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab8
        if(ATSCKptriscons(arg0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab9
        tmpret3 = arg1;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab10
        case 4: // __atstmplab11
        tmp5 = arg0[1];
        tmp6 = ats2jspre_add_int1_int1(arg1, 1);
        // ATStailcalseq_beg
        apy0 = tmp5;
        apy1 = tmp6;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_list_loop_3
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret3;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_list_vt_snoc(arg0, arg1)
{
//
// knd = 0
  var tmpret7
  var tmp8
  var tmp9
  var tmplab, tmplab_js
//
  // __patsflab_list_vt_snoc
  tmp9 = null;
  tmp8 = [arg1, tmp9];
  tmpret7 = ats2jspre_list_vt_append(arg0, tmp8);
  return tmpret7;
} // end-of-function


function
ats2jspre_list_vt_extend(arg0, arg1)
{
//
// knd = 0
  var tmpret10
  var tmp11
  var tmp12
  var tmplab, tmplab_js
//
  // __patsflab_list_vt_extend
  tmp12 = null;
  tmp11 = [arg1, tmp12];
  tmpret10 = ats2jspre_list_vt_append(arg0, tmp11);
  return tmpret10;
} // end-of-function


function
ats2jspre_list_vt_append(arg0, arg1)
{
//
// knd = 0
  var tmpret13
  var tmplab, tmplab_js
//
  // __patsflab_list_vt_append
  tmpret13 = _ats2jspre_list_aux_7(arg0, arg1);
  return tmpret13;
} // end-of-function


function
_ats2jspre_list_aux_7(arg0, arg1)
{
//
// knd = 0
  var tmpret14
  var tmp15
  var tmp16
  var tmp17
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_list_aux_7
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab12
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab13
      tmpret14 = arg1;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab14
      case 4: // __atstmplab15
      tmp15 = arg0[0];
      tmp16 = arg0[1];
      // ATSINSfreecon(arg0);
      tmp17 = _ats2jspre_list_aux_7(tmp16, arg1);
      tmpret14 = [tmp15, tmp17];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret14;
} // end-of-function


function
ats2jspre_list_vt_reverse(arg0)
{
//
// knd = 0
  var tmpret18
  var tmp19
  var tmplab, tmplab_js
//
  // __patsflab_list_vt_reverse
  tmp19 = null;
  tmpret18 = ats2jspre_list_vt_reverse_append(arg0, tmp19);
  return tmpret18;
} // end-of-function


function
ats2jspre_list_vt_reverse_append(arg0, arg1)
{
//
// knd = 0
  var tmpret20
  var tmplab, tmplab_js
//
  // __patsflab_list_vt_reverse_append
  tmpret20 = _ats2jspre_list_loop_10(arg0, arg1);
  return tmpret20;
} // end-of-function


function
_ats2jspre_list_loop_10(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret21
  var tmp22
  var tmp23
  var tmp24
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_list_loop_10
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab16
        if(ATSCKptriscons(arg0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab17
        tmpret21 = arg1;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab18
        case 4: // __atstmplab19
        tmp22 = arg0[0];
        tmp23 = arg0[1];
        // ATSINSfreecon(arg0);
        tmp24 = [tmp22, arg1];
        // ATStailcalseq_beg
        apy0 = tmp23;
        apy1 = tmp24;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_list_loop_10
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret21;
  } // endwhile-fun
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
ats2jspre_option_some(arg0)
{
//
// knd = 0
  var tmpret0
  var tmplab, tmplab_js
//
  // __patsflab_option_some
  tmpret0 = [arg0];
  return tmpret0;
} // end-of-function


function
ats2jspre_option_none()
{
//
// knd = 0
  var tmpret1
  var tmplab, tmplab_js
//
  // __patsflab_option_none
  tmpret1 = null;
  return tmpret1;
} // end-of-function


function
ats2jspre_option_unsome(arg0)
{
//
// knd = 0
  var tmpret2
  var tmp3
  var tmplab, tmplab_js
//
  // __patsflab_option_unsome
  tmp3 = arg0[0];
  tmpret2 = tmp3;
  return tmpret2;
} // end-of-function


function
ats2jspre_option_is_some(arg0)
{
//
// knd = 0
  var tmpret4
  var tmplab, tmplab_js
//
  // __patsflab_option_is_some
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab0
      if(ATSCKptrisnull(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab1
      tmpret4 = true;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab2
      case 4: // __atstmplab3
      tmpret4 = false;
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret4;
} // end-of-function


function
ats2jspre_option_is_none(arg0)
{
//
// knd = 0
  var tmpret5
  var tmplab, tmplab_js
//
  // __patsflab_option_is_none
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab4
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab5
      tmpret5 = true;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab6
      case 4: // __atstmplab7
      tmpret5 = false;
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret5;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
_ats2jspre_stream_patsfun_6__closurerize(env0)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_6(cenv[1]); }, env0];
}


function
_ats2jspre_stream_patsfun_16__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_patsfun_16(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_stream_patsfun_22__closurerize(env0, env1)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_22(cenv[1], cenv[2]); }, env0, env1];
}


function
_ats2jspre_stream_patsfun_24__closurerize(env0)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_24(cenv[1]); }, env0];
}


function
_ats2jspre_stream_patsfun_26__closurerize(env0, env1)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_26(cenv[1], cenv[2]); }, env0, env1];
}


function
_ats2jspre_stream_patsfun_28__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_patsfun_28(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_patsfun_30__closurerize(env0, env1)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_30(cenv[1], cenv[2]); }, env0, env1];
}


function
_ats2jspre_stream_patsfun_32__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_patsfun_32(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_patsfun_35__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_patsfun_35(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_patsfun_38__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_patsfun_38(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_patsfun_41__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_patsfun_41(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_patsfun_45__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_patsfun_45(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_patsfun_48__closurerize(env0, env1)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_48(cenv[1], cenv[2]); }, env0, env1];
}


function
_ats2jspre_stream_patsfun_51__closurerize(env0, env1, env2, env3)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_51(cenv[1], cenv[2], cenv[3], cenv[4]); }, env0, env1, env2, env3];
}


function
_ats2jspre_stream_patsfun_52__closurerize(env0, env1)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_52(cenv[1], cenv[2]); }, env0, env1];
}


function
_ats2jspre_stream_patsfun_55__closurerize(env0)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_55(cenv[1]); }, env0];
}


function
_ats2jspre_stream_patsfun_57__closurerize(env0)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_57(cenv[1]); }, env0];
}


function
_ats2jspre_stream_patsfun_59__closurerize(env0, env1)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_59(cenv[1], cenv[2]); }, env0, env1];
}


function
_ats2jspre_stream_patsfun_64__closurerize(env0)
{
  return [function(cenv, arg0, arg1) { return _ats2jspre_stream_patsfun_64(cenv[1], arg0, arg1); }, env0];
}


function
_ats2jspre_stream_patsfun_66__closurerize(env0)
{
  return [function(cenv, arg0, arg1) { return _ats2jspre_stream_patsfun_66(cenv[1], arg0, arg1); }, env0];
}


function
_ats2jspre_stream_patsfun_69__closurerize(env0, env1)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_69(cenv[1], cenv[2]); }, env0, env1];
}


function
_ats2jspre_stream_patsfun_71__closurerize(env0, env1)
{
  return [function(cenv) { return _ats2jspre_stream_patsfun_71(cenv[1], cenv[2]); }, env0, env1];
}


function
ats2jspre_stream_make_list(arg0)
{
//
// knd = 0
  var tmpret7
  var tmplab, tmplab_js
//
  // __patsflab_stream_make_list
  tmpret7 = ATSPMVlazyval(_ats2jspre_stream_patsfun_6__closurerize(arg0));
  return tmpret7;
} // end-of-function


function
_ats2jspre_stream_patsfun_6(env0)
{
//
// knd = 0
  var tmpret8
  var tmp9
  var tmp10
  var tmp11
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_6
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab0
      if(ATSCKptriscons(env0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab1
      tmpret8 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab2
      case 4: // __atstmplab3
      tmp9 = env0[0];
      tmp10 = env0[1];
      tmp11 = ats2jspre_stream_make_list(tmp10);
      tmpret8 = [tmp9, tmp11];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret8;
} // end-of-function


function
ats2jspre_stream_make_list0(arg0)
{
//
// knd = 0
  var tmpret12
  var tmplab, tmplab_js
//
  // __patsflab_stream_make_list0
  tmpret12 = ats2jspre_stream_make_list(arg0);
  return tmpret12;
} // end-of-function


function
ats2jspre_stream_nth_opt(arg0, arg1)
{
//
// knd = 0
  var tmpret13
  var tmplab, tmplab_js
//
  // __patsflab_stream_nth_opt
  tmpret13 = _ats2jspre_stream_loop_9(arg0, arg1);
  return tmpret13;
} // end-of-function


function
_ats2jspre_stream_loop_9(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret14
  var tmp15
  var tmp16
  var tmp17
  var tmp18
  var tmp19
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_loop_9
    tmp15 = ATSPMVlazyval_eval(arg0); 
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab4
        if(ATSCKptriscons(tmp15)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab5
        tmpret14 = null;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab6
        case 4: // __atstmplab7
        tmp16 = tmp15[0];
        tmp17 = tmp15[1];
        tmp18 = ats2jspre_gt_int1_int1(arg1, 0);
        if(tmp18) {
          tmp19 = ats2jspre_pred_int1(arg1);
          // ATStailcalseq_beg
          apy0 = tmp17;
          apy1 = tmp19;
          arg0 = apy0;
          arg1 = apy1;
          funlab_js = 1; // __patsflab__ats2jspre_stream_loop_9
          // ATStailcalseq_end
        } else {
          tmpret14 = [tmp16];
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret14;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_length(arg0)
{
//
// knd = 0
  var tmpret20
  var tmplab, tmplab_js
//
  // __patsflab_stream_length
  tmpret20 = _ats2jspre_stream_loop_11(arg0, 0);
  return tmpret20;
} // end-of-function


function
_ats2jspre_stream_loop_11(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret21
  var tmp22
  var tmp24
  var tmp25
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_loop_11
    tmp22 = ATSPMVlazyval_eval(arg0); 
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab8
        if(ATSCKptriscons(tmp22)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab9
        tmpret21 = arg1;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab10
        case 4: // __atstmplab11
        tmp24 = tmp22[1];
        tmp25 = ats2jspre_add_int1_int1(arg1, 1);
        // ATStailcalseq_beg
        apy0 = tmp24;
        apy1 = tmp25;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_stream_loop_11
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret21;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream2list(arg0)
{
//
// knd = 0
  var tmpret26
  var tmp27
  var tmplab, tmplab_js
//
  // __patsflab_stream2list
  tmp27 = ats2jspre_stream2list_rev(arg0);
  tmpret26 = ats2jspre_list_reverse(tmp27);
  return tmpret26;
} // end-of-function


function
ats2jspre_stream2list_rev(arg0)
{
//
// knd = 0
  var tmpret28
  var tmp34
  var tmplab, tmplab_js
//
  // __patsflab_stream2list_rev
  tmp34 = null;
  tmpret28 = _ats2jspre_stream_loop_14(arg0, tmp34);
  return tmpret28;
} // end-of-function


function
_ats2jspre_stream_loop_14(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret29
  var tmp30
  var tmp31
  var tmp32
  var tmp33
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_loop_14
    tmp30 = ATSPMVlazyval_eval(arg0); 
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab12
        if(ATSCKptriscons(tmp30)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab13
        tmpret29 = arg1;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab14
        case 4: // __atstmplab15
        tmp31 = tmp30[0];
        tmp32 = tmp30[1];
        tmp33 = [tmp31, arg1];
        // ATStailcalseq_beg
        apy0 = tmp32;
        apy1 = tmp33;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_stream_loop_14
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret29;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_takeLte(arg0, arg1)
{
//
// knd = 0
  var tmpret35
  var tmplab, tmplab_js
//
  // __patsflab_stream_takeLte
  tmpret35 = ATSPMVllazyval(_ats2jspre_stream_patsfun_16__closurerize(arg0, arg1));
  return tmpret35;
} // end-of-function


function
_ats2jspre_stream_patsfun_16(env0, env1, arg0)
{
//
// knd = 0
  var tmpret36
  var tmp37
  var tmp38
  var tmp39
  var tmp40
  var tmp41
  var tmp42
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_16
  if(arg0) {
    tmp37 = ats2jspre_gt_int1_int1(env1, 0);
    if(tmp37) {
      tmp38 = ATSPMVlazyval_eval(env0); 
      // ATScaseofseq_beg
      tmplab_js = 1;
      while(true) {
        tmplab = tmplab_js; tmplab_js = 0;
        switch(tmplab) {
          // ATSbranchseq_beg
          case 1: // __atstmplab16
          if(ATSCKptriscons(tmp38)) {
            { tmplab_js = 4; break; }
          } // ifthen
          case 2: // __atstmplab17
          tmpret36 = null;
          break;
          // ATSbranchseq_end
          // ATSbranchseq_beg
          case 3: // __atstmplab18
          case 4: // __atstmplab19
          tmp39 = tmp38[0];
          tmp40 = tmp38[1];
          tmp42 = ats2jspre_sub_int1_int1(env1, 1);
          tmp41 = ats2jspre_stream_takeLte(tmp40, tmp42);
          tmpret36 = [tmp39, tmp41];
          break;
          // ATSbranchseq_end
        } // end-of-switch
        if (tmplab_js === 0) break;
      } // endwhile
      // ATScaseofseq_end
    } else {
      tmpret36 = null;
    } // end-of-if
  } else {
  } // end-of-if
  return tmpret36;
} // end-of-function


function
ats2jspre_stream_take_opt(arg0, arg1)
{
//
// knd = 0
  var tmpret43
  var tmp52
  var tmplab, tmplab_js
//
  // __patsflab_stream_take_opt
  tmp52 = null;
  tmpret43 = _ats2jspre_stream_auxmain_18(arg1, arg0, 0, tmp52);
  return tmpret43;
} // end-of-function


function
_ats2jspre_stream_auxmain_18(env0, arg0, arg1, arg2)
{
//
// knd = 1
  var apy0
  var apy1
  var apy2
  var tmpret44
  var tmp45
  var tmp46
  var tmp47
  var tmp48
  var tmp49
  var tmp50
  var tmp51
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_auxmain_18
    tmp45 = ats2jspre_lt_int1_int1(arg1, env0);
    if(tmp45) {
      tmp46 = ATSPMVlazyval_eval(arg0); 
      // ATScaseofseq_beg
      tmplab_js = 1;
      while(true) {
        tmplab = tmplab_js; tmplab_js = 0;
        switch(tmplab) {
          // ATSbranchseq_beg
          case 1: // __atstmplab20
          if(ATSCKptriscons(tmp46)) {
            { tmplab_js = 4; break; }
          } // ifthen
          case 2: // __atstmplab21
          tmpret44 = null;
          break;
          // ATSbranchseq_end
          // ATSbranchseq_beg
          case 3: // __atstmplab22
          case 4: // __atstmplab23
          tmp47 = tmp46[0];
          tmp48 = tmp46[1];
          tmp49 = ats2jspre_add_int1_int1(arg1, 1);
          tmp50 = [tmp47, arg2];
          // ATStailcalseq_beg
          apy0 = tmp48;
          apy1 = tmp49;
          apy2 = tmp50;
          arg0 = apy0;
          arg1 = apy1;
          arg2 = apy2;
          funlab_js = 1; // __patsflab__ats2jspre_stream_auxmain_18
          // ATStailcalseq_end
          break;
          // ATSbranchseq_end
        } // end-of-switch
        if (tmplab_js === 0) break;
      } // endwhile
      // ATScaseofseq_end
    } else {
      tmp51 = ats2jspre_list_reverse(arg2);
      tmpret44 = [tmp51];
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret44;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_drop_opt(arg0, arg1)
{
//
// knd = 0
  var tmpret53
  var tmplab, tmplab_js
//
  // __patsflab_stream_drop_opt
  tmpret53 = _ats2jspre_stream_auxmain_20(arg1, arg0, 0);
  return tmpret53;
} // end-of-function


function
_ats2jspre_stream_auxmain_20(env0, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret54
  var tmp55
  var tmp56
  var tmp58
  var tmp59
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_auxmain_20
    tmp55 = ats2jspre_lt_int1_int1(arg1, env0);
    if(tmp55) {
      tmp56 = ATSPMVlazyval_eval(arg0); 
      // ATScaseofseq_beg
      tmplab_js = 1;
      while(true) {
        tmplab = tmplab_js; tmplab_js = 0;
        switch(tmplab) {
          // ATSbranchseq_beg
          case 1: // __atstmplab24
          if(ATSCKptriscons(tmp56)) {
            { tmplab_js = 4; break; }
          } // ifthen
          case 2: // __atstmplab25
          tmpret54 = null;
          break;
          // ATSbranchseq_end
          // ATSbranchseq_beg
          case 3: // __atstmplab26
          case 4: // __atstmplab27
          tmp58 = tmp56[1];
          tmp59 = ats2jspre_add_int1_int1(arg1, 1);
          // ATStailcalseq_beg
          apy0 = tmp58;
          apy1 = tmp59;
          arg0 = apy0;
          arg1 = apy1;
          funlab_js = 1; // __patsflab__ats2jspre_stream_auxmain_20
          // ATStailcalseq_end
          break;
          // ATSbranchseq_end
        } // end-of-switch
        if (tmplab_js === 0) break;
      } // endwhile
      // ATScaseofseq_end
    } else {
      tmpret54 = [arg0];
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret54;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_append(arg0, arg1)
{
//
// knd = 0
  var tmpret60
  var tmplab, tmplab_js
//
  // __patsflab_stream_append
  tmpret60 = ATSPMVlazyval(_ats2jspre_stream_patsfun_22__closurerize(arg0, arg1));
  return tmpret60;
} // end-of-function


function
_ats2jspre_stream_patsfun_22(env0, env1)
{
//
// knd = 0
  var tmpret61
  var tmp62
  var tmp63
  var tmp64
  var tmp65
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_22
  tmp62 = ATSPMVlazyval_eval(env0); 
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab28
      if(ATSCKptriscons(tmp62)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab29
      tmpret61 = ATSPMVlazyval_eval(env1); 
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab30
      case 4: // __atstmplab31
      tmp63 = tmp62[0];
      tmp64 = tmp62[1];
      tmp65 = ats2jspre_stream_append(tmp64, env1);
      tmpret61 = [tmp63, tmp65];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret61;
} // end-of-function


function
ats2jspre_stream_concat(arg0)
{
//
// knd = 0
  var tmpret66
  var tmplab, tmplab_js
//
  // __patsflab_stream_concat
  tmpret66 = ATSPMVlazyval(_ats2jspre_stream_patsfun_24__closurerize(arg0));
  return tmpret66;
} // end-of-function


function
_ats2jspre_stream_patsfun_24(env0)
{
//
// knd = 0
  var tmpret67
  var tmp68
  var tmp69
  var tmp70
  var tmp71
  var tmp72
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_24
  tmp68 = ATSPMVlazyval_eval(env0); 
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab32
      if(ATSCKptriscons(tmp68)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab33
      tmpret67 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab34
      case 4: // __atstmplab35
      tmp69 = tmp68[0];
      tmp70 = tmp68[1];
      tmp72 = ats2jspre_stream_concat(tmp70);
      tmp71 = ats2jspre_stream_append(tmp69, tmp72);
      tmpret67 = ATSPMVlazyval_eval(tmp71); 
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret67;
} // end-of-function


function
ats2jspre_stream_map_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret73
  var tmplab, tmplab_js
//
  // __patsflab_stream_map_cloref
  tmpret73 = ATSPMVlazyval(_ats2jspre_stream_patsfun_26__closurerize(arg0, arg1));
  return tmpret73;
} // end-of-function


function
_ats2jspre_stream_patsfun_26(env0, env1)
{
//
// knd = 0
  var tmpret74
  var tmp75
  var tmp76
  var tmp77
  var tmp78
  var tmp79
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_26
  tmp75 = ATSPMVlazyval_eval(env0); 
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab36
      if(ATSCKptriscons(tmp75)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab37
      tmpret74 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab38
      case 4: // __atstmplab39
      tmp76 = tmp75[0];
      tmp77 = tmp75[1];
      tmp78 = env1[0](env1, tmp76);
      tmp79 = ats2jspre_stream_map_cloref(tmp77, env1);
      tmpret74 = [tmp78, tmp79];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret74;
} // end-of-function


function
ats2jspre_stream_map_method(arg0, arg1)
{
//
// knd = 0
  var tmpret80
  var tmplab, tmplab_js
//
  // __patsflab_stream_map_method
  tmpret80 = _ats2jspre_stream_patsfun_28__closurerize(arg0);
  return tmpret80;
} // end-of-function


function
_ats2jspre_stream_patsfun_28(env0, arg0)
{
//
// knd = 0
  var tmpret81
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_28
  tmpret81 = ats2jspre_stream_map_cloref(env0, arg0);
  return tmpret81;
} // end-of-function


function
ats2jspre_stream_filter_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret82
  var tmplab, tmplab_js
//
  // __patsflab_stream_filter_cloref
  tmpret82 = ATSPMVlazyval(_ats2jspre_stream_patsfun_30__closurerize(arg0, arg1));
  return tmpret82;
} // end-of-function


function
_ats2jspre_stream_patsfun_30(env0, env1)
{
//
// knd = 0
  var tmpret83
  var tmp84
  var tmp85
  var tmp86
  var tmp87
  var tmp88
  var tmp89
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_30
  tmp84 = ATSPMVlazyval_eval(env0); 
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab40
      if(ATSCKptriscons(tmp84)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab41
      tmpret83 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab42
      case 4: // __atstmplab43
      tmp85 = tmp84[0];
      tmp86 = tmp84[1];
      tmp87 = env1[0](env1, tmp85);
      if(tmp87) {
        tmp88 = ats2jspre_stream_filter_cloref(tmp86, env1);
        tmpret83 = [tmp85, tmp88];
      } else {
        tmp89 = ats2jspre_stream_filter_cloref(tmp86, env1);
        tmpret83 = ATSPMVlazyval_eval(tmp89); 
      } // end-of-if
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret83;
} // end-of-function


function
ats2jspre_stream_filter_method(arg0)
{
//
// knd = 0
  var tmpret90
  var tmplab, tmplab_js
//
  // __patsflab_stream_filter_method
  tmpret90 = _ats2jspre_stream_patsfun_32__closurerize(arg0);
  return tmpret90;
} // end-of-function


function
_ats2jspre_stream_patsfun_32(env0, arg0)
{
//
// knd = 0
  var tmpret91
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_32
  tmpret91 = ats2jspre_stream_filter_cloref(env0, arg0);
  return tmpret91;
} // end-of-function


function
ats2jspre_stream_forall_cloref(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret92
  var tmp93
  var tmp94
  var tmp95
  var tmp96
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab_stream_forall_cloref
    tmp93 = ATSPMVlazyval_eval(arg0); 
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab44
        if(ATSCKptriscons(tmp93)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab45
        tmpret92 = true;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab46
        case 4: // __atstmplab47
        tmp94 = tmp93[0];
        tmp95 = tmp93[1];
        tmp96 = arg1[0](arg1, tmp94);
        if(tmp96) {
          // ATStailcalseq_beg
          apy0 = tmp95;
          apy1 = arg1;
          arg0 = apy0;
          arg1 = apy1;
          funlab_js = 1; // __patsflab_stream_forall_cloref
          // ATStailcalseq_end
        } else {
          tmpret92 = false;
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret92;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_forall_method(arg0)
{
//
// knd = 0
  var tmpret97
  var tmplab, tmplab_js
//
  // __patsflab_stream_forall_method
  tmpret97 = _ats2jspre_stream_patsfun_35__closurerize(arg0);
  return tmpret97;
} // end-of-function


function
_ats2jspre_stream_patsfun_35(env0, arg0)
{
//
// knd = 0
  var tmpret98
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_35
  tmpret98 = ats2jspre_stream_forall_cloref(env0, arg0);
  return tmpret98;
} // end-of-function


function
ats2jspre_stream_exists_cloref(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret99
  var tmp100
  var tmp101
  var tmp102
  var tmp103
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab_stream_exists_cloref
    tmp100 = ATSPMVlazyval_eval(arg0); 
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab48
        if(ATSCKptriscons(tmp100)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab49
        tmpret99 = false;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab50
        case 4: // __atstmplab51
        tmp101 = tmp100[0];
        tmp102 = tmp100[1];
        tmp103 = arg1[0](arg1, tmp101);
        if(tmp103) {
          tmpret99 = true;
        } else {
          // ATStailcalseq_beg
          apy0 = tmp102;
          apy1 = arg1;
          arg0 = apy0;
          arg1 = apy1;
          funlab_js = 1; // __patsflab_stream_exists_cloref
          // ATStailcalseq_end
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret99;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_exists_method(arg0)
{
//
// knd = 0
  var tmpret104
  var tmplab, tmplab_js
//
  // __patsflab_stream_exists_method
  tmpret104 = _ats2jspre_stream_patsfun_38__closurerize(arg0);
  return tmpret104;
} // end-of-function


function
_ats2jspre_stream_patsfun_38(env0, arg0)
{
//
// knd = 0
  var tmpret105
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_38
  tmpret105 = ats2jspre_stream_exists_cloref(env0, arg0);
  return tmpret105;
} // end-of-function


function
ats2jspre_stream_foreach_cloref(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmp107
  var tmp108
  var tmp109
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab_stream_foreach_cloref
    tmp107 = ATSPMVlazyval_eval(arg0); 
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab52
        if(ATSCKptriscons(tmp107)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab53
        // ATSINSmove_void
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab54
        case 4: // __atstmplab55
        tmp108 = tmp107[0];
        tmp109 = tmp107[1];
        arg1[0](arg1, tmp108);
        // ATStailcalseq_beg
        apy0 = tmp109;
        apy1 = arg1;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab_stream_foreach_cloref
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return/*_void*/;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_foreach_method(arg0)
{
//
// knd = 0
  var tmpret111
  var tmplab, tmplab_js
//
  // __patsflab_stream_foreach_method
  tmpret111 = _ats2jspre_stream_patsfun_41__closurerize(arg0);
  return tmpret111;
} // end-of-function


function
_ats2jspre_stream_patsfun_41(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_41
  ats2jspre_stream_foreach_cloref(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_stream_iforeach_cloref(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_stream_iforeach_cloref
  _ats2jspre_stream_loop_43(arg1, 0, arg0);
  return/*_void*/;
} // end-of-function


function
_ats2jspre_stream_loop_43(env0, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmp115
  var tmp116
  var tmp117
  var tmp119
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_loop_43
    tmp115 = ATSPMVlazyval_eval(arg1); 
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab56
        if(ATSCKptriscons(tmp115)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab57
        // ATSINSmove_void
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab58
        case 4: // __atstmplab59
        tmp116 = tmp115[0];
        tmp117 = tmp115[1];
        env0[0](env0, arg0, tmp116);
        tmp119 = ats2jspre_add_int1_int1(arg0, 1);
        // ATStailcalseq_beg
        apy0 = tmp119;
        apy1 = tmp117;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_stream_loop_43
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return/*_void*/;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_iforeach_method(arg0)
{
//
// knd = 0
  var tmpret120
  var tmplab, tmplab_js
//
  // __patsflab_stream_iforeach_method
  tmpret120 = _ats2jspre_stream_patsfun_45__closurerize(arg0);
  return tmpret120;
} // end-of-function


function
_ats2jspre_stream_patsfun_45(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_45
  ats2jspre_stream_iforeach_cloref(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_stream_tabulate_cloref(arg0)
{
//
// knd = 0
  var tmpret122
  var tmplab, tmplab_js
//
  // __patsflab_stream_tabulate_cloref
  tmpret122 = _ats2jspre_stream_auxmain_47(arg0, 0);
  return tmpret122;
} // end-of-function


function
_ats2jspre_stream_auxmain_47(env0, arg0)
{
//
// knd = 0
  var tmpret123
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_auxmain_47
  tmpret123 = ATSPMVlazyval(_ats2jspre_stream_patsfun_48__closurerize(env0, arg0));
  return tmpret123;
} // end-of-function


function
_ats2jspre_stream_patsfun_48(env0, env1)
{
//
// knd = 0
  var tmpret124
  var tmp125
  var tmp126
  var tmp127
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_48
  tmp125 = env0[0](env0, env1);
  tmp127 = ats2jspre_add_int1_int1(env1, 1);
  tmp126 = _ats2jspre_stream_auxmain_47(env0, tmp127);
  tmpret124 = [tmp125, tmp126];
  return tmpret124;
} // end-of-function


function
ats2jspre_cross_stream_list(arg0, arg1)
{
//
// knd = 0
  var tmpret128
  var tmplab, tmplab_js
//
  // __patsflab_cross_stream_list
  tmpret128 = ATSPMVlazyval(_ats2jspre_stream_patsfun_52__closurerize(arg0, arg1));
  return tmpret128;
} // end-of-function


function
_ats2jspre_stream_auxmain_50(arg0, arg1, arg2, arg3)
{
//
// knd = 0
  var tmpret129
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_auxmain_50
  tmpret129 = ATSPMVlazyval(_ats2jspre_stream_patsfun_51__closurerize(arg0, arg1, arg2, arg3));
  return tmpret129;
} // end-of-function


function
_ats2jspre_stream_patsfun_51(env0, env1, env2, env3)
{
//
// knd = 0
  var tmpret130
  var tmp131
  var tmp132
  var tmp133
  var tmp134
  var tmp135
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_51
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab60
      if(ATSCKptriscons(env3)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab61
      tmp133 = ats2jspre_cross_stream_list(env1, env2);
      tmpret130 = ATSPMVlazyval_eval(tmp133); 
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab62
      case 4: // __atstmplab63
      tmp131 = env3[0];
      tmp132 = env3[1];
      tmp134 = [env0, tmp131];
      tmp135 = _ats2jspre_stream_auxmain_50(env0, env1, env2, tmp132);
      tmpret130 = [tmp134, tmp135];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret130;
} // end-of-function


function
_ats2jspre_stream_patsfun_52(env0, env1)
{
//
// knd = 0
  var tmpret136
  var tmp137
  var tmp138
  var tmp139
  var tmp140
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_52
  tmp137 = ATSPMVlazyval_eval(env0); 
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab64
      if(ATSCKptriscons(tmp137)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab65
      tmpret136 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab66
      if(ATSCKptrisnull(tmp137)) {
        ATSINScaseof_fail("/home/hwxi/Research/ATS-Postiats/contrib/libatscc/ATS2-0.3.2/DATS/stream.dats: 7014(line=463, offs=1) -- 7106(line=465, offs=50)");
      } // ifthen
      case 4: // __atstmplab67
      tmp138 = tmp137[0];
      tmp139 = tmp137[1];
      tmp140 = _ats2jspre_stream_auxmain_50(tmp138, tmp139, env1, env1);
      tmpret136 = ATSPMVlazyval_eval(tmp140); 
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret136;
} // end-of-function


function
ats2jspre_cross_stream_list0(arg0, arg1)
{
//
// knd = 0
  var tmpret141
  var tmplab, tmplab_js
//
  // __patsflab_cross_stream_list0
  tmpret141 = ats2jspre_cross_stream_list(arg0, arg1);
  return tmpret141;
} // end-of-function


function
ats2jspre_stream2cloref_exn(arg0)
{
//
// knd = 0
  var tmpret142
  var tmp143
  var tmplab, tmplab_js
//
  // __patsflab_stream2cloref_exn
  tmp143 = ats2jspre_ref(arg0);
  tmpret142 = _ats2jspre_stream_patsfun_55__closurerize(tmp143);
  return tmpret142;
} // end-of-function


function
_ats2jspre_stream_patsfun_55(env0)
{
//
// knd = 0
  var tmpret144
  var tmp145
  var tmp146
  var tmp147
  var tmp148
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_55
  tmp145 = ats2jspre_ref_get_elt(env0);
  tmp146 = ATSPMVlazyval_eval(tmp145); 
  if(ATSCKptrisnull(tmp146)) {
    ATSINScaseof_fail("/home/hwxi/Research/ATS-Postiats/contrib/libatscc/ATS2-0.3.2/DATS/stream.dats: 7407(line=491, offs=5) -- 7431(line=491, offs=29)");
  } // ifthen
  tmp147 = tmp146[0];
  tmp148 = tmp146[1];
  ats2jspre_ref_set_elt(env0, tmp148);
  tmpret144 = tmp147;
  return tmpret144;
} // end-of-function


function
ats2jspre_stream2cloref_opt(arg0)
{
//
// knd = 0
  var tmpret150
  var tmp151
  var tmplab, tmplab_js
//
  // __patsflab_stream2cloref_opt
  tmp151 = ats2jspre_ref(arg0);
  tmpret150 = _ats2jspre_stream_patsfun_57__closurerize(tmp151);
  return tmpret150;
} // end-of-function


function
_ats2jspre_stream_patsfun_57(env0)
{
//
// knd = 0
  var tmpret152
  var tmp153
  var tmp154
  var tmp155
  var tmp156
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_57
  tmp153 = ats2jspre_ref_get_elt(env0);
  tmp154 = ATSPMVlazyval_eval(tmp153); 
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab68
      if(ATSCKptriscons(tmp154)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab69
      tmpret152 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab70
      case 4: // __atstmplab71
      tmp155 = tmp154[0];
      tmp156 = tmp154[1];
      ats2jspre_ref_set_elt(env0, tmp156);
      tmpret152 = [tmp155];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret152;
} // end-of-function


function
ats2jspre_stream2cloref_last(arg0, arg1)
{
//
// knd = 0
  var tmpret158
  var tmp159
  var tmp160
  var tmplab, tmplab_js
//
  // __patsflab_stream2cloref_last
  tmp159 = ats2jspre_ref(arg0);
  tmp160 = ats2jspre_ref(arg1);
  tmpret158 = _ats2jspre_stream_patsfun_59__closurerize(tmp159, tmp160);
  return tmpret158;
} // end-of-function


function
_ats2jspre_stream_patsfun_59(env0, env1)
{
//
// knd = 0
  var tmpret161
  var tmp162
  var tmp163
  var tmp164
  var tmp165
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_59
  tmp162 = ats2jspre_ref_get_elt(env0);
  tmp163 = ATSPMVlazyval_eval(tmp162); 
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab72
      if(ATSCKptriscons(tmp163)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab73
      tmpret161 = ats2jspre_ref_get_elt(env1);
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab74
      case 4: // __atstmplab75
      tmp164 = tmp163[0];
      tmp165 = tmp163[1];
      ats2jspre_ref_set_elt(env0, tmp165);
      ats2jspre_ref_set_elt(env1, tmp164);
      tmpret161 = tmp164;
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret161;
} // end-of-function


function
ats2jspre_stream_take_while_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret168
  var tmp169
  var tmp170
  var tmp171
  var tmp172
  var tmplab, tmplab_js
//
  // __patsflab_stream_take_while_cloref
  tmp169 = ats2jspre_stream_rtake_while_cloref(arg0, arg1);
  tmp170 = tmp169[0];
  tmp171 = tmp169[1];
  tmp172 = ats2jspre_list_reverse(tmp171);
  tmpret168 = [tmp170, tmp172];
  return tmpret168;
} // end-of-function


function
ats2jspre_stream_rtake_while_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret173
  var tmp181
  var tmplab, tmplab_js
//
  // __patsflab_stream_rtake_while_cloref
  tmp181 = null;
  tmpret173 = _ats2jspre_stream_loop_62(arg1, arg0, 0, tmp181);
  return tmpret173;
} // end-of-function


function
_ats2jspre_stream_loop_62(env0, arg0, arg1, arg2)
{
//
// knd = 1
  var apy0
  var apy1
  var apy2
  var tmpret174
  var tmp175
  var tmp176
  var tmp177
  var tmp178
  var tmp179
  var tmp180
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_loop_62
    tmp175 = ATSPMVlazyval_eval(arg0); 
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab76
        if(ATSCKptriscons(tmp175)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab77
        tmpret174 = [arg0, arg2];
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab78
        case 4: // __atstmplab79
        tmp176 = tmp175[0];
        tmp177 = tmp175[1];
        tmp178 = env0[0](env0, arg1, tmp176);
        if(tmp178) {
          tmp179 = ats2jspre_add_int1_int1(arg1, 1);
          tmp180 = [tmp176, arg2];
          // ATStailcalseq_beg
          apy0 = tmp177;
          apy1 = tmp179;
          apy2 = tmp180;
          arg0 = apy0;
          arg1 = apy1;
          arg2 = apy2;
          funlab_js = 1; // __patsflab__ats2jspre_stream_loop_62
          // ATStailcalseq_end
        } else {
          tmpret174 = [arg0, arg2];
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret174;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_take_until_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret182
  var tmplab, tmplab_js
//
  // __patsflab_stream_take_until_cloref
  tmpret182 = ats2jspre_stream_take_while_cloref(arg0, _ats2jspre_stream_patsfun_64__closurerize(arg1));
  return tmpret182;
} // end-of-function


function
_ats2jspre_stream_patsfun_64(env0, arg0, arg1)
{
//
// knd = 0
  var tmpret183
  var tmp184
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_64
  tmp184 = env0[0](env0, arg0, arg1);
  tmpret183 = atspre_neg_bool0(tmp184);
  return tmpret183;
} // end-of-function


function
ats2jspre_stream_rtake_until_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret185
  var tmplab, tmplab_js
//
  // __patsflab_stream_rtake_until_cloref
  tmpret185 = ats2jspre_stream_rtake_while_cloref(arg0, _ats2jspre_stream_patsfun_66__closurerize(arg1));
  return tmpret185;
} // end-of-function


function
_ats2jspre_stream_patsfun_66(env0, arg0, arg1)
{
//
// knd = 0
  var tmpret186
  var tmp187
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_66
  tmp187 = env0[0](env0, arg0, arg1);
  tmpret186 = atspre_neg_bool0(tmp187);
  return tmpret186;
} // end-of-function


function
ats2jspre_stream_list_xprod2(arg0, arg1)
{
//
// knd = 0
  var tmpret188
  var tmplab, tmplab_js
//
  // __patsflab_stream_list_xprod2
  tmpret188 = _ats2jspre_stream_auxlst_70(arg0, arg1);
  return tmpret188;
} // end-of-function


function
_ats2jspre_stream_aux_68(arg0, arg1)
{
//
// knd = 0
  var tmpret189
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_aux_68
  tmpret189 = ATSPMVlazyval(_ats2jspre_stream_patsfun_69__closurerize(arg0, arg1));
  return tmpret189;
} // end-of-function


function
_ats2jspre_stream_patsfun_69(env0, env1)
{
//
// knd = 0
  var tmpret190
  var tmp191
  var tmp192
  var tmp193
  var tmp194
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_69
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab80
      if(ATSCKptriscons(env1)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab81
      tmpret190 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab82
      case 4: // __atstmplab83
      tmp191 = env1[0];
      tmp192 = env1[1];
      tmp193 = [env0, tmp191];
      tmp194 = _ats2jspre_stream_aux_68(env0, tmp192);
      tmpret190 = [tmp193, tmp194];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret190;
} // end-of-function


function
_ats2jspre_stream_auxlst_70(arg0, arg1)
{
//
// knd = 0
  var tmpret195
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_auxlst_70
  tmpret195 = ATSPMVlazyval(_ats2jspre_stream_patsfun_71__closurerize(arg0, arg1));
  return tmpret195;
} // end-of-function


function
_ats2jspre_stream_patsfun_71(env0, env1)
{
//
// knd = 0
  var tmpret196
  var tmp197
  var tmp198
  var tmp199
  var tmp200
  var tmp201
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_patsfun_71
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab84
      if(ATSCKptriscons(env0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab85
      tmpret196 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab86
      case 4: // __atstmplab87
      tmp197 = env0[0];
      tmp198 = env0[1];
      tmp200 = _ats2jspre_stream_aux_68(tmp197, env1);
      tmp201 = _ats2jspre_stream_auxlst_70(tmp198, env1);
      tmp199 = ats2jspre_stream_append(tmp200, tmp201);
      tmpret196 = ATSPMVlazyval_eval(tmp199); 
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret196;
} // end-of-function


function
ats2jspre_stream_nth_exn(arg0, arg1)
{
//
// knd = 0
  var tmpret202
  var tmp203
  var tmp204
  var tmplab, tmplab_js
//
  // __patsflab_stream_nth_exn
  tmp203 = ats2jspre_stream_nth_opt(arg0, arg1);
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab88
      if(ATSCKptrisnull(tmp203)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab89
      tmp204 = tmp203[0];
      // ATSINSfreecon(tmp203);
      tmpret202 = tmp204;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab90
      case 4: // __atstmplab91
      tmpret202 = ats2jspre_StreamSubscriptExn_throw();
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret202;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
_ats2jspre_stream_vt_patsfun_10__closurerize(env0)
{
  return [function(cenv) { return _ats2jspre_stream_vt_patsfun_10(cenv[1]); }, env0];
}


function
_ats2jspre_stream_vt_patsfun_13__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_13(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_stream_vt_patsfun_21__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_21(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_stream_vt_patsfun_24__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_24(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_vt_patsfun_27__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_27(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_stream_vt_patsfun_29__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_29(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_vt_patsfun_32__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_32(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_stream_vt_patsfun_34__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_34(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_vt_patsfun_37__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_37(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_stream_vt_patsfun_39__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_39(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_vt_patsfun_43__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_43(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_vt_patsfun_47__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_47(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_vt_patsfun_51__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_51(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_vt_patsfun_55__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_55(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_vt_patsfun_59__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_59(cenv[1], arg0); }, env0];
}


function
_ats2jspre_stream_vt_patsfun_62__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_stream_vt_patsfun_62(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
ats2jspre_stream_vt_free(arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_free
  atspre_lazy_vt_free(arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_stream_vt2t(arg0)
{
//
// knd = 0
  var tmpret11
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt2t
  tmpret11 = _ats2jspre_stream_vt_aux_9(arg0);
  return tmpret11;
} // end-of-function


function
_ats2jspre_stream_vt_aux_9(arg0)
{
//
// knd = 0
  var tmpret12
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_aux_9
  tmpret12 = ATSPMVlazyval(_ats2jspre_stream_vt_patsfun_10__closurerize(arg0));
  return tmpret12;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_10(env0)
{
//
// knd = 0
  var tmpret13
  var tmp14
  var tmp15
  var tmp16
  var tmp17
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_10
  tmp14 = ATSPMVllazyval_eval(env0);
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab0
      if(ATSCKptriscons(tmp14)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab1
      tmpret13 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab2
      case 4: // __atstmplab3
      tmp15 = tmp14[0];
      tmp16 = tmp14[1];
      // ATSINSfreecon(tmp14);
      tmp17 = _ats2jspre_stream_vt_aux_9(tmp16);
      tmpret13 = [tmp15, tmp17];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret13;
} // end-of-function


function
ats2jspre_stream_vt_takeLte(arg0, arg1)
{
//
// knd = 0
  var tmpret18
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_takeLte
  tmpret18 = _ats2jspre_stream_vt_auxmain_12(arg0, arg1);
  return tmpret18;
} // end-of-function


function
_ats2jspre_stream_vt_auxmain_12(arg0, arg1)
{
//
// knd = 0
  var tmpret19
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_auxmain_12
  tmpret19 = ATSPMVllazyval(_ats2jspre_stream_vt_patsfun_13__closurerize(arg0, arg1));
  return tmpret19;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_13(env0, env1, arg0)
{
//
// knd = 0
  var tmpret20
  var tmp21
  var tmp22
  var tmp23
  var tmp24
  var tmp25
  var tmp26
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_13
  if(arg0) {
    tmp21 = ats2jspre_gt_int1_int1(env1, 0);
    if(tmp21) {
      tmp22 = ATSPMVllazyval_eval(env0);
      // ATScaseofseq_beg
      tmplab_js = 1;
      while(true) {
        tmplab = tmplab_js; tmplab_js = 0;
        switch(tmplab) {
          // ATSbranchseq_beg
          case 1: // __atstmplab4
          if(ATSCKptriscons(tmp22)) {
            { tmplab_js = 4; break; }
          } // ifthen
          case 2: // __atstmplab5
          tmpret20 = null;
          break;
          // ATSbranchseq_end
          // ATSbranchseq_beg
          case 3: // __atstmplab6
          case 4: // __atstmplab7
          tmp23 = tmp22[0];
          tmp24 = tmp22[1];
          // ATSINSfreecon(tmp22);
          tmp26 = ats2jspre_sub_int1_int1(env1, 1);
          tmp25 = _ats2jspre_stream_vt_auxmain_12(tmp24, tmp26);
          tmpret20 = [tmp23, tmp25];
          break;
          // ATSbranchseq_end
        } // end-of-switch
        if (tmplab_js === 0) break;
      } // endwhile
      // ATScaseofseq_end
    } else {
      atspre_lazy_vt_free(env0);
      tmpret20 = null;
    } // end-of-if
  } else {
    atspre_lazy_vt_free(env0);
  } // end-of-if
  return tmpret20;
} // end-of-function


function
ats2jspre_stream_vt_length(arg0)
{
//
// knd = 0
  var tmpret29
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_length
  tmpret29 = _ats2jspre_stream_vt_loop_15(arg0, 0);
  return tmpret29;
} // end-of-function


function
_ats2jspre_stream_vt_loop_15(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret30
  var tmp31
  var tmp33
  var tmp34
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_vt_loop_15
    tmp31 = ATSPMVllazyval_eval(arg0);
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab8
        if(ATSCKptriscons(tmp31)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab9
        tmpret30 = arg1;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab10
        case 4: // __atstmplab11
        tmp33 = tmp31[1];
        // ATSINSfreecon(tmp31);
        tmp34 = ats2jspre_add_int1_int1(arg1, 1);
        // ATStailcalseq_beg
        apy0 = tmp33;
        apy1 = tmp34;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_stream_vt_loop_15
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret30;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream2list_vt(arg0)
{
//
// knd = 0
  var tmpret35
  var tmp36
  var tmplab, tmplab_js
//
  // __patsflab_stream2list_vt
  tmp36 = ats2jspre_stream2list_vt_rev(arg0);
  tmpret35 = ats2jspre_list_vt_reverse(tmp36);
  return tmpret35;
} // end-of-function


function
ats2jspre_stream2list_vt_rev(arg0)
{
//
// knd = 0
  var tmpret37
  var tmp43
  var tmplab, tmplab_js
//
  // __patsflab_stream2list_vt_rev
  tmp43 = null;
  tmpret37 = _ats2jspre_stream_vt_loop_18(arg0, tmp43);
  return tmpret37;
} // end-of-function


function
_ats2jspre_stream_vt_loop_18(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret38
  var tmp39
  var tmp40
  var tmp41
  var tmp42
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_vt_loop_18
    tmp39 = ATSPMVllazyval_eval(arg0);
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab12
        if(ATSCKptriscons(tmp39)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab13
        tmpret38 = arg1;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab14
        case 4: // __atstmplab15
        tmp40 = tmp39[0];
        tmp41 = tmp39[1];
        // ATSINSfreecon(tmp39);
        tmp42 = [tmp40, arg1];
        // ATStailcalseq_beg
        apy0 = tmp41;
        apy1 = tmp42;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_stream_vt_loop_18
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret38;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_vt_append(arg0, arg1)
{
//
// knd = 0
  var tmpret44
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_append
  tmpret44 = _ats2jspre_stream_vt_auxmain_20(arg0, arg1);
  return tmpret44;
} // end-of-function


function
_ats2jspre_stream_vt_auxmain_20(arg0, arg1)
{
//
// knd = 0
  var tmpret45
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_auxmain_20
  tmpret45 = ATSPMVllazyval(_ats2jspre_stream_vt_patsfun_21__closurerize(arg0, arg1));
  return tmpret45;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_21(env0, env1, arg0)
{
//
// knd = 0
  var tmpret46
  var tmp47
  var tmp48
  var tmp49
  var tmp50
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_21
  if(arg0) {
    tmp47 = ATSPMVllazyval_eval(env0);
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab16
        if(ATSCKptriscons(tmp47)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab17
        tmpret46 = ATSPMVllazyval_eval(env1);
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab18
        case 4: // __atstmplab19
        tmp48 = tmp47[0];
        tmp49 = tmp47[1];
        // ATSINSfreecon(tmp47);
        tmp50 = _ats2jspre_stream_vt_auxmain_20(tmp49, env1);
        tmpret46 = [tmp48, tmp50];
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
  } else {
    atspre_lazy_vt_free(env0);
    atspre_lazy_vt_free(env1);
  } // end-of-if
  return tmpret46;
} // end-of-function


function
ats2jspre_stream_vt_concat(arg0)
{
//
// knd = 0
  var tmpret53
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_concat
  tmpret53 = _ats2jspre_stream_vt_auxmain_23(arg0);
  return tmpret53;
} // end-of-function


function
_ats2jspre_stream_vt_auxmain_23(arg0)
{
//
// knd = 0
  var tmpret54
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_auxmain_23
  tmpret54 = ATSPMVllazyval(_ats2jspre_stream_vt_patsfun_24__closurerize(arg0));
  return tmpret54;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_24(env0, arg0)
{
//
// knd = 0
  var tmpret55
  var tmp56
  var tmp57
  var tmp58
  var tmp59
  var tmp60
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_24
  if(arg0) {
    tmp56 = ATSPMVllazyval_eval(env0);
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab20
        if(ATSCKptriscons(tmp56)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab21
        tmpret55 = null;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab22
        case 4: // __atstmplab23
        tmp57 = tmp56[0];
        tmp58 = tmp56[1];
        // ATSINSfreecon(tmp56);
        tmp60 = _ats2jspre_stream_vt_auxmain_23(tmp58);
        tmp59 = ats2jspre_stream_vt_append(tmp57, tmp60);
        tmpret55 = ATSPMVllazyval_eval(tmp59);
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
  } else {
    atspre_lazy_vt_free(env0);
  } // end-of-if
  return tmpret55;
} // end-of-function


function
ats2jspre_stream_vt_map_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret62
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_map_cloref
  tmpret62 = _ats2jspre_stream_vt_auxmain_26(arg1, arg0);
  return tmpret62;
} // end-of-function


function
_ats2jspre_stream_vt_auxmain_26(env0, arg0)
{
//
// knd = 0
  var tmpret63
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_auxmain_26
  tmpret63 = ATSPMVllazyval(_ats2jspre_stream_vt_patsfun_27__closurerize(env0, arg0));
  return tmpret63;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_27(env0, env1, arg0)
{
//
// knd = 0
  var tmpret64
  var tmp65
  var tmp66
  var tmp67
  var tmp68
  var tmp69
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_27
  if(arg0) {
    tmp65 = ATSPMVllazyval_eval(env1);
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab24
        if(ATSCKptriscons(tmp65)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab25
        tmpret64 = null;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab26
        case 4: // __atstmplab27
        tmp66 = tmp65[0];
        tmp67 = tmp65[1];
        // ATSINSfreecon(tmp65);
        tmp68 = env0[0](env0, tmp66);
        tmp69 = _ats2jspre_stream_vt_auxmain_26(env0, tmp67);
        tmpret64 = [tmp68, tmp69];
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
  } else {
    atspre_lazy_vt_free(env1);
  } // end-of-if
  return tmpret64;
} // end-of-function


function
ats2jspre_stream_vt_map_method(arg0, arg1)
{
//
// knd = 0
  var tmpret71
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_map_method
  tmpret71 = _ats2jspre_stream_vt_patsfun_29__closurerize(arg0);
  return tmpret71;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_29(env0, arg0)
{
//
// knd = 0
  var tmpret72
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_29
  tmpret72 = ats2jspre_stream_vt_map_cloref(env0, arg0);
  return tmpret72;
} // end-of-function


function
ats2jspre_stream_vt_mapopt_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret73
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_mapopt_cloref
  tmpret73 = _ats2jspre_stream_vt_auxmain_31(arg1, arg0);
  return tmpret73;
} // end-of-function


function
_ats2jspre_stream_vt_auxmain_31(env0, arg0)
{
//
// knd = 0
  var tmpret74
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_auxmain_31
  tmpret74 = ATSPMVllazyval(_ats2jspre_stream_vt_patsfun_32__closurerize(env0, arg0));
  return tmpret74;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_32(env0, env1, arg0)
{
//
// knd = 0
  var tmpret75
  var tmp76
  var tmp77
  var tmp78
  var tmp79
  var tmp80
  var tmp81
  var tmp82
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_32
  if(arg0) {
    tmp76 = ATSPMVllazyval_eval(env1);
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab28
        if(ATSCKptriscons(tmp76)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab29
        tmpret75 = null;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab30
        case 4: // __atstmplab31
        tmp77 = tmp76[0];
        tmp78 = tmp76[1];
        // ATSINSfreecon(tmp76);
        tmp79 = env0[0](env0, tmp77);
        // ATScaseofseq_beg
        tmplab_js = 1;
        while(true) {
          tmplab = tmplab_js; tmplab_js = 0;
          switch(tmplab) {
            // ATSbranchseq_beg
            case 1: // __atstmplab32
            if(ATSCKptriscons(tmp79)) {
              { tmplab_js = 4; break; }
            } // ifthen
            case 2: // __atstmplab33
            tmp81 = _ats2jspre_stream_vt_auxmain_31(env0, tmp78);
            tmpret75 = ATSPMVllazyval_eval(tmp81);
            break;
            // ATSbranchseq_end
            // ATSbranchseq_beg
            case 3: // __atstmplab34
            case 4: // __atstmplab35
            tmp80 = tmp79[0];
            // ATSINSfreecon(tmp79);
            tmp82 = _ats2jspre_stream_vt_auxmain_31(env0, tmp78);
            tmpret75 = [tmp80, tmp82];
            break;
            // ATSbranchseq_end
          } // end-of-switch
          if (tmplab_js === 0) break;
        } // endwhile
        // ATScaseofseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
  } else {
    atspre_lazy_vt_free(env1);
  } // end-of-if
  return tmpret75;
} // end-of-function


function
ats2jspre_stream_vt_mapopt_method(arg0, arg1)
{
//
// knd = 0
  var tmpret84
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_mapopt_method
  tmpret84 = _ats2jspre_stream_vt_patsfun_34__closurerize(arg0);
  return tmpret84;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_34(env0, arg0)
{
//
// knd = 0
  var tmpret85
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_34
  tmpret85 = ats2jspre_stream_vt_mapopt_cloref(env0, arg0);
  return tmpret85;
} // end-of-function


function
ats2jspre_stream_vt_filter_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret86
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_filter_cloref
  tmpret86 = _ats2jspre_stream_vt_auxmain_36(arg1, arg0);
  return tmpret86;
} // end-of-function


function
_ats2jspre_stream_vt_auxmain_36(env0, arg0)
{
//
// knd = 0
  var tmpret87
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_auxmain_36
  tmpret87 = ATSPMVllazyval(_ats2jspre_stream_vt_patsfun_37__closurerize(env0, arg0));
  return tmpret87;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_37(env0, env1, arg0)
{
//
// knd = 0
  var tmpret88
  var tmp89
  var tmp90
  var tmp91
  var tmp92
  var tmp93
  var tmp94
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_37
  if(arg0) {
    tmp89 = ATSPMVllazyval_eval(env1);
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab36
        if(ATSCKptriscons(tmp89)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab37
        tmpret88 = null;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab38
        case 4: // __atstmplab39
        tmp90 = tmp89[0];
        tmp91 = tmp89[1];
        // ATSINSfreecon(tmp89);
        tmp92 = env0[0](env0, tmp90);
        if(tmp92) {
          tmp93 = _ats2jspre_stream_vt_auxmain_36(env0, tmp91);
          tmpret88 = [tmp90, tmp93];
        } else {
          tmp94 = _ats2jspre_stream_vt_auxmain_36(env0, tmp91);
          tmpret88 = ATSPMVllazyval_eval(tmp94);
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
  } else {
    atspre_lazy_vt_free(env1);
  } // end-of-if
  return tmpret88;
} // end-of-function


function
ats2jspre_stream_vt_filter_method(arg0)
{
//
// knd = 0
  var tmpret96
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_filter_method
  tmpret96 = _ats2jspre_stream_vt_patsfun_39__closurerize(arg0);
  return tmpret96;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_39(env0, arg0)
{
//
// knd = 0
  var tmpret97
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_39
  tmpret97 = ats2jspre_stream_vt_filter_cloref(env0, arg0);
  return tmpret97;
} // end-of-function


function
ats2jspre_stream_vt_exists_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret98
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_exists_cloref
  tmpret98 = _ats2jspre_stream_vt_loop_41(arg1, arg0);
  return tmpret98;
} // end-of-function


function
_ats2jspre_stream_vt_loop_41(env0, arg0)
{
//
// knd = 1
  var apy0
  var tmpret99
  var tmp100
  var tmp101
  var tmp102
  var tmp103
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_vt_loop_41
    tmp100 = ATSPMVllazyval_eval(arg0);
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab40
        if(ATSCKptriscons(tmp100)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab41
        tmpret99 = false;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab42
        case 4: // __atstmplab43
        tmp101 = tmp100[0];
        tmp102 = tmp100[1];
        // ATSINSfreecon(tmp100);
        tmp103 = env0[0](env0, tmp101);
        if(tmp103) {
          atspre_lazy_vt_free(tmp102);
          tmpret99 = true;
        } else {
          // ATStailcalseq_beg
          apy0 = tmp102;
          arg0 = apy0;
          funlab_js = 1; // __patsflab__ats2jspre_stream_vt_loop_41
          // ATStailcalseq_end
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret99;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_vt_exists_method(arg0)
{
//
// knd = 0
  var tmpret105
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_exists_method
  tmpret105 = _ats2jspre_stream_vt_patsfun_43__closurerize(arg0);
  return tmpret105;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_43(env0, arg0)
{
//
// knd = 0
  var tmpret106
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_43
  tmpret106 = ats2jspre_stream_vt_exists_cloref(env0, arg0);
  return tmpret106;
} // end-of-function


function
ats2jspre_stream_vt_forall_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret107
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_forall_cloref
  tmpret107 = _ats2jspre_stream_vt_loop_45(arg1, arg0);
  return tmpret107;
} // end-of-function


function
_ats2jspre_stream_vt_loop_45(env0, arg0)
{
//
// knd = 1
  var apy0
  var tmpret108
  var tmp109
  var tmp110
  var tmp111
  var tmp112
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_vt_loop_45
    tmp109 = ATSPMVllazyval_eval(arg0);
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab44
        if(ATSCKptriscons(tmp109)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab45
        tmpret108 = true;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab46
        case 4: // __atstmplab47
        tmp110 = tmp109[0];
        tmp111 = tmp109[1];
        // ATSINSfreecon(tmp109);
        tmp112 = env0[0](env0, tmp110);
        if(tmp112) {
          // ATStailcalseq_beg
          apy0 = tmp111;
          arg0 = apy0;
          funlab_js = 1; // __patsflab__ats2jspre_stream_vt_loop_45
          // ATStailcalseq_end
        } else {
          atspre_lazy_vt_free(tmp111);
          tmpret108 = false;
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret108;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_vt_forall_method(arg0)
{
//
// knd = 0
  var tmpret114
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_forall_method
  tmpret114 = _ats2jspre_stream_vt_patsfun_47__closurerize(arg0);
  return tmpret114;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_47(env0, arg0)
{
//
// knd = 0
  var tmpret115
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_47
  tmpret115 = ats2jspre_stream_vt_forall_cloref(env0, arg0);
  return tmpret115;
} // end-of-function


function
ats2jspre_stream_vt_foreach_cloref(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_foreach_cloref
  _ats2jspre_stream_vt_loop_49(arg1, arg0);
  return/*_void*/;
} // end-of-function


function
_ats2jspre_stream_vt_loop_49(env0, arg0)
{
//
// knd = 1
  var apy0
  var tmp118
  var tmp119
  var tmp120
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_vt_loop_49
    tmp118 = ATSPMVllazyval_eval(arg0);
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab48
        if(ATSCKptriscons(tmp118)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab49
        // ATSINSmove_void
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab50
        case 4: // __atstmplab51
        tmp119 = tmp118[0];
        tmp120 = tmp118[1];
        // ATSINSfreecon(tmp118);
        env0[0](env0, tmp119);
        // ATStailcalseq_beg
        apy0 = tmp120;
        arg0 = apy0;
        funlab_js = 1; // __patsflab__ats2jspre_stream_vt_loop_49
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return/*_void*/;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_vt_foreach_method(arg0)
{
//
// knd = 0
  var tmpret122
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_foreach_method
  tmpret122 = _ats2jspre_stream_vt_patsfun_51__closurerize(arg0);
  return tmpret122;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_51(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_51
  ats2jspre_stream_vt_foreach_cloref(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_stream_vt_iforeach_cloref(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_iforeach_cloref
  _ats2jspre_stream_vt_loop_53(arg1, 0, arg0);
  return/*_void*/;
} // end-of-function


function
_ats2jspre_stream_vt_loop_53(env0, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmp126
  var tmp127
  var tmp128
  var tmp130
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_stream_vt_loop_53
    tmp126 = ATSPMVllazyval_eval(arg1);
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab52
        if(ATSCKptriscons(tmp126)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab53
        // ATSINSmove_void
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab54
        case 4: // __atstmplab55
        tmp127 = tmp126[0];
        tmp128 = tmp126[1];
        // ATSINSfreecon(tmp126);
        env0[0](env0, arg0, tmp127);
        tmp130 = ats2jspre_add_int1_int1(arg0, 1);
        // ATStailcalseq_beg
        apy0 = tmp130;
        apy1 = tmp128;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_stream_vt_loop_53
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return/*_void*/;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_stream_vt_iforeach_method(arg0)
{
//
// knd = 0
  var tmpret131
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_iforeach_method
  tmpret131 = _ats2jspre_stream_vt_patsfun_55__closurerize(arg0);
  return tmpret131;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_55(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_55
  ats2jspre_stream_vt_iforeach_cloref(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_stream_vt_rforeach_cloref(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_rforeach_cloref
  _ats2jspre_stream_vt_auxmain_57(arg1, arg0);
  return/*_void*/;
} // end-of-function


function
_ats2jspre_stream_vt_auxmain_57(env0, arg0)
{
//
// knd = 0
  var tmp135
  var tmp136
  var tmp137
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_auxmain_57
  tmp135 = ATSPMVllazyval_eval(arg0);
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab56
      if(ATSCKptriscons(tmp135)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab57
      // ATSINSmove_void
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab58
      case 4: // __atstmplab59
      tmp136 = tmp135[0];
      tmp137 = tmp135[1];
      // ATSINSfreecon(tmp135);
      _ats2jspre_stream_vt_auxmain_57(env0, tmp137);
      env0[0](env0, tmp136);
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return/*_void*/;
} // end-of-function


function
ats2jspre_stream_vt_rforeach_method(arg0)
{
//
// knd = 0
  var tmpret139
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_rforeach_method
  tmpret139 = _ats2jspre_stream_vt_patsfun_59__closurerize(arg0);
  return tmpret139;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_59(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_59
  ats2jspre_stream_vt_rforeach_cloref(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_stream_vt_tabulate_cloref(arg0)
{
//
// knd = 0
  var tmpret141
  var tmplab, tmplab_js
//
  // __patsflab_stream_vt_tabulate_cloref
  tmpret141 = _ats2jspre_stream_vt_auxmain_61(arg0, 0);
  return tmpret141;
} // end-of-function


function
_ats2jspre_stream_vt_auxmain_61(env0, arg0)
{
//
// knd = 0
  var tmpret142
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_auxmain_61
  tmpret142 = ATSPMVllazyval(_ats2jspre_stream_vt_patsfun_62__closurerize(env0, arg0));
  return tmpret142;
} // end-of-function


function
_ats2jspre_stream_vt_patsfun_62(env0, env1, arg0)
{
//
// knd = 0
  var tmpret143
  var tmp144
  var tmp145
  var tmp146
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_stream_vt_patsfun_62
  if(arg0) {
    tmp144 = env0[0](env0, env1);
    tmp146 = ats2jspre_add_int1_int1(env1, 1);
    tmp145 = _ats2jspre_stream_vt_auxmain_61(env0, tmp146);
    tmpret143 = [tmp144, tmp145];
  } else {
  } // end-of-if
  return tmpret143;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
ats2jspre_gvalue_nil()
{
//
// knd = 0
  var tmpret0
  var tmplab, tmplab_js
//
  // __patsflab_gvalue_nil
  tmpret0 = 0;
  return tmpret0;
} // end-of-function


function
ats2jspre_gvalue_int(arg0)
{
//
// knd = 0
  var tmpret1
  var tmplab, tmplab_js
//
  // __patsflab_gvalue_int
  tmpret1 = [1, arg0];
  return tmpret1;
} // end-of-function


function
ats2jspre_gvalue_bool(arg0)
{
//
// knd = 0
  var tmpret2
  var tmplab, tmplab_js
//
  // __patsflab_gvalue_bool
  tmpret2 = [2, arg0];
  return tmpret2;
} // end-of-function


function
ats2jspre_gvalue_float(arg0)
{
//
// knd = 0
  var tmpret3
  var tmplab, tmplab_js
//
  // __patsflab_gvalue_float
  tmpret3 = [3, arg0];
  return tmpret3;
} // end-of-function


function
ats2jspre_gvalue_string(arg0)
{
//
// knd = 0
  var tmpret4
  var tmplab, tmplab_js
//
  // __patsflab_gvalue_string
  tmpret4 = [4, arg0];
  return tmpret4;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
_ats2jspre_intrange_patsfun_4__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_4(cenv[1], arg0); }, env0];
}


function
_ats2jspre_intrange_patsfun_9__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_9(cenv[1], arg0); }, env0];
}


function
_ats2jspre_intrange_patsfun_11__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_11(cenv[1], arg0); }, env0];
}


function
_ats2jspre_intrange_patsfun_13__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_13(cenv[1], arg0); }, env0];
}


function
_ats2jspre_intrange_patsfun_16__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_16(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
_ats2jspre_intrange_patsfun_20__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_20(cenv[1], arg0); }, env0];
}


function
_ats2jspre_intrange_patsfun_23__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_23(cenv[1], arg0); }, env0];
}


function
_ats2jspre_intrange_patsfun_26__closurerize(env0, env1, env2)
{
  return [function(cenv) { return _ats2jspre_intrange_patsfun_26(cenv[1], cenv[2], cenv[3]); }, env0, env1, env2];
}


function
_ats2jspre_intrange_patsfun_28__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_28(cenv[1], arg0); }, env0];
}


function
_ats2jspre_intrange_patsfun_31__closurerize(env0, env1, env2)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_31(cenv[1], cenv[2], cenv[3], arg0); }, env0, env1, env2];
}


function
_ats2jspre_intrange_patsfun_33__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_33(cenv[1], arg0); }, env0];
}


function
_ats2jspre_intrange_patsfun_40__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_40(cenv[1], arg0); }, env0];
}


function
_ats2jspre_intrange_patsfun_44__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_44(cenv[1], arg0); }, env0];
}


function
_ats2jspre_intrange_patsfun_48__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_48(cenv[1], arg0); }, env0];
}


function
_ats2jspre_intrange_patsfun_52__closurerize(env0, env1, env2)
{
  return [function(cenv, arg0) { return _ats2jspre_intrange_patsfun_52(cenv[1], cenv[2], cenv[3], arg0); }, env0, env1, env2];
}


function
ats2jspre_int_repeat_lazy(arg0, arg1)
{
//
// knd = 0
  var tmp1
  var tmplab, tmplab_js
//
  // __patsflab_int_repeat_lazy
  tmp1 = ats2jspre_lazy2cloref(arg1);
  ats2jspre_int_repeat_cloref(arg0, tmp1);
  return/*_void*/;
} // end-of-function


function
ats2jspre_int_repeat_cloref(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_int_repeat_cloref
  _ats2jspre_intrange_loop_2(arg0, arg1);
  return/*_void*/;
} // end-of-function


function
_ats2jspre_intrange_loop_2(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmp4
  var tmp6
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_intrange_loop_2
    tmp4 = ats2jspre_gt_int0_int0(arg0, 0);
    if(tmp4) {
      arg1[0](arg1);
      tmp6 = ats2jspre_sub_int0_int0(arg0, 1);
      // ATStailcalseq_beg
      apy0 = tmp6;
      apy1 = arg1;
      arg0 = apy0;
      arg1 = apy1;
      funlab_js = 1; // __patsflab__ats2jspre_intrange_loop_2
      // ATStailcalseq_end
    } else {
      // ATSINSmove_void
    } // end-of-if
    if (funlab_js > 0) continue; else return/*_void*/;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_int_repeat_method(arg0)
{
//
// knd = 0
  var tmpret7
  var tmplab, tmplab_js
//
  // __patsflab_int_repeat_method
  tmpret7 = _ats2jspre_intrange_patsfun_4__closurerize(arg0);
  return tmpret7;
} // end-of-function


function
_ats2jspre_intrange_patsfun_4(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_4
  ats2jspre_int_repeat_cloref(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_int_exists_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret9
  var tmplab, tmplab_js
//
  // __patsflab_int_exists_cloref
  tmpret9 = ats2jspre_intrange_exists_cloref(0, arg0, arg1);
  return tmpret9;
} // end-of-function


function
ats2jspre_int_forall_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret10
  var tmplab, tmplab_js
//
  // __patsflab_int_forall_cloref
  tmpret10 = ats2jspre_intrange_forall_cloref(0, arg0, arg1);
  return tmpret10;
} // end-of-function


function
ats2jspre_int_foreach_cloref(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_int_foreach_cloref
  ats2jspre_intrange_foreach_cloref(0, arg0, arg1);
  return/*_void*/;
} // end-of-function


function
ats2jspre_int_exists_method(arg0)
{
//
// knd = 0
  var tmpret12
  var tmplab, tmplab_js
//
  // __patsflab_int_exists_method
  tmpret12 = _ats2jspre_intrange_patsfun_9__closurerize(arg0);
  return tmpret12;
} // end-of-function


function
_ats2jspre_intrange_patsfun_9(env0, arg0)
{
//
// knd = 0
  var tmpret13
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_9
  tmpret13 = ats2jspre_int_exists_cloref(env0, arg0);
  return tmpret13;
} // end-of-function


function
ats2jspre_int_forall_method(arg0)
{
//
// knd = 0
  var tmpret14
  var tmplab, tmplab_js
//
  // __patsflab_int_forall_method
  tmpret14 = _ats2jspre_intrange_patsfun_11__closurerize(arg0);
  return tmpret14;
} // end-of-function


function
_ats2jspre_intrange_patsfun_11(env0, arg0)
{
//
// knd = 0
  var tmpret15
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_11
  tmpret15 = ats2jspre_int_forall_cloref(env0, arg0);
  return tmpret15;
} // end-of-function


function
ats2jspre_int_foreach_method(arg0)
{
//
// knd = 0
  var tmpret16
  var tmplab, tmplab_js
//
  // __patsflab_int_foreach_method
  tmpret16 = _ats2jspre_intrange_patsfun_13__closurerize(arg0);
  return tmpret16;
} // end-of-function


function
_ats2jspre_intrange_patsfun_13(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_13
  ats2jspre_int_foreach_cloref(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_int_foldleft_cloref(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret18
  var tmplab, tmplab_js
//
  // __patsflab_int_foldleft_cloref
  tmpret18 = ats2jspre_intrange_foldleft_cloref(0, arg0, arg1, arg2);
  return tmpret18;
} // end-of-function


function
ats2jspre_int_foldleft_method(arg0, arg1)
{
//
// knd = 0
  var tmpret19
  var tmplab, tmplab_js
//
  // __patsflab_int_foldleft_method
  tmpret19 = _ats2jspre_intrange_patsfun_16__closurerize(arg0, arg1);
  return tmpret19;
} // end-of-function


function
_ats2jspre_intrange_patsfun_16(env0, env1, arg0)
{
//
// knd = 0
  var tmpret20
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_16
  tmpret20 = ats2jspre_int_foldleft_cloref(env0, env1, arg0);
  return tmpret20;
} // end-of-function


function
ats2jspre_int_list_map_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret21
  var tmplab, tmplab_js
//
  // __patsflab_int_list_map_cloref
  tmpret21 = _ats2jspre_intrange_aux_18(arg0, arg1, 0);
  return tmpret21;
} // end-of-function


function
_ats2jspre_intrange_aux_18(env0, env1, arg0)
{
//
// knd = 0
  var tmpret22
  var tmp23
  var tmp24
  var tmp25
  var tmp26
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_aux_18
  tmp23 = ats2jspre_lt_int1_int1(arg0, env0);
  if(tmp23) {
    tmp24 = env1[0](env1, arg0);
    tmp26 = ats2jspre_add_int1_int1(arg0, 1);
    tmp25 = _ats2jspre_intrange_aux_18(env0, env1, tmp26);
    tmpret22 = [tmp24, tmp25];
  } else {
    tmpret22 = null;
  } // end-of-if
  return tmpret22;
} // end-of-function


function
ats2jspre_int_list_map_method(arg0, arg1)
{
//
// knd = 0
  var tmpret27
  var tmplab, tmplab_js
//
  // __patsflab_int_list_map_method
  tmpret27 = _ats2jspre_intrange_patsfun_20__closurerize(arg0);
  return tmpret27;
} // end-of-function


function
_ats2jspre_intrange_patsfun_20(env0, arg0)
{
//
// knd = 0
  var tmpret28
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_20
  tmpret28 = ats2jspre_int_list_map_cloref(env0, arg0);
  return tmpret28;
} // end-of-function


function
ats2jspre_int_list0_map_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret29
  var tmp30
  var tmp31
  var tmplab, tmplab_js
//
  // __patsflab_int_list0_map_cloref
  tmp30 = ats2jspre_gte_int1_int1(arg0, 0);
  if(tmp30) {
    tmp31 = ats2jspre_int_list_map_cloref(arg0, arg1);
    tmpret29 = tmp31;
  } else {
    tmpret29 = null;
  } // end-of-if
  return tmpret29;
} // end-of-function


function
ats2jspre_int_list0_map_method(arg0, arg1)
{
//
// knd = 0
  var tmpret32
  var tmplab, tmplab_js
//
  // __patsflab_int_list0_map_method
  tmpret32 = _ats2jspre_intrange_patsfun_23__closurerize(arg0);
  return tmpret32;
} // end-of-function


function
_ats2jspre_intrange_patsfun_23(env0, arg0)
{
//
// knd = 0
  var tmpret33
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_23
  tmpret33 = ats2jspre_int_list0_map_cloref(env0, arg0);
  return tmpret33;
} // end-of-function


function
ats2jspre_int_stream_map_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret34
  var tmplab, tmplab_js
//
  // __patsflab_int_stream_map_cloref
  tmpret34 = _ats2jspre_intrange_aux_25(arg0, arg1, 0);
  return tmpret34;
} // end-of-function


function
_ats2jspre_intrange_aux_25(env0, env1, arg0)
{
//
// knd = 0
  var tmpret35
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_aux_25
  tmpret35 = ATSPMVlazyval(_ats2jspre_intrange_patsfun_26__closurerize(env0, env1, arg0));
  return tmpret35;
} // end-of-function


function
_ats2jspre_intrange_patsfun_26(env0, env1, env2)
{
//
// knd = 0
  var tmpret36
  var tmp37
  var tmp38
  var tmp39
  var tmp40
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_26
  tmp37 = ats2jspre_lt_int1_int1(env2, env0);
  if(tmp37) {
    tmp38 = env1[0](env1, env2);
    tmp40 = ats2jspre_add_int1_int1(env2, 1);
    tmp39 = _ats2jspre_intrange_aux_25(env0, env1, tmp40);
    tmpret36 = [tmp38, tmp39];
  } else {
    tmpret36 = null;
  } // end-of-if
  return tmpret36;
} // end-of-function


function
ats2jspre_int_stream_map_method(arg0, arg1)
{
//
// knd = 0
  var tmpret41
  var tmplab, tmplab_js
//
  // __patsflab_int_stream_map_method
  tmpret41 = _ats2jspre_intrange_patsfun_28__closurerize(arg0);
  return tmpret41;
} // end-of-function


function
_ats2jspre_intrange_patsfun_28(env0, arg0)
{
//
// knd = 0
  var tmpret42
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_28
  tmpret42 = ats2jspre_int_stream_map_cloref(env0, arg0);
  return tmpret42;
} // end-of-function


function
ats2jspre_int_stream_vt_map_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret43
  var tmplab, tmplab_js
//
  // __patsflab_int_stream_vt_map_cloref
  tmpret43 = _ats2jspre_intrange_aux_30(arg0, arg1, 0);
  return tmpret43;
} // end-of-function


function
_ats2jspre_intrange_aux_30(env0, env1, arg0)
{
//
// knd = 0
  var tmpret44
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_aux_30
  tmpret44 = ATSPMVllazyval(_ats2jspre_intrange_patsfun_31__closurerize(env0, env1, arg0));
  return tmpret44;
} // end-of-function


function
_ats2jspre_intrange_patsfun_31(env0, env1, env2, arg0)
{
//
// knd = 0
  var tmpret45
  var tmp46
  var tmp47
  var tmp48
  var tmp49
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_31
  if(arg0) {
    tmp46 = ats2jspre_lt_int1_int1(env2, env0);
    if(tmp46) {
      tmp47 = env1[0](env1, env2);
      tmp49 = ats2jspre_add_int1_int1(env2, 1);
      tmp48 = _ats2jspre_intrange_aux_30(env0, env1, tmp49);
      tmpret45 = [tmp47, tmp48];
    } else {
      tmpret45 = null;
    } // end-of-if
  } else {
  } // end-of-if
  return tmpret45;
} // end-of-function


function
ats2jspre_int_stream_vt_map_method(arg0, arg1)
{
//
// knd = 0
  var tmpret50
  var tmplab, tmplab_js
//
  // __patsflab_int_stream_vt_map_method
  tmpret50 = _ats2jspre_intrange_patsfun_33__closurerize(arg0);
  return tmpret50;
} // end-of-function


function
_ats2jspre_intrange_patsfun_33(env0, arg0)
{
//
// knd = 0
  var tmpret51
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_33
  tmpret51 = ats2jspre_int_stream_vt_map_cloref(env0, arg0);
  return tmpret51;
} // end-of-function


function
ats2jspre_int2_exists_cloref(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret52
  var tmplab, tmplab_js
//
  // __patsflab_int2_exists_cloref
  tmpret52 = ats2jspre_intrange2_exists_cloref(0, arg0, 0, arg1, arg2);
  return tmpret52;
} // end-of-function


function
ats2jspre_int2_forall_cloref(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret53
  var tmplab, tmplab_js
//
  // __patsflab_int2_forall_cloref
  tmpret53 = ats2jspre_intrange2_forall_cloref(0, arg0, 0, arg1, arg2);
  return tmpret53;
} // end-of-function


function
ats2jspre_int2_foreach_cloref(arg0, arg1, arg2)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_int2_foreach_cloref
  ats2jspre_intrange2_foreach_cloref(0, arg0, 0, arg1, arg2);
  return/*_void*/;
} // end-of-function


function
ats2jspre_intrange_exists_cloref(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret55
  var tmplab, tmplab_js
//
  // __patsflab_intrange_exists_cloref
  tmpret55 = _ats2jspre_intrange_loop_38(arg0, arg1, arg2);
  return tmpret55;
} // end-of-function


function
_ats2jspre_intrange_loop_38(arg0, arg1, arg2)
{
//
// knd = 1
  var apy0
  var apy1
  var apy2
  var tmpret56
  var tmp57
  var tmp58
  var tmp59
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_intrange_loop_38
    tmp57 = ats2jspre_lt_int0_int0(arg0, arg1);
    if(tmp57) {
      tmp58 = arg2[0](arg2, arg0);
      if(tmp58) {
        tmpret56 = true;
      } else {
        tmp59 = ats2jspre_add_int0_int0(arg0, 1);
        // ATStailcalseq_beg
        apy0 = tmp59;
        apy1 = arg1;
        apy2 = arg2;
        arg0 = apy0;
        arg1 = apy1;
        arg2 = apy2;
        funlab_js = 1; // __patsflab__ats2jspre_intrange_loop_38
        // ATStailcalseq_end
      } // end-of-if
    } else {
      tmpret56 = false;
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret56;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_intrange_exists_method(arg0)
{
//
// knd = 0
  var tmpret60
  var tmplab, tmplab_js
//
  // __patsflab_intrange_exists_method
  tmpret60 = _ats2jspre_intrange_patsfun_40__closurerize(arg0);
  return tmpret60;
} // end-of-function


function
_ats2jspre_intrange_patsfun_40(env0, arg0)
{
//
// knd = 0
  var tmpret61
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_40
  tmpret61 = ats2jspre_intrange_exists_cloref(env0[0], env0[1], arg0);
  return tmpret61;
} // end-of-function


function
ats2jspre_intrange_forall_cloref(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret62
  var tmplab, tmplab_js
//
  // __patsflab_intrange_forall_cloref
  tmpret62 = _ats2jspre_intrange_loop_42(arg0, arg1, arg2);
  return tmpret62;
} // end-of-function


function
_ats2jspre_intrange_loop_42(arg0, arg1, arg2)
{
//
// knd = 1
  var apy0
  var apy1
  var apy2
  var tmpret63
  var tmp64
  var tmp65
  var tmp66
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_intrange_loop_42
    tmp64 = ats2jspre_lt_int0_int0(arg0, arg1);
    if(tmp64) {
      tmp65 = arg2[0](arg2, arg0);
      if(tmp65) {
        tmp66 = ats2jspre_add_int0_int0(arg0, 1);
        // ATStailcalseq_beg
        apy0 = tmp66;
        apy1 = arg1;
        apy2 = arg2;
        arg0 = apy0;
        arg1 = apy1;
        arg2 = apy2;
        funlab_js = 1; // __patsflab__ats2jspre_intrange_loop_42
        // ATStailcalseq_end
      } else {
        tmpret63 = false;
      } // end-of-if
    } else {
      tmpret63 = true;
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret63;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_intrange_forall_method(arg0)
{
//
// knd = 0
  var tmpret67
  var tmplab, tmplab_js
//
  // __patsflab_intrange_forall_method
  tmpret67 = _ats2jspre_intrange_patsfun_44__closurerize(arg0);
  return tmpret67;
} // end-of-function


function
_ats2jspre_intrange_patsfun_44(env0, arg0)
{
//
// knd = 0
  var tmpret68
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_44
  tmpret68 = ats2jspre_intrange_forall_cloref(env0[0], env0[1], arg0);
  return tmpret68;
} // end-of-function


function
ats2jspre_intrange_foreach_cloref(arg0, arg1, arg2)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_intrange_foreach_cloref
  _ats2jspre_intrange_loop_46(arg0, arg1, arg2);
  return/*_void*/;
} // end-of-function


function
_ats2jspre_intrange_loop_46(arg0, arg1, arg2)
{
//
// knd = 1
  var apy0
  var apy1
  var apy2
  var tmp71
  var tmp73
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_intrange_loop_46
    tmp71 = ats2jspre_lt_int0_int0(arg0, arg1);
    if(tmp71) {
      arg2[0](arg2, arg0);
      tmp73 = ats2jspre_add_int0_int0(arg0, 1);
      // ATStailcalseq_beg
      apy0 = tmp73;
      apy1 = arg1;
      apy2 = arg2;
      arg0 = apy0;
      arg1 = apy1;
      arg2 = apy2;
      funlab_js = 1; // __patsflab__ats2jspre_intrange_loop_46
      // ATStailcalseq_end
    } else {
      // ATSINSmove_void
    } // end-of-if
    if (funlab_js > 0) continue; else return/*_void*/;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_intrange_foreach_method(arg0)
{
//
// knd = 0
  var tmpret74
  var tmplab, tmplab_js
//
  // __patsflab_intrange_foreach_method
  tmpret74 = _ats2jspre_intrange_patsfun_48__closurerize(arg0);
  return tmpret74;
} // end-of-function


function
_ats2jspre_intrange_patsfun_48(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_48
  ats2jspre_intrange_foreach_cloref(env0[0], env0[1], arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_intrange_foldleft_cloref(arg0, arg1, arg2, arg3)
{
//
// knd = 0
  var tmpret76
  var tmplab, tmplab_js
//
  // __patsflab_intrange_foldleft_cloref
  tmpret76 = _ats2jspre_intrange_loop_50(arg3, arg0, arg1, arg2, arg3);
  return tmpret76;
} // end-of-function


function
_ats2jspre_intrange_loop_50(env0, arg0, arg1, arg2, arg3)
{
//
// knd = 1
  var apy0
  var apy1
  var apy2
  var apy3
  var tmpret77
  var tmp78
  var tmp79
  var tmp80
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_intrange_loop_50
    tmp78 = ats2jspre_lt_int0_int0(arg0, arg1);
    if(tmp78) {
      tmp79 = ats2jspre_add_int0_int0(arg0, 1);
      tmp80 = arg3[0](arg3, arg2, arg0);
      // ATStailcalseq_beg
      apy0 = tmp79;
      apy1 = arg1;
      apy2 = tmp80;
      apy3 = env0;
      arg0 = apy0;
      arg1 = apy1;
      arg2 = apy2;
      arg3 = apy3;
      funlab_js = 1; // __patsflab__ats2jspre_intrange_loop_50
      // ATStailcalseq_end
    } else {
      tmpret77 = arg2;
    } // end-of-if
    if (funlab_js > 0) continue; else return tmpret77;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_intrange_foldleft_method(arg0, arg1)
{
//
// knd = 0
  var tmp81
  var tmp82
  var tmpret83
  var tmplab, tmplab_js
//
  // __patsflab_intrange_foldleft_method
  tmp81 = arg0[0];
  tmp82 = arg0[1];
  tmpret83 = _ats2jspre_intrange_patsfun_52__closurerize(tmp81, tmp82, arg1);
  return tmpret83;
} // end-of-function


function
_ats2jspre_intrange_patsfun_52(env0, env1, env2, arg0)
{
//
// knd = 0
  var tmpret84
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_intrange_patsfun_52
  tmpret84 = ats2jspre_intrange_foldleft_cloref(env0, env1, env2, arg0);
  return tmpret84;
} // end-of-function


function
ats2jspre_intrange2_exists_cloref(arg0, arg1, arg2, arg3, arg4)
{
//
// knd = 0
  var tmpret85
  var tmplab, tmplab_js
//
  // __patsflab_intrange2_exists_cloref
  tmpret85 = _ats2jspre_intrange_loop1_54(arg2, arg3, arg4, arg0, arg1, arg2, arg3, arg4);
  return tmpret85;
} // end-of-function


function
_ats2jspre_intrange_loop1_54(env0, env1, env2, arg0, arg1, arg2, arg3, arg4)
{
//
// knd = 2
  var apy0
  var apy1
  var apy2
  var apy3
  var apy4
  var tmpret86
  var tmp87
  var a2rg0
  var a2rg1
  var a2rg2
  var a2rg3
  var a2rg4
  var a2py0
  var a2py1
  var a2py2
  var a2py3
  var a2py4
  var tmpret88
  var tmp89
  var tmp90
  var tmp91
  var tmp92
  var funlab_js
  var tmplab, tmplab_js
//
  funlab_js = 1;
  while(true) {
    switch(funlab_js) {
      case 1: {
        funlab_js = 0;
        tmp87 = ats2jspre_lt_int0_int0(arg0, arg1);
        if(tmp87) {
          // ATStailcalseq_beg
          a2py0 = arg0;
          a2py1 = arg1;
          a2py2 = arg2;
          a2py3 = arg3;
          a2py4 = env2;
          a2rg0 = a2py0;
          a2rg1 = a2py1;
          a2rg2 = a2py2;
          a2rg3 = a2py3;
          a2rg4 = a2py4;
          funlab_js = 2; // __patsflab__ats2jspre_intrange_loop2_55
          // ATStailcalseq_end
        } else {
          tmpret86 = false;
        } // end-of-if
        if (funlab_js > 0) continue; else return tmpret86;
      } // end-of-case
      case 2: {
        funlab_js = 0;
        tmp89 = ats2jspre_lt_int0_int0(a2rg2, a2rg3);
        if(tmp89) {
          tmp90 = a2rg4[0](a2rg4, a2rg0, a2rg2);
          if(tmp90) {
            tmpret88 = true;
          } else {
            tmp91 = ats2jspre_add_int0_int0(a2rg2, 1);
            // ATStailcalseq_beg
            a2py0 = a2rg0;
            a2py1 = a2rg1;
            a2py2 = tmp91;
            a2py3 = a2rg3;
            a2py4 = a2rg4;
            a2rg0 = a2py0;
            a2rg1 = a2py1;
            a2rg2 = a2py2;
            a2rg3 = a2py3;
            a2rg4 = a2py4;
            funlab_js = 2; // __patsflab__ats2jspre_intrange_loop2_55
            // ATStailcalseq_end
          } // end-of-if
        } else {
          tmp92 = ats2jspre_add_int0_int0(a2rg0, 1);
          // ATStailcalseq_beg
          apy0 = tmp92;
          apy1 = a2rg1;
          apy2 = env0;
          apy3 = env1;
          apy4 = a2rg4;
          arg0 = apy0;
          arg1 = apy1;
          arg2 = apy2;
          arg3 = apy3;
          arg4 = apy4;
          funlab_js = 1; // __patsflab__ats2jspre_intrange_loop1_54
          // ATStailcalseq_end
        } // end-of-if
        if (funlab_js > 0) continue; else return tmpret88;
      } // end-of-case
    } // end-of-switch
  } // endwhile-fun
} // end-of-function


function
ats2jspre_intrange2_forall_cloref(arg0, arg1, arg2, arg3, arg4)
{
//
// knd = 0
  var tmpret93
  var tmplab, tmplab_js
//
  // __patsflab_intrange2_forall_cloref
  tmpret93 = _ats2jspre_intrange_loop1_57(arg2, arg3, arg0, arg1, arg2, arg3, arg4);
  return tmpret93;
} // end-of-function


function
_ats2jspre_intrange_loop1_57(env0, env1, arg0, arg1, arg2, arg3, arg4)
{
//
// knd = 2
  var apy0
  var apy1
  var apy2
  var apy3
  var apy4
  var tmpret94
  var tmp95
  var a2rg0
  var a2rg1
  var a2rg2
  var a2rg3
  var a2rg4
  var a2py0
  var a2py1
  var a2py2
  var a2py3
  var a2py4
  var tmpret96
  var tmp97
  var tmp98
  var tmp99
  var tmp100
  var funlab_js
  var tmplab, tmplab_js
//
  funlab_js = 1;
  while(true) {
    switch(funlab_js) {
      case 1: {
        funlab_js = 0;
        tmp95 = ats2jspre_lt_int0_int0(arg0, arg1);
        if(tmp95) {
          // ATStailcalseq_beg
          a2py0 = arg0;
          a2py1 = arg1;
          a2py2 = arg2;
          a2py3 = arg3;
          a2py4 = arg4;
          a2rg0 = a2py0;
          a2rg1 = a2py1;
          a2rg2 = a2py2;
          a2rg3 = a2py3;
          a2rg4 = a2py4;
          funlab_js = 2; // __patsflab__ats2jspre_intrange_loop2_58
          // ATStailcalseq_end
        } else {
          tmpret94 = true;
        } // end-of-if
        if (funlab_js > 0) continue; else return tmpret94;
      } // end-of-case
      case 2: {
        funlab_js = 0;
        tmp97 = ats2jspre_lt_int0_int0(a2rg2, a2rg3);
        if(tmp97) {
          tmp98 = a2rg4[0](a2rg4, a2rg0, a2rg2);
          if(tmp98) {
            tmp99 = ats2jspre_add_int0_int0(a2rg2, 1);
            // ATStailcalseq_beg
            a2py0 = a2rg0;
            a2py1 = a2rg1;
            a2py2 = tmp99;
            a2py3 = a2rg3;
            a2py4 = a2rg4;
            a2rg0 = a2py0;
            a2rg1 = a2py1;
            a2rg2 = a2py2;
            a2rg3 = a2py3;
            a2rg4 = a2py4;
            funlab_js = 2; // __patsflab__ats2jspre_intrange_loop2_58
            // ATStailcalseq_end
          } else {
            tmpret96 = false;
          } // end-of-if
        } else {
          tmp100 = ats2jspre_add_int0_int0(a2rg0, 1);
          // ATStailcalseq_beg
          apy0 = tmp100;
          apy1 = a2rg1;
          apy2 = env0;
          apy3 = env1;
          apy4 = a2rg4;
          arg0 = apy0;
          arg1 = apy1;
          arg2 = apy2;
          arg3 = apy3;
          arg4 = apy4;
          funlab_js = 1; // __patsflab__ats2jspre_intrange_loop1_57
          // ATStailcalseq_end
        } // end-of-if
        if (funlab_js > 0) continue; else return tmpret96;
      } // end-of-case
    } // end-of-switch
  } // endwhile-fun
} // end-of-function


function
ats2jspre_intrange2_foreach_cloref(arg0, arg1, arg2, arg3, arg4)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_intrange2_foreach_cloref
  _ats2jspre_intrange_loop1_60(arg2, arg3, arg0, arg1, arg2, arg3, arg4);
  return/*_void*/;
} // end-of-function


function
_ats2jspre_intrange_loop1_60(env0, env1, arg0, arg1, arg2, arg3, arg4)
{
//
// knd = 2
  var apy0
  var apy1
  var apy2
  var apy3
  var apy4
  var tmp103
  var a2rg0
  var a2rg1
  var a2rg2
  var a2rg3
  var a2rg4
  var a2py0
  var a2py1
  var a2py2
  var a2py3
  var a2py4
  var tmp105
  var tmp107
  var tmp108
  var funlab_js
  var tmplab, tmplab_js
//
  funlab_js = 1;
  while(true) {
    switch(funlab_js) {
      case 1: {
        funlab_js = 0;
        tmp103 = ats2jspre_lt_int0_int0(arg0, arg1);
        if(tmp103) {
          // ATStailcalseq_beg
          a2py0 = arg0;
          a2py1 = arg1;
          a2py2 = arg2;
          a2py3 = arg3;
          a2py4 = arg4;
          a2rg0 = a2py0;
          a2rg1 = a2py1;
          a2rg2 = a2py2;
          a2rg3 = a2py3;
          a2rg4 = a2py4;
          funlab_js = 2; // __patsflab__ats2jspre_intrange_loop2_61
          // ATStailcalseq_end
        } else {
          // ATSINSmove_void
        } // end-of-if
        if (funlab_js > 0) continue; else return/*_void*/;
      } // end-of-case
      case 2: {
        funlab_js = 0;
        tmp105 = ats2jspre_lt_int0_int0(a2rg2, a2rg3);
        if(tmp105) {
          a2rg4[0](a2rg4, a2rg0, a2rg2);
          tmp107 = ats2jspre_add_int0_int0(a2rg2, 1);
          // ATStailcalseq_beg
          a2py0 = a2rg0;
          a2py1 = a2rg1;
          a2py2 = tmp107;
          a2py3 = a2rg3;
          a2py4 = a2rg4;
          a2rg0 = a2py0;
          a2rg1 = a2py1;
          a2rg2 = a2py2;
          a2rg3 = a2py3;
          a2rg4 = a2py4;
          funlab_js = 2; // __patsflab__ats2jspre_intrange_loop2_61
          // ATStailcalseq_end
        } else {
          tmp108 = ats2jspre_succ_int0(a2rg0);
          // ATStailcalseq_beg
          apy0 = tmp108;
          apy1 = a2rg1;
          apy2 = env0;
          apy3 = env1;
          apy4 = a2rg4;
          arg0 = apy0;
          arg1 = apy1;
          arg2 = apy2;
          arg3 = apy3;
          arg4 = apy4;
          funlab_js = 1; // __patsflab__ats2jspre_intrange_loop1_60
          // ATStailcalseq_end
        } // end-of-if
        if (funlab_js > 0) continue; else return/*_void*/;
      } // end-of-case
    } // end-of-switch
  } // endwhile-fun
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
ats2jspre_JSarray_make_list(arg0)
{
//
// knd = 0
  var tmpret0
  var tmp5
  var tmplab, tmplab_js
//
  // __patsflab_JSarray_make_list
  tmp5 = ats2jspre_JSarray_nil();
  _ats2jspre_JSarray_loop_1(tmp5, arg0);
  tmpret0 = tmp5;
  return tmpret0;
} // end-of-function


function
_ats2jspre_JSarray_loop_1(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmp2
  var tmp3
  var tmp4
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_JSarray_loop_1
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab0
        if(ATSCKptriscons(arg1)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab1
        // ATSINSmove_void
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab2
        case 4: // __atstmplab3
        tmp2 = arg1[0];
        tmp3 = arg1[1];
        tmp4 = ats2jspre_JSarray_push(arg0, tmp2);
        // ATStailcalseq_beg
        apy0 = arg0;
        apy1 = tmp3;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_JSarray_loop_1
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return/*_void*/;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_JSarray_make_list_vt(arg0)
{
//
// knd = 0
  var tmpret7
  var tmp12
  var tmplab, tmplab_js
//
  // __patsflab_JSarray_make_list_vt
  tmp12 = ats2jspre_JSarray_nil();
  _ats2jspre_JSarray_loop_3(tmp12, arg0);
  tmpret7 = tmp12;
  return tmpret7;
} // end-of-function


function
_ats2jspre_JSarray_loop_3(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmp9
  var tmp10
  var tmp11
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_JSarray_loop_3
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab4
        if(ATSCKptriscons(arg1)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab5
        // ATSINSmove_void
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab6
        case 4: // __atstmplab7
        tmp9 = arg1[0];
        tmp10 = arg1[1];
        // ATSINSfreecon(arg1);
        tmp11 = ats2jspre_JSarray_push(arg0, tmp9);
        // ATStailcalseq_beg
        apy0 = arg0;
        apy1 = tmp10;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_JSarray_loop_3
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return/*_void*/;
  } // endwhile-fun
} // end-of-function


function
_057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2js_057_ATS2_055_0_056_3_056_2_057_SATS_057_JSarray_056_sats__JSarray_tabulate_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret14
  var tmp15
  var tmplab, tmplab_js
//
  // __patsflab_JSarray_tabulate_cloref
  tmp15 = ats2jspre_JSarray_nil();
  _ats2jspre_JSarray_loop_5(arg0, arg1, tmp15, 0);
  tmpret14 = tmp15;
  return tmpret14;
} // end-of-function


function
_ats2jspre_JSarray_loop_5(env0, env1, env2, arg0)
{
//
// knd = 1
  var apy0
  var tmp17
  var tmp18
  var tmp19
  var tmp20
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_JSarray_loop_5
    tmp17 = ats2jspre_lt_int1_int1(arg0, env0);
    if(tmp17) {
      tmp19 = env1[0](env1, arg0);
      tmp18 = ats2jspre_JSarray_push(env2, tmp19);
      tmp20 = ats2jspre_add_int1_int1(arg0, 1);
      // ATStailcalseq_beg
      apy0 = tmp20;
      arg0 = apy0;
      funlab_js = 1; // __patsflab__ats2jspre_JSarray_loop_5
      // ATStailcalseq_end
    } else {
      // ATSINSmove_void
    } // end-of-if
    if (funlab_js > 0) continue; else return/*_void*/;
  } // endwhile-fun
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
ats2jspre_ref(arg0)
{
//
// knd = 0
  var tmpret0
  var tmplab, tmplab_js
//
  // __patsflab_ref
  tmpret0 = ats2jspre_ref_make_elt(arg0);
  return tmpret0;
} // end-of-function


function
ats2jspre_ref_make_elt(arg0)
{
//
// knd = 0
  var tmpret1
  var tmp2
  var tmplab, tmplab_js
//
  // __patsflab_ref_make_elt
  tmp2 = ats2jspre_JSarray_sing(arg0);
  tmpret1 = tmp2;
  return tmpret1;
} // end-of-function


function
ats2jspre_ref_get_elt(arg0)
{
//
// knd = 0
  var tmpret3
  var tmplab, tmplab_js
//
  // __patsflab_ref_get_elt
  tmpret3 = ats2jspre_JSarray_get_at(arg0, 0);
  return tmpret3;
} // end-of-function


function
ats2jspre_ref_set_elt(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_ref_set_elt
  ats2jspre_JSarray_set_at(arg0, 0, arg1);
  return/*_void*/;
} // end-of-function


function
ats2jspre_ref_exch_elt(arg0, arg1)
{
//
// knd = 0
  var tmpret5
  var tmp6
  var tmplab, tmplab_js
//
  // __patsflab_ref_exch_elt
  tmp6 = ats2jspre_JSarray_get_at(arg0, 0);
  ats2jspre_JSarray_set_at(arg0, 0, arg1);
  tmpret5 = tmp6;
  return tmpret5;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

/* ATSextcode_beg() */
//
function
ats2jspre_arrayref_make_elt
  (n, x)
{
  var A, i;
  A = new Array(n);
  for (i = 0; i < n; i += 1) A[i] = x;
  return A;
}
//
/* ATSextcode_end() */

function
_ats2jspre_arrayref_patsfun_8__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_arrayref_patsfun_8(cenv[1], arg0); }, env0];
}


function
ats2jspre_arrayref_exists_cloref(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret0
  var tmplab, tmplab_js
//
  // __patsflab_arrayref_exists_cloref
  tmpret0 = ats2jspre_int_exists_cloref(arg1, arg2);
  return tmpret0;
} // end-of-function


function
ats2jspre_arrayref_forall_cloref(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret1
  var tmplab, tmplab_js
//
  // __patsflab_arrayref_forall_cloref
  tmpret1 = ats2jspre_int_forall_cloref(arg1, arg2);
  return tmpret1;
} // end-of-function


function
ats2jspre_arrayref_foreach_cloref(arg0, arg1, arg2)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_arrayref_foreach_cloref
  ats2jspre_int_foreach_cloref(arg1, arg2);
  return/*_void*/;
} // end-of-function


function
ats2jspre_arrszref_make_elt(arg0, arg1)
{
//
// knd = 0
  var tmpret3
  var tmp4
  var tmplab, tmplab_js
//
  // __patsflab_arrszref_make_elt
  tmp4 = ats2jspre_arrayref_make_elt(arg0, arg1);
  tmpret3 = ats2jspre_arrszref_make_arrayref(tmp4, arg0);
  return tmpret3;
} // end-of-function


function
ats2jspre_arrszref_exists_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret5
  var tmp6
  var tmplab, tmplab_js
//
  // __patsflab_arrszref_exists_cloref
  tmp6 = ats2jspre_arrszref_size(arg0);
  tmpret5 = ats2jspre_int_exists_cloref(tmp6, arg1);
  return tmpret5;
} // end-of-function


function
ats2jspre_arrszref_forall_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret7
  var tmp8
  var tmplab, tmplab_js
//
  // __patsflab_arrszref_forall_cloref
  tmp8 = ats2jspre_arrszref_size(arg0);
  tmpret7 = ats2jspre_int_forall_cloref(tmp8, arg1);
  return tmpret7;
} // end-of-function


function
ats2jspre_arrszref_foreach_cloref(arg0, arg1)
{
//
// knd = 0
  var tmp10
  var tmplab, tmplab_js
//
  // __patsflab_arrszref_foreach_cloref
  tmp10 = ats2jspre_arrszref_size(arg0);
  ats2jspre_int_foreach_cloref(tmp10, arg1);
  return/*_void*/;
} // end-of-function


function
ats2jspre_arrszref_foreach_method(arg0)
{
//
// knd = 0
  var tmpret11
  var tmplab, tmplab_js
//
  // __patsflab_arrszref_foreach_method
  tmpret11 = _ats2jspre_arrayref_patsfun_8__closurerize(arg0);
  return tmpret11;
} // end-of-function


function
_ats2jspre_arrayref_patsfun_8(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_arrayref_patsfun_8
  ats2jspre_arrszref_foreach_cloref(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_arrayref_get_at(arg0, arg1)
{
//
// knd = 0
  var tmpret13
  var tmplab, tmplab_js
//
  // __patsflab_arrayref_get_at
  tmpret13 = ats2jspre_JSarray_get_at(arg0, arg1);
  return tmpret13;
} // end-of-function


function
ats2jspre_arrayref_set_at(arg0, arg1, arg2)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_arrayref_set_at
  ats2jspre_JSarray_set_at(arg0, arg1, arg2);
  return/*_void*/;
} // end-of-function


function
ats2jspre_arrszref_make_arrayref(arg0, arg1)
{
//
// knd = 0
  var tmpret15
  var tmplab, tmplab_js
//
  // __patsflab_arrszref_make_arrayref
  tmpret15 = arg0;
  return tmpret15;
} // end-of-function


function
ats2jspre_arrszref_size(arg0)
{
//
// knd = 0
  var tmpret16
  var tmp17
  var tmplab, tmplab_js
//
  // __patsflab_arrszref_size
  tmp17 = ats2jspre_JSarray_length(arg0);
  tmpret16 = tmp17;
  return tmpret16;
} // end-of-function


function
ats2jspre_arrszref_get_at(arg0, arg1)
{
//
// knd = 0
  var tmpret18
  var tmplab, tmplab_js
//
  // __patsflab_arrszref_get_at
  tmpret18 = ats2jspre_JSarray_get_at(arg0, arg1);
  return tmpret18;
} // end-of-function


function
ats2jspre_arrszref_set_at(arg0, arg1, arg2)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_arrszref_set_at
  ats2jspre_JSarray_set_at(arg0, arg1, arg2);
  return/*_void*/;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

/* ATSextcode_beg() */
//
function
ats2jspre_matrixref_make_elt
  (m, n, x)
{
  var A, i, j;
  A = new Array(m*n);
  for (i = 0; i < m; i += 1)
  {
    for (j = 0; j < n; j += 1) A[i*n+j] = x;
  }
  return A;
}
//
/* ATSextcode_end() */

/* ATSextcode_beg() */
//
function
ats2jspre_mtrxszref_make_matrixref
  (M, m, n)
{
  return { matrix: M, nrow: m, ncol: n };
}
//
function
ats2jspre_mtrxszref_get_nrow(MSZ) { return MSZ.nrow; }
function
ats2jspre_mtrxszref_get_ncol(MSZ) { return MSZ.ncol; }
//
function
ats2jspre_mtrxszref_get_at
  (MSZ, i, j)
{
  var nrow = MSZ.nrow;
  var ncol = MSZ.ncol;
  if (i < 0) throw new RangeError("mtrxszref_get_at");
  if (j < 0) throw new RangeError("mtrxszref_get_at");
  if (i >= nrow) throw new RangeError("mtrxszref_get_at");
  if (j >= ncol) throw new RangeError("mtrxszref_get_at");
  return MSZ.matrix[i*ncol+j];
}
//
function
ats2jspre_mtrxszref_set_at
  (MSZ, i, j, x0)
{
  var nrow = MSZ.nrow;
  var ncol = MSZ.ncol;
  if (i < 0) throw new RangeError("mtrxszref_set_at");
  if (j < 0) throw new RangeError("mtrxszref_set_at");
  if (i >= nrow) throw new RangeError("mtrxszref_set_at");
  if (j >= ncol) throw new RangeError("mtrxszref_set_at");
  return (MSZ.matrix[i*ncol+j] = x0);
}
//
/* ATSextcode_end() */

function
_ats2jspre_matrixref_patsfun_7__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_matrixref_patsfun_7(cenv[1], arg0); }, env0];
}


function
_ats2jspre_matrixref_patsfun_9__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_matrixref_patsfun_9(cenv[1], arg0); }, env0];
}


function
_ats2jspre_matrixref_patsfun_12__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_matrixref_patsfun_12(cenv[1], arg0); }, env0];
}


function
ats2jspre_matrixref_exists_cloref(arg0, arg1, arg2, arg3)
{
//
// knd = 0
  var tmpret0
  var tmplab, tmplab_js
//
  // __patsflab_matrixref_exists_cloref
  tmpret0 = ats2jspre_int2_exists_cloref(arg1, arg2, arg3);
  return tmpret0;
} // end-of-function


function
ats2jspre_matrixref_forall_cloref(arg0, arg1, arg2, arg3)
{
//
// knd = 0
  var tmpret1
  var tmplab, tmplab_js
//
  // __patsflab_matrixref_forall_cloref
  tmpret1 = ats2jspre_int2_forall_cloref(arg1, arg2, arg3);
  return tmpret1;
} // end-of-function


function
ats2jspre_matrixref_foreach_cloref(arg0, arg1, arg2, arg3)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_matrixref_foreach_cloref
  ats2jspre_int2_foreach_cloref(arg1, arg2, arg3);
  return/*_void*/;
} // end-of-function


function
ats2jspre_mtrxszref_make_elt(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret3
  var tmp4
  var tmplab, tmplab_js
//
  // __patsflab_mtrxszref_make_elt
  tmp4 = ats2jspre_matrixref_make_elt(arg0, arg1, arg2);
  tmpret3 = ats2jspre_mtrxszref_make_matrixref(tmp4, arg0, arg1);
  return tmpret3;
} // end-of-function


function
ats2jspre_mtrxszref_exists_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret5
  var tmp6
  var tmp7
  var tmplab, tmplab_js
//
  // __patsflab_mtrxszref_exists_cloref
  tmp6 = ats2jspre_mtrxszref_get_nrow(arg0);
  tmp7 = ats2jspre_mtrxszref_get_ncol(arg0);
  tmpret5 = ats2jspre_int2_exists_cloref(tmp6, tmp7, arg1);
  return tmpret5;
} // end-of-function


function
ats2jspre_mtrxszref_forall_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret8
  var tmp9
  var tmp10
  var tmplab, tmplab_js
//
  // __patsflab_mtrxszref_forall_cloref
  tmp9 = ats2jspre_mtrxszref_get_nrow(arg0);
  tmp10 = ats2jspre_mtrxszref_get_ncol(arg0);
  tmpret8 = ats2jspre_int2_forall_cloref(tmp9, tmp10, arg1);
  return tmpret8;
} // end-of-function


function
ats2jspre_mtrxszref_exists_method(arg0)
{
//
// knd = 0
  var tmpret11
  var tmplab, tmplab_js
//
  // __patsflab_mtrxszref_exists_method
  tmpret11 = _ats2jspre_matrixref_patsfun_7__closurerize(arg0);
  return tmpret11;
} // end-of-function


function
_ats2jspre_matrixref_patsfun_7(env0, arg0)
{
//
// knd = 0
  var tmpret12
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_matrixref_patsfun_7
  tmpret12 = ats2jspre_mtrxszref_exists_cloref(env0, arg0);
  return tmpret12;
} // end-of-function


function
ats2jspre_mtrxszref_forall_method(arg0)
{
//
// knd = 0
  var tmpret13
  var tmplab, tmplab_js
//
  // __patsflab_mtrxszref_forall_method
  tmpret13 = _ats2jspre_matrixref_patsfun_9__closurerize(arg0);
  return tmpret13;
} // end-of-function


function
_ats2jspre_matrixref_patsfun_9(env0, arg0)
{
//
// knd = 0
  var tmpret14
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_matrixref_patsfun_9
  tmpret14 = ats2jspre_mtrxszref_forall_cloref(env0, arg0);
  return tmpret14;
} // end-of-function


function
ats2jspre_mtrxszref_foreach_cloref(arg0, arg1)
{
//
// knd = 0
  var tmp16
  var tmp17
  var tmplab, tmplab_js
//
  // __patsflab_mtrxszref_foreach_cloref
  tmp16 = ats2jspre_mtrxszref_get_nrow(arg0);
  tmp17 = ats2jspre_mtrxszref_get_ncol(arg0);
  ats2jspre_int2_foreach_cloref(tmp16, tmp17, arg1);
  return/*_void*/;
} // end-of-function


function
ats2jspre_mtrxszref_foreach_method(arg0)
{
//
// knd = 0
  var tmpret18
  var tmplab, tmplab_js
//
  // __patsflab_mtrxszref_foreach_method
  tmpret18 = _ats2jspre_matrixref_patsfun_12__closurerize(arg0);
  return tmpret18;
} // end-of-function


function
_ats2jspre_matrixref_patsfun_12(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_matrixref_patsfun_12
  ats2jspre_mtrxszref_foreach_cloref(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_matrixref_get_at(arg0, arg1, arg2, arg3)
{
//
// knd = 0
  var tmpret20
  var tmp21
  var tmp22
  var tmplab, tmplab_js
//
  // __patsflab_matrixref_get_at
  tmp22 = ats2jspre_mul_int1_int1(arg1, arg2);
  tmp21 = ats2jspre_add_int1_int1(tmp22, arg3);
  tmpret20 = ats2jspre_JSarray_get_at(arg0, tmp21);
  return tmpret20;
} // end-of-function


function
ats2jspre_matrixref_set_at(arg0, arg1, arg2, arg3, arg4)
{
//
// knd = 0
  var tmp24
  var tmp25
  var tmplab, tmplab_js
//
  // __patsflab_matrixref_set_at
  tmp25 = ats2jspre_mul_int1_int1(arg1, arg2);
  tmp24 = ats2jspre_add_int1_int1(tmp25, arg3);
  ats2jspre_JSarray_set_at(arg0, tmp24, arg4);
  return/*_void*/;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
ats2jspre_gmatrixref_make_matrixref(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret0
  var tmplab, tmplab_js
//
  // __patsflab_gmatrixref_make_matrixref
  tmpret0 = [arg0, arg1, arg2, 0, 0, arg1, arg2];
  return tmpret0;
} // end-of-function


function
ats2jspre_gmatrixref_make_subregion(arg0, arg1, arg2, arg3, arg4)
{
//
// knd = 0
  var tmpret1
  var tmp2
  var tmp3
  var tmplab, tmplab_js
//
  // __patsflab_gmatrixref_make_subregion
  tmp2 = ats2jspre_add_int1_int1(arg0[3], arg1);
  tmp3 = ats2jspre_add_int1_int1(arg0[4], arg2);
  tmpret1 = [arg0[0], arg0[1], arg0[2], tmp2, tmp3, arg3, arg4];
  return tmpret1;
} // end-of-function


function
ats2jspre_gmatrixref_get_at(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret4
  var tmp5
  var tmp6
  var tmplab, tmplab_js
//
  // __patsflab_gmatrixref_get_at
  tmp5 = ats2jspre_add_int1_int1(arg0[3], arg1);
  tmp6 = ats2jspre_add_int1_int1(arg0[4], arg2);
  tmpret4 = ats2jspre_matrixref_get_at(arg0[0], tmp5, arg0[2], tmp6);
  return tmpret4;
} // end-of-function


function
ats2jspre_gmatrixref_set_at(arg0, arg1, arg2, arg3)
{
//
// knd = 0
  var tmp8
  var tmp9
  var tmplab, tmplab_js
//
  // __patsflab_gmatrixref_set_at
  tmp8 = ats2jspre_add_int1_int1(arg0[3], arg1);
  tmp9 = ats2jspre_add_int1_int1(arg0[4], arg2);
  ats2jspre_matrixref_set_at(arg0[0], tmp8, arg0[2], tmp9, arg3);
  return/*_void*/;
} // end-of-function


function
ats2jspre_gmatrixref_exists_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret10
  var tmplab, tmplab_js
//
  // __patsflab_gmatrixref_exists_cloref
  tmpret10 = ats2jspre_int2_exists_cloref(arg0[3], arg0[4], arg1);
  return tmpret10;
} // end-of-function


function
ats2jspre_gmatrixref_forall_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret11
  var tmplab, tmplab_js
//
  // __patsflab_gmatrixref_forall_cloref
  tmpret11 = ats2jspre_int2_forall_cloref(arg0[3], arg0[4], arg1);
  return tmpret11;
} // end-of-function


function
ats2jspre_gmatrixref_foreach_cloref(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_gmatrixref_foreach_cloref
  ats2jspre_int2_foreach_cloref(arg0[3], arg0[4], arg1);
  return/*_void*/;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
ats2jspre_qlistref_make_nil()
{
//
// knd = 0
  var tmpret0
  var tmp1
  var tmp2
  var tmp3
  var tmp4
  var tmplab, tmplab_js
//
  // __patsflab_qlistref_make_nil
  tmp2 = null;
  tmp1 = ats2jspre_ref(tmp2);
  tmp4 = null;
  tmp3 = ats2jspre_ref(tmp4);
  tmpret0 = [tmp1, tmp3];
  return tmpret0;
} // end-of-function


function
ats2jspre_qlistref_length(arg0)
{
//
// knd = 0
  var tmpret5
  var tmp6
  var tmp7
  var tmp8
  var tmp9
  var tmp10
  var tmp11
  var tmplab, tmplab_js
//
  // __patsflab_qlistref_length
  tmp6 = arg0[0];
  tmp7 = arg0[1];
  tmp9 = ats2jspre_ref_get_elt(tmp6);
  tmp8 = ats2jspre_list_length(tmp9);
  tmp11 = ats2jspre_ref_get_elt(tmp7);
  tmp10 = ats2jspre_list_length(tmp11);
  tmpret5 = ats2jspre_add_int1_int1(tmp8, tmp10);
  return tmpret5;
} // end-of-function


function
ats2jspre_qlistref_enqueue(arg0, arg1)
{
//
// knd = 0
  var tmp13
  var tmp14
  var tmp15
  var tmp16
  var tmplab, tmplab_js
//
  // __patsflab_qlistref_enqueue
  tmp13 = arg0[0];
  tmp14 = arg0[1];
  tmp16 = ats2jspre_ref_get_elt(tmp13);
  tmp15 = [arg1, tmp16];
  ats2jspre_ref_set_elt(tmp13, tmp15);
  return/*_void*/;
} // end-of-function


function
ats2jspre_qlistref_dequeue_opt(arg0)
{
//
// knd = 0
  var tmpret17
  var tmp18
  var tmp19
  var tmp20
  var tmp21
  var tmp22
  var tmp23
  var tmp25
  var tmp26
  var tmp27
  var tmplab, tmplab_js
//
  // __patsflab_qlistref_dequeue_opt
  tmp18 = arg0[0];
  tmp19 = arg0[1];
  tmp20 = ats2jspre_ref_get_elt(tmp19);
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab0
      if(ATSCKptriscons(tmp20)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab1
      tmp23 = ats2jspre_ref_get_elt(tmp18);
      tmp25 = null;
      ats2jspre_ref_set_elt(tmp18, tmp25);
      // ATScaseofseq_beg
      tmplab_js = 1;
      while(true) {
        tmplab = tmplab_js; tmplab_js = 0;
        switch(tmplab) {
          // ATSbranchseq_beg
          case 1: // __atstmplab4
          if(ATSCKptriscons(tmp23)) {
            { tmplab_js = 4; break; }
          } // ifthen
          case 2: // __atstmplab5
          tmpret17 = null;
          break;
          // ATSbranchseq_end
          // ATSbranchseq_beg
          case 3: // __atstmplab6
          case 4: // __atstmplab7
          tmp26 = tmp23[0];
          tmp27 = tmp23[1];
          ats2jspre_ref_set_elt(tmp19, tmp27);
          tmpret17 = [tmp26];
          break;
          // ATSbranchseq_end
        } // end-of-switch
        if (tmplab_js === 0) break;
      } // endwhile
      // ATScaseofseq_end
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab2
      case 4: // __atstmplab3
      tmp21 = tmp20[0];
      tmp22 = tmp20[1];
      ats2jspre_ref_set_elt(tmp19, tmp22);
      tmpret17 = [tmp21];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret17;
} // end-of-function


function
ats2jspre_qlistref_foldleft(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret30
  var tmp31
  var tmp32
  var tmp41
  var tmp42
  var tmp43
  var tmplab, tmplab_js
//
  // __patsflab_qlistref_foldleft
  tmp31 = arg0[0];
  tmp32 = arg0[1];
  tmp41 = ats2jspre_ref_get_elt(tmp31);
  tmp43 = ats2jspre_ref_get_elt(tmp32);
  tmp42 = _ats2jspre_qlistref_auxl_5(arg2, arg1, tmp43);
  tmpret30 = _ats2jspre_qlistref_auxr_6(arg2, tmp41, tmp42);
  return tmpret30;
} // end-of-function


function
_ats2jspre_qlistref_auxl_5(env0, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret33
  var tmp34
  var tmp35
  var tmp36
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_qlistref_auxl_5
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab8
        if(ATSCKptriscons(arg1)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab9
        tmpret33 = arg0;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab10
        case 4: // __atstmplab11
        tmp34 = arg1[0];
        tmp35 = arg1[1];
        tmp36 = env0[0](env0, arg0, tmp34);
        // ATStailcalseq_beg
        apy0 = tmp36;
        apy1 = tmp35;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_qlistref_auxl_5
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret33;
  } // endwhile-fun
} // end-of-function


function
_ats2jspre_qlistref_auxr_6(env0, arg0, arg1)
{
//
// knd = 0
  var tmpret37
  var tmp38
  var tmp39
  var tmp40
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_qlistref_auxr_6
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab12
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab13
      tmpret37 = arg1;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab14
      case 4: // __atstmplab15
      tmp38 = arg0[0];
      tmp39 = arg0[1];
      tmp40 = _ats2jspre_qlistref_auxr_6(env0, tmp39, arg1);
      tmpret37 = env0[0](env0, tmp40, tmp38);
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret37;
} // end-of-function


function
ats2jspre_qlistref_foldright(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret44
  var tmp45
  var tmp46
  var tmp55
  var tmp56
  var tmp57
  var tmplab, tmplab_js
//
  // __patsflab_qlistref_foldright
  tmp45 = arg0[0];
  tmp46 = arg0[1];
  tmp55 = ats2jspre_ref_get_elt(tmp46);
  tmp57 = ats2jspre_ref_get_elt(tmp45);
  tmp56 = _ats2jspre_qlistref_auxl_8(arg1, arg2, tmp57);
  tmpret44 = _ats2jspre_qlistref_auxr_9(arg1, tmp55, tmp56);
  return tmpret44;
} // end-of-function


function
_ats2jspre_qlistref_auxl_8(env0, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret47
  var tmp48
  var tmp49
  var tmp50
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_qlistref_auxl_8
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab16
        if(ATSCKptriscons(arg1)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab17
        tmpret47 = arg0;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab18
        case 4: // __atstmplab19
        tmp48 = arg1[0];
        tmp49 = arg1[1];
        tmp50 = env0[0](env0, tmp48, arg0);
        // ATStailcalseq_beg
        apy0 = tmp50;
        apy1 = tmp49;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_qlistref_auxl_8
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret47;
  } // endwhile-fun
} // end-of-function


function
_ats2jspre_qlistref_auxr_9(env0, arg0, arg1)
{
//
// knd = 0
  var tmpret51
  var tmp52
  var tmp53
  var tmp54
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_qlistref_auxr_9
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab20
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab21
      tmpret51 = arg1;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab22
      case 4: // __atstmplab23
      tmp52 = arg0[0];
      tmp53 = arg0[1];
      tmp54 = _ats2jspre_qlistref_auxr_9(env0, tmp53, arg1);
      tmpret51 = env0[0](env0, tmp52, tmp54);
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret51;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
slistref_make_nil()
{
//
// knd = 0
  var tmpret0
  var tmp1
  var tmplab, tmplab_js
//
  // __patsflab_slistref_make_nil
  tmp1 = null;
  tmpret0 = ats2jspre_ref(tmp1);
  return tmpret0;
} // end-of-function


function
slistref_length(arg0)
{
//
// knd = 0
  var tmpret2
  var tmp3
  var tmplab, tmplab_js
//
  // __patsflab_slistref_length
  tmp3 = ats2jspre_ref_get_elt(arg0);
  tmpret2 = ats2jspre_list_length(tmp3);
  return tmpret2;
} // end-of-function


function
slistref_push(arg0, arg1)
{
//
// knd = 0
  var tmp5
  var tmp6
  var tmplab, tmplab_js
//
  // __patsflab_slistref_push
  tmp6 = ats2jspre_ref_get_elt(arg0);
  tmp5 = [arg1, tmp6];
  ats2jspre_ref_set_elt(arg0, tmp5);
  return/*_void*/;
} // end-of-function


function
slistref_pop_opt(arg0)
{
//
// knd = 0
  var tmpret7
  var tmp8
  var tmp9
  var tmp10
  var tmplab, tmplab_js
//
  // __patsflab_slistref_pop_opt
  tmp8 = ats2jspre_ref_get_elt(arg0);
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab0
      if(ATSCKptriscons(tmp8)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab1
      tmpret7 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab2
      case 4: // __atstmplab3
      tmp9 = tmp8[0];
      tmp10 = tmp8[1];
      ats2jspre_ref_set_elt(arg0, tmp10);
      tmpret7 = [tmp9];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret7;
} // end-of-function


function
slistref_foldleft(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret12
  var tmp13
  var tmplab, tmplab_js
//
  // __patsflab_slistref_foldleft
  tmp13 = ats2jspre_ref_get_elt(arg0);
  tmpret12 = ats2jspre_list_foldleft(tmp13, arg1, arg2);
  return tmpret12;
} // end-of-function


function
slistref_foldright(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret14
  var tmp15
  var tmplab, tmplab_js
//
  // __patsflab_slistref_foldright
  tmp15 = ats2jspre_ref_get_elt(arg0);
  tmpret14 = ats2jspre_list_foldright(tmp15, arg1, arg2);
  return tmpret14;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
_ats2jspre_ML_list0_patsfun_29__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_list0_patsfun_29(cenv[1], arg0); }, env0];
}


function
_ats2jspre_ML_list0_patsfun_32__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_list0_patsfun_32(cenv[1], arg0); }, env0];
}


function
_ats2jspre_ML_list0_patsfun_35__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_list0_patsfun_35(cenv[1], arg0); }, env0];
}


function
_ats2jspre_ML_list0_patsfun_38__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_list0_patsfun_38(cenv[1], arg0); }, env0];
}


function
_ats2jspre_ML_list0_patsfun_42__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_list0_patsfun_42(cenv[1], arg0); }, env0];
}


function
_ats2jspre_ML_list0_patsfun_45__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_list0_patsfun_45(cenv[1], arg0); }, env0];
}


function
_ats2jspre_ML_list0_patsfun_48__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_list0_patsfun_48(cenv[1], arg0); }, env0];
}


function
_ats2jspre_ML_list0_patsfun_51__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_list0_patsfun_51(cenv[1], arg0); }, env0];
}


function
_ats2jspre_ML_list0_patsfun_54__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_list0_patsfun_54(cenv[1], arg0); }, env0];
}


function
_ats2jspre_ML_list0_patsfun_58__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_list0_patsfun_58(cenv[1], arg0); }, env0];
}


function
_ats2jspre_ML_list0_patsfun_64__closurerize(env0, env1)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_list0_patsfun_64(cenv[1], cenv[2], arg0); }, env0, env1];
}


function
ats2jspre_ML_list0_head_opt(arg0)
{
//
// knd = 0
  var tmpret7
  var tmp8
  var tmplab, tmplab_js
//
  // __patsflab_list0_head_opt
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab6
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab7
      tmpret7 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab8
      case 4: // __atstmplab9
      tmp8 = arg0[0];
      tmpret7 = [tmp8];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret7;
} // end-of-function


function
ats2jspre_ML_list0_tail_opt(arg0)
{
//
// knd = 0
  var tmpret10
  var tmp12
  var tmplab, tmplab_js
//
  // __patsflab_list0_tail_opt
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab10
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab11
      tmpret10 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab12
      case 4: // __atstmplab13
      tmp12 = arg0[1];
      tmpret10 = [tmp12];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret10;
} // end-of-function


function
ats2jspre_ML_list0_length(arg0)
{
//
// knd = 0
  var tmpret13
  var tmplab, tmplab_js
//
  // __patsflab_list0_length
  tmpret13 = ats2jspre_list_length(arg0);
  return tmpret13;
} // end-of-function


function
ats2jspre_ML_list0_last_opt(arg0)
{
//
// knd = 0
  var tmpret14
  var tmp18
  var tmp19
  var tmp20
  var tmplab, tmplab_js
//
  // __patsflab_list0_last_opt
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab18
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab19
      tmpret14 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab20
      case 4: // __atstmplab21
      tmp18 = arg0[0];
      tmp19 = arg0[1];
      tmp20 = _ats2jspre_ML_list0_loop_8(tmp18, tmp19);
      tmpret14 = [tmp20];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret14;
} // end-of-function


function
_ats2jspre_ML_list0_loop_8(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret15
  var tmp16
  var tmp17
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_ML_list0_loop_8
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab14
        if(ATSCKptriscons(arg1)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab15
        tmpret15 = arg0;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab16
        case 4: // __atstmplab17
        tmp16 = arg1[0];
        tmp17 = arg1[1];
        // ATStailcalseq_beg
        apy0 = tmp16;
        apy1 = tmp17;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_ML_list0_loop_8
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret15;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_ML_list0_get_at_opt(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret21
  var tmp22
  var tmp23
  var tmp24
  var tmp25
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab_list0_get_at_opt
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab22
        if(ATSCKptriscons(arg0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab23
        tmpret21 = null;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab24
        case 4: // __atstmplab25
        tmp22 = arg0[0];
        tmp23 = arg0[1];
        tmp24 = ats2jspre_gt_int1_int1(arg1, 0);
        if(tmp24) {
          tmp25 = ats2jspre_sub_int1_int1(arg1, 1);
          // ATStailcalseq_beg
          apy0 = tmp23;
          apy1 = tmp25;
          arg0 = apy0;
          arg1 = apy1;
          funlab_js = 1; // __patsflab_list0_get_at_opt
          // ATStailcalseq_end
        } else {
          tmpret21 = [tmp22];
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret21;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_ML_list0_make_elt(arg0, arg1)
{
//
// knd = 0
  var tmpret26
  var tmp27
  var tmp28
  var tmplab, tmplab_js
//
  // __patsflab_list0_make_elt
  tmp27 = ats2jspre_gte_int1_int1(arg0, 0);
  if(tmp27) {
    tmp28 = ats2jspre_list_make_elt(arg0, arg1);
    tmpret26 = tmp28;
  } else {
    tmpret26 = null;
  } // end-of-if
  return tmpret26;
} // end-of-function


function
ats2jspre_ML_list0_make_intrange_2(arg0, arg1)
{
//
// knd = 0
  var tmpret29
  var tmp30
  var tmplab, tmplab_js
//
  // __patsflab_list0_make_intrange_2
  tmp30 = ats2jspre_list_make_intrange_2(arg0, arg1);
  tmpret29 = tmp30;
  return tmpret29;
} // end-of-function


function
ats2jspre_ML_list0_make_intrange_3(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret31
  var tmp32
  var tmplab, tmplab_js
//
  // __patsflab_list0_make_intrange_3
  tmp32 = ats2jspre_list_make_intrange_3(arg0, arg1, arg2);
  tmpret31 = tmp32;
  return tmpret31;
} // end-of-function


function
ats2jspre_ML_list0_snoc(arg0, arg1)
{
//
// knd = 0
  var tmpret44
  var tmp45
  var tmplab, tmplab_js
//
  // __patsflab_list0_snoc
  tmp45 = ats2jspre_list_snoc(arg0, arg1);
  tmpret44 = tmp45;
  return tmpret44;
} // end-of-function


function
ats2jspre_ML_list0_extend(arg0, arg1)
{
//
// knd = 0
  var tmpret46
  var tmp47
  var tmplab, tmplab_js
//
  // __patsflab_list0_extend
  tmp47 = ats2jspre_list_extend(arg0, arg1);
  tmpret46 = tmp47;
  return tmpret46;
} // end-of-function


function
ats2jspre_ML_list0_append(arg0, arg1)
{
//
// knd = 0
  var tmpret48
  var tmp49
  var tmplab, tmplab_js
//
  // __patsflab_list0_append
  tmp49 = ats2jspre_list_append(arg0, arg1);
  tmpret48 = tmp49;
  return tmpret48;
} // end-of-function


function
ats2jspre_ML_mul_int_list0(arg0, arg1)
{
//
// knd = 0
  var tmpret50
  var tmp51
  var tmplab, tmplab_js
//
  // __patsflab_mul_int_list0
  tmp51 = ats2jspre_mul_int_list(arg0, arg1);
  tmpret50 = tmp51;
  return tmpret50;
} // end-of-function


function
ats2jspre_ML_list0_reverse(arg0)
{
//
// knd = 0
  var tmpret52
  var tmp53
  var tmplab, tmplab_js
//
  // __patsflab_list0_reverse
  tmp53 = ats2jspre_list_reverse(arg0);
  tmpret52 = tmp53;
  return tmpret52;
} // end-of-function


function
ats2jspre_ML_list0_reverse_append(arg0, arg1)
{
//
// knd = 0
  var tmpret54
  var tmp55
  var tmplab, tmplab_js
//
  // __patsflab_list0_reverse_append
  tmp55 = ats2jspre_list_reverse_append(arg0, arg1);
  tmpret54 = tmp55;
  return tmpret54;
} // end-of-function


function
ats2jspre_ML_list0_concat(arg0)
{
//
// knd = 0
  var tmpret56
  var tmp57
  var tmplab, tmplab_js
//
  // __patsflab_list0_concat
  tmp57 = ats2jspre_list_concat(arg0);
  tmpret56 = tmp57;
  return tmpret56;
} // end-of-function


function
ats2jspre_ML_list0_remove_at_opt(arg0, arg1)
{
//
// knd = 0
  var tmpret58
  var tmplab, tmplab_js
//
  // __patsflab_list0_remove_at_opt
  tmpret58 = _ats2jspre_ML_list0_aux_26(arg0, 0);
  return tmpret58;
} // end-of-function


function
_ats2jspre_ML_list0_aux_26(arg0, arg1)
{
//
// knd = 0
  var tmpret59
  var tmp60
  var tmp61
  var tmp62
  var tmp63
  var tmp64
  var tmp65
  var tmp66
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_aux_26
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab30
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab31
      tmpret59 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab32
      case 4: // __atstmplab33
      tmp60 = arg0[0];
      tmp61 = arg0[1];
      tmp62 = ats2jspre_gt_int1_int1(arg1, 0);
      if(tmp62) {
        tmp64 = ats2jspre_sub_int1_int1(arg1, 1);
        tmp63 = _ats2jspre_ML_list0_aux_26(tmp61, tmp64);
        // ATScaseofseq_beg
        tmplab_js = 1;
        while(true) {
          tmplab = tmplab_js; tmplab_js = 0;
          switch(tmplab) {
            // ATSbranchseq_beg
            case 1: // __atstmplab34
            if(ATSCKptriscons(tmp63)) {
              { tmplab_js = 4; break; }
            } // ifthen
            case 2: // __atstmplab35
            tmpret59 = null;
            break;
            // ATSbranchseq_end
            // ATSbranchseq_beg
            case 3: // __atstmplab36
            case 4: // __atstmplab37
            tmp65 = tmp63[0];
            // ATSINSfreecon(tmp63);
            tmp66 = [tmp60, tmp65];
            tmpret59 = [tmp66];
            break;
            // ATSbranchseq_end
          } // end-of-switch
          if (tmplab_js === 0) break;
        } // endwhile
        // ATScaseofseq_end
      } else {
        tmpret59 = [tmp61];
      } // end-of-if
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret59;
} // end-of-function


function
ats2jspre_ML_list0_exists(arg0, arg1)
{
//
// knd = 0
  var tmpret67
  var tmplab, tmplab_js
//
  // __patsflab_list0_exists
  tmpret67 = ats2jspre_list_exists(arg0, arg1);
  return tmpret67;
} // end-of-function


function
ats2jspre_ML_list0_exists_method(arg0)
{
//
// knd = 0
  var tmpret68
  var tmplab, tmplab_js
//
  // __patsflab_list0_exists_method
  tmpret68 = _ats2jspre_ML_list0_patsfun_29__closurerize(arg0);
  return tmpret68;
} // end-of-function


function
_ats2jspre_ML_list0_patsfun_29(env0, arg0)
{
//
// knd = 0
  var tmpret69
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_patsfun_29
  tmpret69 = ats2jspre_ML_list0_exists(env0, arg0);
  return tmpret69;
} // end-of-function


function
ats2jspre_ML_list0_iexists(arg0, arg1)
{
//
// knd = 0
  var tmpret70
  var tmplab, tmplab_js
//
  // __patsflab_list0_iexists
  tmpret70 = ats2jspre_list_iexists(arg0, arg1);
  return tmpret70;
} // end-of-function


function
ats2jspre_ML_list0_iexists_method(arg0)
{
//
// knd = 0
  var tmpret71
  var tmplab, tmplab_js
//
  // __patsflab_list0_iexists_method
  tmpret71 = _ats2jspre_ML_list0_patsfun_32__closurerize(arg0);
  return tmpret71;
} // end-of-function


function
_ats2jspre_ML_list0_patsfun_32(env0, arg0)
{
//
// knd = 0
  var tmpret72
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_patsfun_32
  tmpret72 = ats2jspre_ML_list0_iexists(env0, arg0);
  return tmpret72;
} // end-of-function


function
ats2jspre_ML_list0_forall(arg0, arg1)
{
//
// knd = 0
  var tmpret73
  var tmplab, tmplab_js
//
  // __patsflab_list0_forall
  tmpret73 = ats2jspre_list_forall(arg0, arg1);
  return tmpret73;
} // end-of-function


function
ats2jspre_ML_list0_forall_method(arg0)
{
//
// knd = 0
  var tmpret74
  var tmplab, tmplab_js
//
  // __patsflab_list0_forall_method
  tmpret74 = _ats2jspre_ML_list0_patsfun_35__closurerize(arg0);
  return tmpret74;
} // end-of-function


function
_ats2jspre_ML_list0_patsfun_35(env0, arg0)
{
//
// knd = 0
  var tmpret75
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_patsfun_35
  tmpret75 = ats2jspre_ML_list0_forall(env0, arg0);
  return tmpret75;
} // end-of-function


function
ats2jspre_ML_list0_iforall(arg0, arg1)
{
//
// knd = 0
  var tmpret76
  var tmplab, tmplab_js
//
  // __patsflab_list0_iforall
  tmpret76 = ats2jspre_list_iforall(arg0, arg1);
  return tmpret76;
} // end-of-function


function
ats2jspre_ML_list0_iforall_method(arg0)
{
//
// knd = 0
  var tmpret77
  var tmplab, tmplab_js
//
  // __patsflab_list0_iforall_method
  tmpret77 = _ats2jspre_ML_list0_patsfun_38__closurerize(arg0);
  return tmpret77;
} // end-of-function


function
_ats2jspre_ML_list0_patsfun_38(env0, arg0)
{
//
// knd = 0
  var tmpret78
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_patsfun_38
  tmpret78 = ats2jspre_ML_list0_iforall(env0, arg0);
  return tmpret78;
} // end-of-function


function
ats2jspre_ML_list0_app(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_list0_app
  ats2jspre_ML_list0_foreach(arg0, arg1);
  return/*_void*/;
} // end-of-function


function
ats2jspre_ML_list0_foreach(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_list0_foreach
  ats2jspre_list_foreach(arg0, arg1);
  return/*_void*/;
} // end-of-function


function
ats2jspre_ML_list0_foreach_method(arg0)
{
//
// knd = 0
  var tmpret81
  var tmplab, tmplab_js
//
  // __patsflab_list0_foreach_method
  tmpret81 = _ats2jspre_ML_list0_patsfun_42__closurerize(arg0);
  return tmpret81;
} // end-of-function


function
_ats2jspre_ML_list0_patsfun_42(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_patsfun_42
  ats2jspre_ML_list0_foreach(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_ML_list0_iforeach(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_list0_iforeach
  ats2jspre_list_iforeach(arg0, arg1);
  return/*_void*/;
} // end-of-function


function
ats2jspre_ML_list0_iforeach_method(arg0)
{
//
// knd = 0
  var tmpret84
  var tmplab, tmplab_js
//
  // __patsflab_list0_iforeach_method
  tmpret84 = _ats2jspre_ML_list0_patsfun_45__closurerize(arg0);
  return tmpret84;
} // end-of-function


function
_ats2jspre_ML_list0_patsfun_45(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_patsfun_45
  ats2jspre_ML_list0_iforeach(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_ML_list0_rforeach(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_list0_rforeach
  ats2jspre_list_rforeach(arg0, arg1);
  return/*_void*/;
} // end-of-function


function
ats2jspre_ML_list0_rforeach_method(arg0)
{
//
// knd = 0
  var tmpret87
  var tmplab, tmplab_js
//
  // __patsflab_list0_rforeach_method
  tmpret87 = _ats2jspre_ML_list0_patsfun_48__closurerize(arg0);
  return tmpret87;
} // end-of-function


function
_ats2jspre_ML_list0_patsfun_48(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_patsfun_48
  ats2jspre_ML_list0_rforeach(env0, arg0);
  return/*_void*/;
} // end-of-function


function
ats2jspre_ML_list0_filter(arg0, arg1)
{
//
// knd = 0
  var tmpret89
  var tmp90
  var tmplab, tmplab_js
//
  // __patsflab_list0_filter
  tmp90 = ats2jspre_list_filter(arg0, arg1);
  tmpret89 = tmp90;
  return tmpret89;
} // end-of-function


function
ats2jspre_ML_list0_filter_method(arg0)
{
//
// knd = 0
  var tmpret91
  var tmplab, tmplab_js
//
  // __patsflab_list0_filter_method
  tmpret91 = _ats2jspre_ML_list0_patsfun_51__closurerize(arg0);
  return tmpret91;
} // end-of-function


function
_ats2jspre_ML_list0_patsfun_51(env0, arg0)
{
//
// knd = 0
  var tmpret92
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_patsfun_51
  tmpret92 = ats2jspre_ML_list0_filter(env0, arg0);
  return tmpret92;
} // end-of-function


function
ats2jspre_ML_list0_map(arg0, arg1)
{
//
// knd = 0
  var tmpret93
  var tmp94
  var tmplab, tmplab_js
//
  // __patsflab_list0_map
  tmp94 = ats2jspre_list_map(arg0, arg1);
  tmpret93 = tmp94;
  return tmpret93;
} // end-of-function


function
ats2jspre_ML_list0_map_method(arg0, arg1)
{
//
// knd = 0
  var tmpret95
  var tmplab, tmplab_js
//
  // __patsflab_list0_map_method
  tmpret95 = _ats2jspre_ML_list0_patsfun_54__closurerize(arg0);
  return tmpret95;
} // end-of-function


function
_ats2jspre_ML_list0_patsfun_54(env0, arg0)
{
//
// knd = 0
  var tmpret96
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_patsfun_54
  tmpret96 = ats2jspre_ML_list0_map(env0, arg0);
  return tmpret96;
} // end-of-function


function
ats2jspre_ML_list0_mapcons(arg0, arg1)
{
//
// knd = 0
  var tmpret97
  var tmp98
  var tmp99
  var tmp100
  var tmp101
  var tmplab, tmplab_js
//
  // __patsflab_list0_mapcons
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab38
      if(ATSCKptriscons(arg1)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab39
      tmpret97 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab40
      case 4: // __atstmplab41
      tmp98 = arg1[0];
      tmp99 = arg1[1];
      tmp100 = [arg0, tmp98];
      tmp101 = ats2jspre_ML_list0_mapcons(arg0, tmp99);
      tmpret97 = [tmp100, tmp101];
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret97;
} // end-of-function


function
ats2jspre_ML_list0_find_opt(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret102
  var tmp103
  var tmp104
  var tmp105
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab_list0_find_opt
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab42
        if(ATSCKptriscons(arg0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab43
        tmpret102 = null;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab44
        case 4: // __atstmplab45
        tmp103 = arg0[0];
        tmp104 = arg0[1];
        tmp105 = arg1[0](arg1, tmp103);
        if(tmp105) {
          tmpret102 = [tmp103];
        } else {
          // ATStailcalseq_beg
          apy0 = tmp104;
          apy1 = arg1;
          arg0 = apy0;
          arg1 = apy1;
          funlab_js = 1; // __patsflab_list0_find_opt
          // ATStailcalseq_end
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret102;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_ML_list0_find_opt_method(arg0)
{
//
// knd = 0
  var tmpret106
  var tmplab, tmplab_js
//
  // __patsflab_list0_find_opt_method
  tmpret106 = _ats2jspre_ML_list0_patsfun_58__closurerize(arg0);
  return tmpret106;
} // end-of-function


function
_ats2jspre_ML_list0_patsfun_58(env0, arg0)
{
//
// knd = 0
  var tmpret107
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_patsfun_58
  tmpret107 = ats2jspre_ML_list0_find_opt(env0, arg0);
  return tmpret107;
} // end-of-function


function
ats2jspre_ML_list0_zip(arg0, arg1)
{
//
// knd = 0
  var tmpret108
  var tmplab, tmplab_js
//
  // __patsflab_list0_zip
  tmpret108 = _ats2jspre_ML_list0_aux_60(arg0, arg1);
  return tmpret108;
} // end-of-function


function
_ats2jspre_ML_list0_aux_60(arg0, arg1)
{
//
// knd = 0
  var tmpret109
  var tmp110
  var tmp111
  var tmp112
  var tmp113
  var tmp114
  var tmp115
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_aux_60
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab46
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab47
      tmpret109 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab48
      case 4: // __atstmplab49
      tmp110 = arg0[0];
      tmp111 = arg0[1];
      // ATScaseofseq_beg
      tmplab_js = 1;
      while(true) {
        tmplab = tmplab_js; tmplab_js = 0;
        switch(tmplab) {
          // ATSbranchseq_beg
          case 1: // __atstmplab50
          if(ATSCKptriscons(arg1)) {
            { tmplab_js = 4; break; }
          } // ifthen
          case 2: // __atstmplab51
          tmpret109 = null;
          break;
          // ATSbranchseq_end
          // ATSbranchseq_beg
          case 3: // __atstmplab52
          case 4: // __atstmplab53
          tmp112 = arg1[0];
          tmp113 = arg1[1];
          tmp114 = [tmp110, tmp112];
          tmp115 = _ats2jspre_ML_list0_aux_60(tmp111, tmp113);
          tmpret109 = [tmp114, tmp115];
          break;
          // ATSbranchseq_end
        } // end-of-switch
        if (tmplab_js === 0) break;
      } // endwhile
      // ATScaseofseq_end
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret109;
} // end-of-function


function
ats2jspre_ML_list0_zipwith(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret116
  var tmplab, tmplab_js
//
  // __patsflab_list0_zipwith
  tmpret116 = _ats2jspre_ML_list0_aux_62(arg0, arg1, arg2);
  return tmpret116;
} // end-of-function


function
_ats2jspre_ML_list0_aux_62(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret117
  var tmp118
  var tmp119
  var tmp120
  var tmp121
  var tmp122
  var tmp123
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_aux_62
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab54
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab55
      tmpret117 = null;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab56
      case 4: // __atstmplab57
      tmp118 = arg0[0];
      tmp119 = arg0[1];
      // ATScaseofseq_beg
      tmplab_js = 1;
      while(true) {
        tmplab = tmplab_js; tmplab_js = 0;
        switch(tmplab) {
          // ATSbranchseq_beg
          case 1: // __atstmplab58
          if(ATSCKptriscons(arg1)) {
            { tmplab_js = 4; break; }
          } // ifthen
          case 2: // __atstmplab59
          tmpret117 = null;
          break;
          // ATSbranchseq_end
          // ATSbranchseq_beg
          case 3: // __atstmplab60
          case 4: // __atstmplab61
          tmp120 = arg1[0];
          tmp121 = arg1[1];
          tmp122 = arg2[0](arg2, tmp118, tmp120);
          tmp123 = _ats2jspre_ML_list0_aux_62(tmp119, tmp121, arg2);
          tmpret117 = [tmp122, tmp123];
          break;
          // ATSbranchseq_end
        } // end-of-switch
        if (tmplab_js === 0) break;
      } // endwhile
      // ATScaseofseq_end
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret117;
} // end-of-function


function
ats2jspre_ML_list0_zipwith_method(arg0, arg1)
{
//
// knd = 0
  var tmpret124
  var tmplab, tmplab_js
//
  // __patsflab_list0_zipwith_method
  tmpret124 = _ats2jspre_ML_list0_patsfun_64__closurerize(arg0, arg1);
  return tmpret124;
} // end-of-function


function
_ats2jspre_ML_list0_patsfun_64(env0, env1, arg0)
{
//
// knd = 0
  var tmpret125
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_patsfun_64
  tmpret125 = ats2jspre_ML_list0_zipwith(env0, env1, arg0);
  return tmpret125;
} // end-of-function


function
ats2jspre_ML_list0_foldleft(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret126
  var tmplab, tmplab_js
//
  // __patsflab_list0_foldleft
  tmpret126 = _ats2jspre_ML_list0_aux_66(arg2, arg1, arg0);
  return tmpret126;
} // end-of-function


function
_ats2jspre_ML_list0_aux_66(env0, arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret127
  var tmp128
  var tmp129
  var tmp130
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab__ats2jspre_ML_list0_aux_66
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab62
        if(ATSCKptriscons(arg1)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab63
        tmpret127 = arg0;
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab64
        case 4: // __atstmplab65
        tmp128 = arg1[0];
        tmp129 = arg1[1];
        tmp130 = env0[0](env0, arg0, tmp128);
        // ATStailcalseq_beg
        apy0 = tmp130;
        apy1 = tmp129;
        arg0 = apy0;
        arg1 = apy1;
        funlab_js = 1; // __patsflab__ats2jspre_ML_list0_aux_66
        // ATStailcalseq_end
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret127;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_ML_list0_foldright(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret131
  var tmplab, tmplab_js
//
  // __patsflab_list0_foldright
  tmpret131 = _ats2jspre_ML_list0_aux_68(arg1, arg2, arg0, arg2);
  return tmpret131;
} // end-of-function


function
_ats2jspre_ML_list0_aux_68(env0, env1, arg0, arg1)
{
//
// knd = 0
  var tmpret132
  var tmp133
  var tmp134
  var tmp135
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_aux_68
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab66
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab67
      tmpret132 = arg1;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab68
      case 4: // __atstmplab69
      tmp133 = arg0[0];
      tmp134 = arg0[1];
      tmp135 = _ats2jspre_ML_list0_aux_68(env0, env1, tmp134, env1);
      tmpret132 = env0[0](env0, tmp133, tmp135);
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret132;
} // end-of-function


function
ats2jspre_ML_list0_sort_2(arg0, arg1)
{
//
// knd = 0
  var tmpret138
  var tmp139
  var tmplab, tmplab_js
//
  // __patsflab_list0_sort_2
  tmp139 = ats2jspre_list_sort_2(arg0, arg1);
  tmpret138 = tmp139;
  return tmpret138;
} // end-of-function


function
ats2jspre_ML_streamize_list0_zip(arg0, arg1)
{
//
// knd = 0
  var tmpret140
  var tmplab, tmplab_js
//
  // __patsflab_streamize_list0_zip
  tmpret140 = ats2jspre_streamize_list_zip(arg0, arg1);
  return tmpret140;
} // end-of-function


function
ats2jspre_ML_streamize_list0_cross(arg0, arg1)
{
//
// knd = 0
  var tmpret141
  var tmplab, tmplab_js
//
  // __patsflab_streamize_list0_cross
  tmpret141 = ats2jspre_streamize_list_cross(arg0, arg1);
  return tmpret141;
} // end-of-function


function
ats2jspre_ML_list0_head_exn(arg0)
{
//
// knd = 0
  var tmpret145
  var tmp146
  var tmplab, tmplab_js
//
  // __patsflab_list0_head_exn
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab70
      if(ATSCKptrisnull(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab71
      tmp146 = arg0[0];
      tmpret145 = tmp146;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab72
      case 4: // __atstmplab73
      tmpret145 = ats2jspre_ListSubscriptExn_throw();
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret145;
} // end-of-function


function
ats2jspre_ML_list0_tail_exn(arg0)
{
//
// knd = 0
  var tmpret148
  var tmp150
  var tmplab, tmplab_js
//
  // __patsflab_list0_tail_exn
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab74
      if(ATSCKptrisnull(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab75
      tmp150 = arg0[1];
      tmpret148 = tmp150;
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab76
      case 4: // __atstmplab77
      tmpret148 = ats2jspre_ListSubscriptExn_throw();
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret148;
} // end-of-function


function
ats2jspre_ML_list0_get_at_exn(arg0, arg1)
{
//
// knd = 1
  var apy0
  var apy1
  var tmpret151
  var tmp152
  var tmp153
  var tmp154
  var tmp155
  var funlab_js
  var tmplab, tmplab_js
//
  while(true) {
    funlab_js = 0;
    // __patsflab_list0_get_at_exn
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab78
        if(ATSCKptriscons(arg0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab79
        tmpret151 = ats2jspre_ListSubscriptExn_throw();
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab80
        case 4: // __atstmplab81
        tmp152 = arg0[0];
        tmp153 = arg0[1];
        tmp154 = ats2jspre_gt_int1_int1(arg1, 0);
        if(tmp154) {
          tmp155 = ats2jspre_sub_int1_int1(arg1, 1);
          // ATStailcalseq_beg
          apy0 = tmp153;
          apy1 = tmp155;
          arg0 = apy0;
          arg1 = apy1;
          funlab_js = 1; // __patsflab_list0_get_at_exn
          // ATStailcalseq_end
        } else {
          tmpret151 = tmp152;
        } // end-of-if
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
    if (funlab_js > 0) continue; else return tmpret151;
  } // endwhile-fun
} // end-of-function


function
ats2jspre_ML_list0_insert_at_exn(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret156
  var tmplab, tmplab_js
//
  // __patsflab_list0_insert_at_exn
  tmpret156 = _ats2jspre_ML_list0_aux_81(arg2, arg0, arg1);
  return tmpret156;
} // end-of-function


function
_ats2jspre_ML_list0_aux_81(env0, arg0, arg1)
{
//
// knd = 0
  var tmpret157
  var tmp158
  var tmp159
  var tmp160
  var tmp161
  var tmp162
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_aux_81
  tmp158 = ats2jspre_gt_int1_int1(arg1, 0);
  if(tmp158) {
    // ATScaseofseq_beg
    tmplab_js = 1;
    while(true) {
      tmplab = tmplab_js; tmplab_js = 0;
      switch(tmplab) {
        // ATSbranchseq_beg
        case 1: // __atstmplab82
        if(ATSCKptriscons(arg0)) {
          { tmplab_js = 4; break; }
        } // ifthen
        case 2: // __atstmplab83
        tmpret157 = ats2jspre_ListSubscriptExn_throw();
        break;
        // ATSbranchseq_end
        // ATSbranchseq_beg
        case 3: // __atstmplab84
        case 4: // __atstmplab85
        tmp159 = arg0[0];
        tmp160 = arg0[1];
        tmp162 = ats2jspre_sub_int1_int1(arg1, 1);
        tmp161 = _ats2jspre_ML_list0_aux_81(env0, tmp160, tmp162);
        tmpret157 = [tmp159, tmp161];
        break;
        // ATSbranchseq_end
      } // end-of-switch
      if (tmplab_js === 0) break;
    } // endwhile
    // ATScaseofseq_end
  } else {
    tmpret157 = [env0, arg0];
  } // end-of-if
  return tmpret157;
} // end-of-function


function
ats2jspre_ML_list0_remove_at_exn(arg0, arg1)
{
//
// knd = 0
  var tmpret163
  var tmplab, tmplab_js
//
  // __patsflab_list0_remove_at_exn
  tmpret163 = _ats2jspre_ML_list0_aux_83(arg0, arg1);
  return tmpret163;
} // end-of-function


function
_ats2jspre_ML_list0_aux_83(arg0, arg1)
{
//
// knd = 0
  var tmpret164
  var tmp165
  var tmp166
  var tmp167
  var tmp168
  var tmp169
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_list0_aux_83
  // ATScaseofseq_beg
  tmplab_js = 1;
  while(true) {
    tmplab = tmplab_js; tmplab_js = 0;
    switch(tmplab) {
      // ATSbranchseq_beg
      case 1: // __atstmplab86
      if(ATSCKptriscons(arg0)) {
        { tmplab_js = 4; break; }
      } // ifthen
      case 2: // __atstmplab87
      tmpret164 = ats2jspre_ListSubscriptExn_throw();
      break;
      // ATSbranchseq_end
      // ATSbranchseq_beg
      case 3: // __atstmplab88
      case 4: // __atstmplab89
      tmp165 = arg0[0];
      tmp166 = arg0[1];
      tmp167 = ats2jspre_gt_int1_int1(arg1, 0);
      if(tmp167) {
        tmp169 = ats2jspre_sub_int1_int1(arg1, 1);
        tmp168 = _ats2jspre_ML_list0_aux_83(tmp166, tmp169);
        tmpret164 = [tmp165, tmp168];
      } else {
        tmpret164 = tmp166;
      } // end-of-if
      break;
      // ATSbranchseq_end
    } // end-of-switch
    if (tmplab_js === 0) break;
  } // endwhile
  // ATScaseofseq_end
  return tmpret164;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

/* ****** ****** */

/* end-of-compilation-unit */
/*
**
** The JavaScript code is generated by atscc2js
** The starting compilation time is: 2017-9-16:  8h:43m
**
*/

function
_ats2jspre_ML_array0_patsfun_7__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_array0_patsfun_7(cenv[1], arg0); }, env0];
}


function
_ats2jspre_ML_array0_patsfun_10__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_array0_patsfun_10(cenv[1], arg0); }, env0];
}


function
_ats2jspre_ML_array0_patsfun_14__closurerize(env0)
{
  return [function(cenv, arg0) { return _ats2jspre_ML_array0_patsfun_14(cenv[1], arg0); }, env0];
}


function
ats2jspre_ML_array0_make_elt(arg0, arg1)
{
//
// knd = 0
  var tmpret0
  var tmplab, tmplab_js
//
  // __patsflab_array0_make_elt
  tmpret0 = ats2jspre_arrszref_make_elt(arg0, arg1);
  return tmpret0;
} // end-of-function


function
ats2jspre_ML_array0_size(arg0)
{
//
// knd = 0
  var tmpret1
  var tmplab, tmplab_js
//
  // __patsflab_array0_size
  tmpret1 = ats2jspre_arrszref_size(arg0);
  return tmpret1;
} // end-of-function


function
ats2jspre_ML_array0_get_at(arg0, arg1)
{
//
// knd = 0
  var tmpret2
  var tmplab, tmplab_js
//
  // __patsflab_array0_get_at
  tmpret2 = ats2jspre_arrszref_get_at(arg0, arg1);
  return tmpret2;
} // end-of-function


function
ats2jspre_ML_array0_set_at(arg0, arg1, arg2)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_array0_set_at
  ats2jspre_arrszref_set_at(arg0, arg1, arg2);
  return/*_void*/;
} // end-of-function


function
ats2jspre_ML_array0_exch_at(arg0, arg1, arg2)
{
//
// knd = 0
  var tmpret4
  var tmplab, tmplab_js
//
  // __patsflab_array0_exch_at
  tmpret4 = ats2jspre_arrszref_exch_at(arg0, arg1, arg2);
  return tmpret4;
} // end-of-function


function
ats2jspre_ML_array0_exists_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret5
  var tmplab, tmplab_js
//
  // __patsflab_array0_exists_cloref
  tmpret5 = ats2jspre_arrszref_exists_cloref(arg0, arg1);
  return tmpret5;
} // end-of-function


function
ats2jspre_ML_array0_exists_method(arg0)
{
//
// knd = 0
  var tmpret6
  var tmplab, tmplab_js
//
  // __patsflab_array0_exists_method
  tmpret6 = _ats2jspre_ML_array0_patsfun_7__closurerize(arg0);
  return tmpret6;
} // end-of-function


function
_ats2jspre_ML_array0_patsfun_7(env0, arg0)
{
//
// knd = 0
  var tmpret7
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_array0_patsfun_7
  tmpret7 = ats2jspre_ML_array0_exists_cloref(env0, arg0);
  return tmpret7;
} // end-of-function


function
ats2jspre_ML_array0_forall_cloref(arg0, arg1)
{
//
// knd = 0
  var tmpret8
  var tmplab, tmplab_js
//
  // __patsflab_array0_forall_cloref
  tmpret8 = ats2jspre_arrszref_forall_cloref(arg0, arg1);
  return tmpret8;
} // end-of-function


function
ats2jspre_ML_array0_forall_method(arg0)
{
//
// knd = 0
  var tmpret9
  var tmplab, tmplab_js
//
  // __patsflab_array0_forall_method
  tmpret9 = _ats2jspre_ML_array0_patsfun_10__closurerize(arg0);
  return tmpret9;
} // end-of-function


function
_ats2jspre_ML_array0_patsfun_10(env0, arg0)
{
//
// knd = 0
  var tmpret10
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_array0_patsfun_10
  tmpret10 = ats2jspre_ML_array0_forall_cloref(env0, arg0);
  return tmpret10;
} // end-of-function


function
ats2jspre_ML_array0_app_cloref(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_array0_app_cloref
  ats2jspre_ML_array0_foreach_cloref(arg0, arg1);
  return/*_void*/;
} // end-of-function


function
ats2jspre_ML_array0_foreach_cloref(arg0, arg1)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab_array0_foreach_cloref
  ats2jspre_arrszref_foreach_cloref(arg0, arg1);
  return/*_void*/;
} // end-of-function


function
ats2jspre_ML_array0_foreach_method(arg0)
{
//
// knd = 0
  var tmpret13
  var tmplab, tmplab_js
//
  // __patsflab_array0_foreach_method
  tmpret13 = _ats2jspre_ML_array0_patsfun_14__closurerize(arg0);
  return tmpret13;
} // end-of-function


function
_ats2jspre_ML_array0_patsfun_14(env0, arg0)
{
//
// knd = 0
  var tmplab, tmplab_js
//
  // __patsflab__ats2jspre_ML_array0_patsfun_14
  ats2jspre_ML_array0_foreach_cloref(env0, arg0);
  return/*_void*/;
} // end-of-function


/* ****** ****** */

/* end-of-compilation-unit */

/* ****** ****** */

/* end of [libatscc2js_all.js] */
