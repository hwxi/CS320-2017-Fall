
######
#
# Time of Generation:
# Fri Oct  6 14:34:19 EDT 2017
#
######

######
assign("libatscc2r34.is.loaded", TRUE)
######

############################################
#
# HX-2017-10:
#
# for R code translated from ATS
#
############################################

############################################
#beg of [basics_cats.R]
############################################

assign(
  "libatscc2r34_basics.is.loaded", TRUE
)#assign

############################################

ATSCKiseqz <-
function(x) { return (x == 0) }
ATSCKisneqz <-
function(x) { return (x != 0) }

############################################

ATSCKptrisnull <-
function(xs) { return(is.null(xs)) }
ATSCKptriscons <-
function(xs) { return(!is.null(xs)) }

############################################

ATSCKpat_int <-
function(tmp, given) { return(tmp == given) }
ATSCKpat_bool <-
function(tmp, given) { return(tmp == given) }
ATSCKpat_float <-
function(tmp, given) { return(tmp == given) }
ATSCKpat_string <-
function(tmp, given) { return(tmp == given) }

############################################

ATSCKpat_con0 <-
function(con, tag) { return(con == tag) }
ATSCKpat_con1 <-
function(con, tag) { return(con[[1]] == tag) }

############################################

ATSINScaseof_fail <-
function(errmsg) { stop(errmsg) }

############################################

ATSINSdeadcode_fail <-
function() { stop("ATSINSdeadcode_fail()") }

############################################

ATSPMVempty <-
function() { return(NULL) }

############################################

ATSPMVlazyval <-
function(thunk) { return(list(0, thunk)) }

############################################

ATSPMVlazyval_eval <-
function(lazyval) {
##
##flag, mythunk;
##
  flag = lazyval[[1]];
##
  if(flag==0)
  {
    lazyval[[1]] = 1;
    mythunk = lazyval[[2]];
    lazyval[[2]] = mythunk[[1]](mythunk);
  } else {
    lazyval[[1]] = flag + 1;
  } ## end of [if]
##
  return (lazyval[[2]]);
##
} ## end of [ATSPMVlazyval_eval]

############################################

ATSPMVllazyval <-
function(thunk){ return(thunk) }

ATSPMVllazyval_eval <-
function(llazyval) {
  return(llazyval[[1]](llazyval, TRUE))
} ## end of [ATSPMVllazyval_eval]

atspre_lazy_vt_free <-
function(llazyval) {
  return (llazyval[[1]](llazyval, FALSE))
} ## end of [atspre_lazy_vt_free]

############################################

ats2r34pre_cloref0_app <-
function(cf)
  { return(cf[[1]](cf)); }
ats2r34pre_cloref1_app <-
function(cf, x)
  { return(cf[[1]](cf, x)); }
ats2r34pre_cloref2_app <-
function(cf, x1, x2)
  { return(cf[[1]](cf, x1, x2)); }
ats2r34pre_cloref3_app <-
function(cf, x1, x2, x3)
  { return(cf[[1]](cf, x1, x2, x3)); }

############################################

ats2r34pre_cloref2fun0 <-
function(cf) {
  return(
    function()
      {return(ats2r34pre_cloref0_app(cf))}
  )
}
ats2r34pre_cloref2fun1 <-
function(cf) {
  return(
    function(x)
      {return(ats2r34pre_cloref1_app(cf, x))}
  )
}
ats2r34pre_cloref2fun2 <-
function(cf) {
  return(
    function(x1, x2)
      {return(ats2r34pre_cloref2_app(cf, x1, x2))}
  )
}
ats2r34pre_cloref2fun3 <-
function(cf) {
  return(
    function(x1, x2, x3)
      {return(ats2r34pre_cloref3_app(cf, x1, x2, x3))}
  )
}

############################################

ats2r34pre_assert_errmsg_bool0 <-
function(claim, errmsg) {
  if(!claim) { stop(errmsg) }; return(NULL)
}
ats2r34pre_assert_errmsg_bool1 <-
  ats2r34pre_assert_errmsg_bool0
  
############################################
#end of [basics_cats.R]
############################################
############################################
#
# HX-2017-10:
#
# for R code translated from ATS
#
############################################

############################################
#beg of [integer_cats.R]
############################################

assign(
  "libatscc2r34_integer.is.loaded", TRUE
)#assign

############################################

ats2r34pre_neg_int0 <-
function(x) { return(-x) }
ats2r34pre_abs_int0 <-
function(x) { return(abs(x)) }

ats2r34pre_succ_int0 <-
function(x) { return(x + 1) }
ats2r34pre_pred_int0 <-
function(x) { return(x - 1) }

ats2r34pre_add_int0_int0 <-
function(x,y) { return(x + y) }
ats2r34pre_sub_int0_int0 <-
function(x,y) { return(x - y) }
ats2r34pre_mul_int0_int0 <-
function(x,y) { return(x * y) }
ats2r34pre_mod_int0_int0 <-
function(x,y) { return(x %% y) }
ats2r34pre_div_int0_int0 <-
function(x,y) { return(x %/% y) }

############################################

ats2r34pre_succ_int1 <-
function(x) { return(x + 1) }
ats2r34pre_pred_int1 <-
function(x) { return(x - 1) }

ats2r34pre_add_int1_int1 <-
function(x,y) { return(x + y) }
ats2r34pre_sub_int1_int1 <-
function(x,y) { return(x - y) }
ats2r34pre_mul_int1_int1 <-
function(x,y) { return(x * y) }
ats2r34pre_mod_int1_int1 <-
function(x,y) { return(x %% y) }
ats2r34pre_div_int1_int1 <-
function(x,y) { return(x %/% y) }

ats2r34pre_nmod_int1_int1 <-
function(x,y) { return(x %% y) }

############################################
  
ats2r34pre_lt_int0_int0 <-
function(x,y) { return(x < y) }
ats2r34pre_lte_int0_int0 <-
function(x,y) { return(x <= y) }

ats2r34pre_gt_int0_int0 <-
function(x,y) { return(x > y) }
ats2r34pre_gte_int0_int0 <-
function(x,y) { return(x >= y) }

ats2r34pre_eq_int0_int0 <-
function(x,y) { return(x == y) }
ats2r34pre_neq_int0_int0 <-
function(x,y) { return(x != y) }

############################################

ats2r34pre_lt_int1_int1 <-
function(x,y) { return(x < y) }
ats2r34pre_lte_int1_int1 <-
function(x,y) { return(x <= y) }

ats2r34pre_gt_int1_int1 <-
function(x,y) { return(x > y) }
ats2r34pre_gte_int1_int1 <-
function(x,y) { return(x >= y) }

ats2r34pre_eq_int1_int1 <-
function(x,y) { return(x == y) }
ats2r34pre_neq_int1_int1 <-
function(x,y) { return(x != y) }

############################################
  
############################################
#end of [integer_cats.R]
############################################
############################################
#
# HX-2017-10:
#
# for R code translated from ATS
#
############################################

############################################
#beg of [bool_cats.R]
############################################

assign(
  "libatscc2r34_bool.is.loaded", TRUE
)#assign

############################################

ats2r34pre_int2bool0 <-
function(x) { return(x != 0) }
ats2r34pre_int2bool1 <-
function(x) { return(x != 0) }

############################################

ats2r34pre_bool2int0 <-
function(x) { return(if(x) 1 else 0) }
ats2r34pre_bool2int1 <-
function(x) { return(if(x) 1 else 0) }

############################################

ats2r34pre_neg_bool0 <-
  function(x) { return(!x) }
ats2r34pre_neg_bool1 <-
  function(x) { return(!x) }

############################################

ats2r34pre_add_bool0_bool0 <-
  function(x, y) { return (x || y) }
ats2r34pre_add_bool0_bool1 <-
  function(x, y) { return (x || y) }
ats2r34pre_add_bool1_bool0 <-
  function(x, y) { return (x || y) }
ats2r34pre_add_bool1_bool1 <-
  function(x, y) { return (x || y) }

############################################

ats2r34pre_mul_bool0_bool0 <-
  function(x, y) { return (x && y) }
ats2r34pre_mul_bool0_bool1 <-
  function(x, y) { return (x && y) }
ats2r34pre_mul_bool1_bool0 <-
  function(x, y) { return (x && y) }
ats2r34pre_mul_bool1_bool1 <-
  function(x, y) { return (x && y) }

############################################

############################################
#end of [bool_cats.R]
############################################
############################################
#
# HX-2017-10:
#
# for R code translated from ATS
#
############################################

############################################
#beg of [float_cats.R]
############################################

assign(
  "libatscc2r34_float.is.loaded", TRUE
)#assign

############################################

ats2r34pre_neg_double <-
function(x) { return( -x ) }
ats2r34pre_abs_double <-
function(x) { return(abs(x)) }

############################################

ats2r34pre_succ_double <-
function(x) { return(x + 1) }
ats2r34pre_pred_double <-
function(x) { return(x - 1) }

############################################

ats2r34pre_sqrt_double <-
function(x) { return(sqrt(x)) }

############################################

ats2r34pre_add_int_double <-
function(x,y) { return(x + y) }
ats2r34pre_add_double_int <-
function(x,y) { return(x + y) }

ats2r34pre_sub_int_double <-
function(x,y) { return(x - y) }
ats2r34pre_sub_double_int <-
function(x,y) { return(x - y) }

ats2r34pre_mul_int_double <-
function(x,y) { return(x * y) }
ats2r34pre_mul_double_int <-
function(x,y) { return(x * y) }

ats2r34pre_div_int_double <-
function(x,y) { return(x / y) }
ats2r34pre_div_double_int <-
function(x,y) { return(x / y) }

############################################

ats2r34pre_add_double_double <-
function(x,y) { return(x + y) }

ats2r34pre_sub_double_double <-
function(x,y) { return(x - y) }

ats2r34pre_mul_double_double <-
function(x,y) { return(x * y) }

ats2r34pre_div_double_double <-
function(x,y) { return(x / y) }

############################################

ats2r34pre_lt_int_double <-
function(x,y) { return(x < y) }
ats2r34pre_lt_double_int <-
function(x,y) { return(x < y) }

ats2r34pre_lte_int_double <-
function(x,y) { return(x <= y) }
ats2r34pre_lte_double_int <-
function(x,y) { return(x <= y) }

ats2r34pre_gt_int_double <-
function(x,y) { return(x > y) }
ats2r34pre_gt_double_int <-
function(x,y) { return(x > y) }

ats2r34pre_gte_int_double <-
function(x,y) { return(x >= y) }
ats2r34pre_gte_double_int <-
function(x,y) { return(x >= y) }

ats2r34pre_eq_int_double <-
function(x,y) { return(x == y) }
ats2r34pre_eq_double_int <-
function(x,y) { return(x == y) }

ats2r34pre_neq_int_double <-
function(x,y) { return(x != y) }
ats2r34pre_neq_double_int <-
function(x,y) { return(x != y) }

############################################

ats2r34pre_lt_double_double <-
function(x,y) { return(x < y) }
ats2r34pre_lte_double_double <-
function(x,y) { return(x <= y) }

ats2r34pre_gt_double_double <-
function(x,y) { return(x > y) }
ats2r34pre_gte_double_double <-
function(x,y) { return(x >= y) }

ats2r34pre_eq_double_double <-
function(x,y) { return(x == y) }
ats2r34pre_neq_double_double <-
function(x,y) { return(x != y) }

############################################
##
ats2r34pre_print_int <-
  function(x) { return(cat(x)) }
ats2r34pre_print_double <-
  function(x) { return(cat(x)) }
ats2r34pre_print_string <-
  function(x) { return(cat(x)) }
##
ats2r34pre_print_newline <-
function() {
  cat("\n"); utils::flush.console(); return(NULL)
} ## ats2r34pre_print_newline
##
############################################

############################################
#end of [float_cats.R]
############################################
############################################
#
# HX-2017-10:
#
# for R code translated from ATS
#
############################################

############################################
#beg of [R34vector_cats.R]
############################################

assign(
  "libatscc2r34_R34vector.is.loaded", TRUE
)#assign

############################################

ats2r34pre_R34vector_length <-
function(xs) { return(length(xs)) }

############################################
#
ats2r34pre_R34vector_get_at <-
function(xs, i) { return(xs[[i]]) }
#
# HX-2017-10-03:
# No call-by-reference in R!!!
#
# ats2r34pre_R34vector_set_at <-
# function(xs, i, x0) { xs[[i]] <- x0; return(NULL) }
#
############################################

ats2r34pre_R34vector_match <-
function(x, xs) {
  return(match(x, xs, nomatch=0))
} ## ats2r34pre_R34vector_match

############################################

ats2r34pre_R34vector_map_fun <-
function(xs, fopr)
{
  n0 = length(xs)
  if (n0 == 0) return(c())
  y1 = fopr(xs[[1]]); ys = rep(y1, n0)
  if (n0 >= 2)
  {
    for (i in 2:n0) ys[[i]]<-fopr(xs[[i]])
  } ; return(ys)
} ## ats2r34pre_R34vector_map_fun

############################################

ats2r34pre_R34vector_tabulate_fun <-
function(n0, fopr)
{
  if (n0 == 0) return(c())
  x1 = fopr(0); xs = rep(x1, n0)
  if (n0 >= 2)
  {
    for (i in 2:n0) { xs[[i]] <- fopr(i-1) }
  } ; return(xs)
} ## ats2r34pre_R34vector_tabulate_fun

############################################
#end of [R34vector_cats.R]
############################################
############################################
#
# HX-2017-10:
#
# for R code translated from ATS
#
############################################

############################################
#beg of [R34dframe_cats.R]
############################################

assign(
  "libatscc2r34_R34dframe.is.loaded", TRUE
)#assign

############################################

ats2r34pre_R34dframe_nrow <-
  function(xss) { return(nrow(xss)) }
ats2r34pre_R34dframe_ncol <-
  function(xss) { return(ncol(xss)) }

############################################

ats2r34pre_R34dframe_names <-
  function(xss) { return(names(xss)) }

############################################

ats2r34pre_R34dframe_getcol_at <-
function(xss, jcol) { return(xss[[jcol]]) }
ats2r34pre_R34dframe_getcol_by <-
function(xss, name) { return(xss[[name]]) }

############################################
#end of [R34dframe_cats.R]
############################################
############################################
#
# HX-2017-10:
#
# for R code translated from ATS
#
############################################

############################################
#beg of [R34matrix_cats.R]
############################################

assign(
  "libatscc2r34_R34matrix.is.loaded", TRUE
)#assign

############################################

ats2r34pre_R34matrix_ncol <-
function(xss) { return(ncol(xss)) }
ats2r34pre_R34matrix_nrow <-
function(xss) { return(nrow(xss)) }

############################################
#
ats2r34pre_R34matrix_get_at <-
function(xss, i, j) { return(xss[[i,j]]) }
#
# HX-2017-10-03:
# No call-by-reference in R!!!
#
# ats2r34pre_R34matrix_set_at <-
# function(xss, i, j, x0) { xss[[i,j]] <- x0; return(NULL) }
#
############################################
#
ats2r34pre_R34vector_transpose <-
  function(xs) { return(t(xs)) }
ats2r34pre_R34matrix_transpose <-
  function(xss) { return(t(xss)) }
#
############################################
ats2r34pre_cbind_R34vector_R34vector <-
  function(xs, ys) { return(cbind(xs, ys)) }
ats2r34pre_cbind_R34vector_R34matrix <-
  function(xs, yss) { return(cbind(xs, yss)) }
ats2r34pre_cbind_R34matrix_R34vector <-
  function(xss, ys) { return(cbind(xss, ys)) }
ats2r34pre_cbind_R34matrix_R34matrix <-
  function(xss, yss) { return(cbind(xss, yss)) }

############################################

ats2r34pre_rbind_R34vector_R34vector <-
  function(xs, ys) { return(rbind(xs, ys)) }
ats2r34pre_rbind_R34vector_R34matrix <-
  function(xs, yss) { return(rbind(xs, yss)) }
ats2r34pre_rbind_R34matrix_R34vector <-
  function(xss, ys) { return(rbind(xss, ys)) }
ats2r34pre_rbind_R34matrix_R34matrix <-
  function(xss, yss) { return(rbind(xss, yss)) }

############################################

ats2r34pre_R34matrix_tabulate_fun <-
function(m0, n0, fopr)
{
  x1 = fopr(0, 0);
  xs = rep(x1, m0*n0)
  {
    if (n0 >= 2)
    {
      for (j in 2:n0)
      {
        xs[[j]] <- fopr(0, j-1)
      }
    }
    if (m0 >= 2)
    {
      for (i in 2:m0)
      for (j in 1:n0)
      {
        xs[[(i-1)*n0+j]] <= fopr(i-1, j-1)
      }
    }
  } ; return(matrix(xs, nrow=m0, ncol=n0))
} ## ats2r34pre_R34matrix_tabulate_fun

############################################
#end of [R34matrix_cats.R]
############################################
##
##
## The R(stat) code is generated by atscc2r34
## The starting compilation time is: 2017-10-6: 14h:33m
##
##

##defun
R_ats2r34pre_list_patsfun_37__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_37(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_list_patsfun_41__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_41(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_list_patsfun_44__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_44(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_list_patsfun_48__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_48(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_list_patsfun_52__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_52(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_list_patsfun_56__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_56(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_list_patsfun_59__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_59(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_list_patsfun_63__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_63(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_list_patsfun_65__closurerize <-
function()
{
  return(list(function(cenv, arg0, arg1) { return(R_ats2r34pre_list_patsfun_65(arg0, arg1)); }));
}


##defun
R_ats2r34pre_list_patsfun_69__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_69(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_list_patsfun_73__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_73(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_list_patsfun_78__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_78(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_list_patsfun_82__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_82(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_list_patsfun_86__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_86(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_list_patsfun_90__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_90(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_list_patsfun_98__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_98(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_list_patsfun_101__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_101(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_list_patsfun_104__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_104(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_list_patsfun_106__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_list_patsfun_106(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
ats2r34pre_list_make_elt <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret2 <- NULL
  ## tmp7 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_make_elt
  tmp7 <- NULL;
  tmpret2 <- R_ats2r34pre_list_loop_3(arg1, arg0, tmp7);
  return(tmpret2);
} ## end-of-function


##defun
R_ats2r34pre_list_loop_3 <- 
function(env0, arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret3 <- NULL
  ## tmp4 <- NULL
  ## tmp5 <- NULL
  ## tmp6 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_list_loop_3
    tmp4 <- ats2r34pre_gt_int1_int1(arg0, 0);
    if(tmp4) {
      tmp5 <- ats2r34pre_sub_int1_int1(arg0, 1);
      tmp6 <- list(env0, arg1);
      ## ATStailcalseq_beg
      apy0 <- tmp5;
      apy1 <- tmp6;
      arg0 <- apy0;
      arg1 <- apy1;
      funlab_r34 <- 1; ## __patsflab__ats2r34pre_list_loop_3
      ## ATStailcalseq_end
    } else {
      tmpret3 <- arg1;
    } ## end-of-if
    if (funlab_r34 > 0) next else return(tmpret3);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_make_intrange_2 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret8 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_make_intrange_2
  tmpret8 <- ats2r34pre_list_make_intrange_3(arg0, arg1, 1);
  return(tmpret8);
} ## end-of-function


##defun
ats2r34pre_list_make_intrange_3 <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret9 <- NULL
  ## tmp20 <- NULL
  ## tmp21 <- NULL
  ## tmp22 <- NULL
  ## tmp23 <- NULL
  ## tmp24 <- NULL
  ## tmp25 <- NULL
  ## tmp26 <- NULL
  ## tmp27 <- NULL
  ## tmp28 <- NULL
  ## tmp29 <- NULL
  ## tmp30 <- NULL
  ## tmp31 <- NULL
  ## tmp32 <- NULL
  ## tmp33 <- NULL
  ## tmp34 <- NULL
  ## tmp35 <- NULL
  ## tmp36 <- NULL
  ## tmp37 <- NULL
  ## tmp38 <- NULL
  ## tmp39 <- NULL
  ## tmp40 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_make_intrange_3
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab6
      while(TRUE)
      {
      tmp20 <- ats2r34pre_gt_int0_int0(arg2, 0);
      if(!ATSCKpat_bool(tmp20, TRUE)) {
        { tmplab_r34 <- 2; break; }
      } ## ifnthen
      tmp21 <- ats2r34pre_lt_int0_int0(arg0, arg1);
      if(tmp21) {
        tmp25 <- ats2r34pre_sub_int0_int0(arg1, arg0);
        tmp24 <- ats2r34pre_add_int0_int0(tmp25, arg2);
        tmp23 <- ats2r34pre_sub_int0_int0(tmp24, 1);
        tmp22 <- ats2r34pre_div_int0_int0(tmp23, arg2);
        tmp28 <- ats2r34pre_sub_int0_int0(tmp22, 1);
        tmp27 <- ats2r34pre_mul_int0_int0(tmp28, arg2);
        tmp26 <- ats2r34pre_add_int0_int0(arg0, tmp27);
        tmp29 <- NULL;
        tmpret9 <- R_ats2r34pre_list_loop1_6(tmp22, tmp26, arg2, tmp29);
      } else {
        tmpret9 <- NULL;
      } ## end-of-if
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case2={ ##__atstmplab7
      while(TRUE)
      {
      tmp30 <- ats2r34pre_lt_int0_int0(arg2, 0);
      if(!ATSCKpat_bool(tmp30, TRUE)) {
        { tmplab_r34 <- 3; break; }
      } ## ifnthen
      tmp31 <- ats2r34pre_gt_int0_int0(arg0, arg1);
      if(tmp31) {
        tmp32 <- ats2r34pre_neg_int0(arg2);
        tmp36 <- ats2r34pre_sub_int0_int0(arg0, arg1);
        tmp35 <- ats2r34pre_add_int0_int0(tmp36, tmp32);
        tmp34 <- ats2r34pre_sub_int0_int0(tmp35, 1);
        tmp33 <- ats2r34pre_div_int0_int0(tmp34, tmp32);
        tmp39 <- ats2r34pre_sub_int0_int0(tmp33, 1);
        tmp38 <- ats2r34pre_mul_int0_int0(tmp39, tmp32);
        tmp37 <- ats2r34pre_sub_int0_int0(arg0, tmp38);
        tmp40 <- NULL;
        tmpret9 <- R_ats2r34pre_list_loop2_7(tmp33, tmp37, tmp32, tmp40);
      } else {
        tmpret9 <- NULL;
      } ## end-of-if
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab8
      while(TRUE)
      {
      tmpret9 <- NULL;
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret9);
} ## end-of-function


##defun
R_ats2r34pre_list_loop1_6 <- 
function(arg0, arg1, arg2, arg3)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## apy2 <- NULL
  ## apy3 <- NULL
  tmpret10 <- NULL
  ## tmp11 <- NULL
  ## tmp12 <- NULL
  ## tmp13 <- NULL
  ## tmp14 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_list_loop1_6
    tmp11 <- ats2r34pre_gt_int0_int0(arg0, 0);
    if(tmp11) {
      tmp12 <- ats2r34pre_sub_int0_int0(arg0, 1);
      tmp13 <- ats2r34pre_sub_int0_int0(arg1, arg2);
      tmp14 <- list(arg1, arg3);
      ## ATStailcalseq_beg
      apy0 <- tmp12;
      apy1 <- tmp13;
      apy2 <- arg2;
      apy3 <- tmp14;
      arg0 <- apy0;
      arg1 <- apy1;
      arg2 <- apy2;
      arg3 <- apy3;
      funlab_r34 <- 1; ## __patsflab__ats2r34pre_list_loop1_6
      ## ATStailcalseq_end
    } else {
      tmpret10 <- arg3;
    } ## end-of-if
    if (funlab_r34 > 0) next else return(tmpret10);
  } ## endwhile-fun
} ## end-of-function


##defun
R_ats2r34pre_list_loop2_7 <- 
function(arg0, arg1, arg2, arg3)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## apy2 <- NULL
  ## apy3 <- NULL
  tmpret15 <- NULL
  ## tmp16 <- NULL
  ## tmp17 <- NULL
  ## tmp18 <- NULL
  ## tmp19 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_list_loop2_7
    tmp16 <- ats2r34pre_gt_int0_int0(arg0, 0);
    if(tmp16) {
      tmp17 <- ats2r34pre_sub_int0_int0(arg0, 1);
      tmp18 <- ats2r34pre_add_int0_int0(arg1, arg2);
      tmp19 <- list(arg1, arg3);
      ## ATStailcalseq_beg
      apy0 <- tmp17;
      apy1 <- tmp18;
      apy2 <- arg2;
      apy3 <- tmp19;
      arg0 <- apy0;
      arg1 <- apy1;
      arg2 <- apy2;
      arg3 <- apy3;
      funlab_r34 <- 1; ## __patsflab__ats2r34pre_list_loop2_7
      ## ATStailcalseq_end
    } else {
      tmpret15 <- arg3;
    } ## end-of-if
    if (funlab_r34 > 0) next else return(tmpret15);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_length <- 
function(arg0)
{
##
## knd = 0
  tmpret52 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_length
  tmpret52 <- R_ats2r34pre_list_loop_14(arg0, 0);
  return(tmpret52);
} ## end-of-function


##defun
R_ats2r34pre_list_loop_14 <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret53 <- NULL
  ## tmp55 <- NULL
  ## tmp56 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_list_loop_14
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab13
        while(TRUE)
        {
        if(ATSCKptriscons(arg0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab14
        while(TRUE)
        {
        tmpret53 <- arg1;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab15
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab16
        while(TRUE)
        {
        tmp55 <- arg0[[2]];
        tmp56 <- ats2r34pre_add_int1_int1(arg1, 1);
        ## ATStailcalseq_beg
        apy0 <- tmp55;
        apy1 <- tmp56;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_list_loop_14
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret53);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_head <- 
function(arg0)
{
##
## knd = 0
  tmpret57 <- NULL
  ## tmp58 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_head
  tmp58 <- arg0[[1]];
  tmpret57 <- tmp58;
  return(tmpret57);
} ## end-of-function


##defun
ats2r34pre_list_tail <- 
function(arg0)
{
##
## knd = 0
  tmpret59 <- NULL
  ## tmp60 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_tail
  tmp60 <- arg0[[2]];
  tmpret59 <- tmp60;
  return(tmpret59);
} ## end-of-function


##defun
ats2r34pre_list_last <- 
function(arg0)
{
##
## knd = 1
  ## apy0 <- NULL
  tmpret61 <- NULL
  ## tmp62 <- NULL
  ## tmp63 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_list_last
    tmp62 <- arg0[[1]];
    tmp63 <- arg0[[2]];
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab17
        while(TRUE)
        {
        if(ATSCKptriscons(tmp63)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab18
        while(TRUE)
        {
        tmpret61 <- tmp62;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab19
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab20
        while(TRUE)
        {
        ## ATStailcalseq_beg
        apy0 <- tmp63;
        arg0 <- apy0;
        funlab_r34 <- 1; ## __patsflab_list_last
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret61);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_get_at <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret64 <- NULL
  ## tmp65 <- NULL
  ## tmp66 <- NULL
  ## tmp67 <- NULL
  ## tmp68 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_list_get_at
    tmp65 <- ats2r34pre_eq_int1_int1(arg1, 0);
    if(tmp65) {
      tmp66 <- arg0[[1]];
      tmpret64 <- tmp66;
    } else {
      tmp67 <- arg0[[2]];
      tmp68 <- ats2r34pre_sub_int1_int1(arg1, 1);
      ## ATStailcalseq_beg
      apy0 <- tmp67;
      apy1 <- tmp68;
      arg0 <- apy0;
      arg1 <- apy1;
      funlab_r34 <- 1; ## __patsflab_list_get_at
      ## ATStailcalseq_end
    } ## end-of-if
    if (funlab_r34 > 0) next else return(tmpret64);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_snoc <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret69 <- NULL
  ## tmp70 <- NULL
  ## tmp71 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_snoc
  tmp71 <- NULL;
  tmp70 <- list(arg1, tmp71);
  tmpret69 <- ats2r34pre_list_append(arg0, tmp70);
  return(tmpret69);
} ## end-of-function


##defun
ats2r34pre_list_extend <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret72 <- NULL
  ## tmp73 <- NULL
  ## tmp74 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_extend
  tmp74 <- NULL;
  tmp73 <- list(arg1, tmp74);
  tmpret72 <- ats2r34pre_list_append(arg0, tmp73);
  return(tmpret72);
} ## end-of-function


##defun
ats2r34pre_list_append <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret75 <- NULL
  ## tmp76 <- NULL
  ## tmp77 <- NULL
  ## tmp78 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_append
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab21
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab22
      while(TRUE)
      {
      tmpret75 <- arg1;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab23
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab24
      while(TRUE)
      {
      tmp76 <- arg0[[1]];
      tmp77 <- arg0[[2]];
      tmp78 <- ats2r34pre_list_append(tmp77, arg1);
      tmpret75 <- list(tmp76, tmp78);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret75);
} ## end-of-function


##defun
ats2r34pre_mul_int_list <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret79 <- NULL
  ## tmp84 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_mul_int_list
  tmp84 <- NULL;
  tmpret79 <- R_ats2r34pre_list_loop_23(arg1, arg0, tmp84);
  return(tmpret79);
} ## end-of-function


##defun
R_ats2r34pre_list_loop_23 <- 
function(env0, arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret80 <- NULL
  ## tmp81 <- NULL
  ## tmp82 <- NULL
  ## tmp83 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_list_loop_23
    tmp81 <- ats2r34pre_gt_int1_int1(arg0, 0);
    if(tmp81) {
      tmp82 <- ats2r34pre_sub_int1_int1(arg0, 1);
      tmp83 <- ats2r34pre_list_append(env0, arg1);
      ## ATStailcalseq_beg
      apy0 <- tmp82;
      apy1 <- tmp83;
      arg0 <- apy0;
      arg1 <- apy1;
      funlab_r34 <- 1; ## __patsflab__ats2r34pre_list_loop_23
      ## ATStailcalseq_end
    } else {
      tmpret80 <- arg1;
    } ## end-of-if
    if (funlab_r34 > 0) next else return(tmpret80);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_reverse <- 
function(arg0)
{
##
## knd = 0
  tmpret85 <- NULL
  ## tmp86 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_reverse
  tmp86 <- NULL;
  tmpret85 <- ats2r34pre_list_reverse_append(arg0, tmp86);
  return(tmpret85);
} ## end-of-function


##defun
ats2r34pre_list_reverse_append <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret87 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_reverse_append
  tmpret87 <- R_ats2r34pre_list_loop_26(arg0, arg1);
  return(tmpret87);
} ## end-of-function


##defun
R_ats2r34pre_list_loop_26 <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret88 <- NULL
  ## tmp89 <- NULL
  ## tmp90 <- NULL
  ## tmp91 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_list_loop_26
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab25
        while(TRUE)
        {
        if(ATSCKptriscons(arg0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab26
        while(TRUE)
        {
        tmpret88 <- arg1;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab27
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab28
        while(TRUE)
        {
        tmp89 <- arg0[[1]];
        tmp90 <- arg0[[2]];
        tmp91 <- list(tmp89, arg1);
        ## ATStailcalseq_beg
        apy0 <- tmp90;
        apy1 <- tmp91;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_list_loop_26
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret88);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_concat <- 
function(arg0)
{
##
## knd = 0
  tmpret92 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_concat
  tmpret92 <- R_ats2r34pre_list_auxlst_28(arg0);
  return(tmpret92);
} ## end-of-function


##defun
R_ats2r34pre_list_auxlst_28 <- 
function(arg0)
{
##
## knd = 0
  tmpret93 <- NULL
  ## tmp94 <- NULL
  ## tmp95 <- NULL
  ## tmp96 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_auxlst_28
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab29
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab30
      while(TRUE)
      {
      tmpret93 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab31
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab32
      while(TRUE)
      {
      tmp94 <- arg0[[1]];
      tmp95 <- arg0[[2]];
      tmp96 <- R_ats2r34pre_list_auxlst_28(tmp95);
      tmpret93 <- ats2r34pre_list_append(tmp94, tmp96);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret93);
} ## end-of-function


##defun
ats2r34pre_list_take <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret97 <- NULL
  ## tmp98 <- NULL
  ## tmp99 <- NULL
  ## tmp100 <- NULL
  ## tmp101 <- NULL
  ## tmp102 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_take
  tmp98 <- ats2r34pre_gt_int1_int1(arg1, 0);
  if(tmp98) {
    tmp99 <- arg0[[1]];
    tmp100 <- arg0[[2]];
    tmp102 <- ats2r34pre_sub_int1_int1(arg1, 1);
    tmp101 <- ats2r34pre_list_take(tmp100, tmp102);
    tmpret97 <- list(tmp99, tmp101);
  } else {
    tmpret97 <- NULL;
  } ## end-of-if
  return(tmpret97);
} ## end-of-function


##defun
ats2r34pre_list_drop <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret103 <- NULL
  ## tmp104 <- NULL
  ## tmp105 <- NULL
  ## tmp106 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_list_drop
    tmp104 <- ats2r34pre_gt_int1_int1(arg1, 0);
    if(tmp104) {
      tmp105 <- arg0[[2]];
      tmp106 <- ats2r34pre_sub_int1_int1(arg1, 1);
      ## ATStailcalseq_beg
      apy0 <- tmp105;
      apy1 <- tmp106;
      arg0 <- apy0;
      arg1 <- apy1;
      funlab_r34 <- 1; ## __patsflab_list_drop
      ## ATStailcalseq_end
    } else {
      tmpret103 <- arg0;
    } ## end-of-if
    if (funlab_r34 > 0) next else return(tmpret103);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_split_at <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret107 <- NULL
  ## tmp108 <- NULL
  ## tmp109 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_split_at
  tmp108 <- ats2r34pre_list_take(arg0, arg1);
  tmp109 <- ats2r34pre_list_drop(arg0, arg1);
  tmpret107 <- list(tmp108, tmp109);
  return(tmpret107);
} ## end-of-function


##defun
ats2r34pre_list_insert_at <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret110 <- NULL
  ## tmp111 <- NULL
  ## tmp112 <- NULL
  ## tmp113 <- NULL
  ## tmp114 <- NULL
  ## tmp115 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_insert_at
  tmp111 <- ats2r34pre_gt_int1_int1(arg1, 0);
  if(tmp111) {
    tmp112 <- arg0[[1]];
    tmp113 <- arg0[[2]];
    tmp115 <- ats2r34pre_sub_int1_int1(arg1, 1);
    tmp114 <- ats2r34pre_list_insert_at(tmp113, tmp115, arg2);
    tmpret110 <- list(tmp112, tmp114);
  } else {
    tmpret110 <- list(arg2, arg0);
  } ## end-of-if
  return(tmpret110);
} ## end-of-function


##defun
ats2r34pre_list_remove_at <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret116 <- NULL
  ## tmp117 <- NULL
  ## tmp118 <- NULL
  ## tmp119 <- NULL
  ## tmp120 <- NULL
  ## tmp121 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_remove_at
  tmp117 <- arg0[[1]];
  tmp118 <- arg0[[2]];
  tmp119 <- ats2r34pre_gt_int1_int1(arg1, 0);
  if(tmp119) {
    tmp121 <- ats2r34pre_sub_int1_int1(arg1, 1);
    tmp120 <- ats2r34pre_list_remove_at(tmp118, tmp121);
    tmpret116 <- list(tmp117, tmp120);
  } else {
    tmpret116 <- tmp118;
  } ## end-of-if
  return(tmpret116);
} ## end-of-function


##defun
ats2r34pre_list_takeout_at <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret122 <- NULL
  ## tmp123 <- NULL
  ## tmp124 <- NULL
  ## tmp125 <- NULL
  ## tmp126 <- NULL
  ## tmp127 <- NULL
  ## tmp128 <- NULL
  ## tmp129 <- NULL
  ## tmp130 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_takeout_at
  tmp123 <- arg0[[1]];
  tmp124 <- arg0[[2]];
  tmp125 <- ats2r34pre_gt_int1_int1(arg1, 0);
  if(tmp125) {
    tmp127 <- ats2r34pre_sub_int1_int1(arg1, 1);
    tmp126 <- ats2r34pre_list_takeout_at(tmp124, tmp127);
    tmp128 <- tmp126[[1]];
    tmp129 <- tmp126[[2]];
    tmp130 <- list(tmp123, tmp129);
    tmpret122 <- list(tmp128, tmp130);
  } else {
    tmpret122 <- list(tmp123, tmp124);
  } ## end-of-if
  return(tmpret122);
} ## end-of-function


##defun
ats2r34pre_list_exists <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret131 <- NULL
  ## tmp132 <- NULL
  ## tmp133 <- NULL
  ## tmp134 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_list_exists
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab33
        while(TRUE)
        {
        if(ATSCKptriscons(arg0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab34
        while(TRUE)
        {
        tmpret131 <- FALSE;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab35
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab36
        while(TRUE)
        {
        tmp132 <- arg0[[1]];
        tmp133 <- arg0[[2]];
        tmp134 <- arg1[[1]](arg1, tmp132);
        if(tmp134) {
          tmpret131 <- TRUE;
        } else {
          ## ATStailcalseq_beg
          apy0 <- tmp133;
          apy1 <- arg1;
          arg0 <- apy0;
          arg1 <- apy1;
          funlab_r34 <- 1; ## __patsflab_list_exists
          ## ATStailcalseq_end
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret131);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_exists_method <- 
function(arg0)
{
##
## knd = 0
  tmpret135 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_exists_method
  tmpret135 <- R_ats2r34pre_list_patsfun_37__closurerize(arg0);
  return(tmpret135);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_37 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret136 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_37
  tmpret136 <- ats2r34pre_list_exists(env0, arg0);
  return(tmpret136);
} ## end-of-function


##defun
ats2r34pre_list_iexists <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret137 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_iexists
  tmpret137 <- R_ats2r34pre_list_loop_39(arg1, 0, arg0);
  return(tmpret137);
} ## end-of-function


##defun
R_ats2r34pre_list_loop_39 <- 
function(env0, arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret138 <- NULL
  ## tmp139 <- NULL
  ## tmp140 <- NULL
  ## tmp141 <- NULL
  ## tmp142 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_list_loop_39
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab37
        while(TRUE)
        {
        if(ATSCKptriscons(arg1)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab38
        while(TRUE)
        {
        tmpret138 <- FALSE;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab39
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab40
        while(TRUE)
        {
        tmp139 <- arg1[[1]];
        tmp140 <- arg1[[2]];
        tmp141 <- env0[[1]](env0, arg0, tmp139);
        if(tmp141) {
          tmpret138 <- TRUE;
        } else {
          tmp142 <- ats2r34pre_add_int1_int1(arg0, 1);
          ## ATStailcalseq_beg
          apy0 <- tmp142;
          apy1 <- tmp140;
          arg0 <- apy0;
          arg1 <- apy1;
          funlab_r34 <- 1; ## __patsflab__ats2r34pre_list_loop_39
          ## ATStailcalseq_end
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret138);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_iexists_method <- 
function(arg0)
{
##
## knd = 0
  tmpret143 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_iexists_method
  tmpret143 <- R_ats2r34pre_list_patsfun_41__closurerize(arg0);
  return(tmpret143);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_41 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret144 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_41
  tmpret144 <- ats2r34pre_list_iexists(env0, arg0);
  return(tmpret144);
} ## end-of-function


##defun
ats2r34pre_list_forall <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret145 <- NULL
  ## tmp146 <- NULL
  ## tmp147 <- NULL
  ## tmp148 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_list_forall
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab41
        while(TRUE)
        {
        if(ATSCKptriscons(arg0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab42
        while(TRUE)
        {
        tmpret145 <- TRUE;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab43
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab44
        while(TRUE)
        {
        tmp146 <- arg0[[1]];
        tmp147 <- arg0[[2]];
        tmp148 <- arg1[[1]](arg1, tmp146);
        if(tmp148) {
          ## ATStailcalseq_beg
          apy0 <- tmp147;
          apy1 <- arg1;
          arg0 <- apy0;
          arg1 <- apy1;
          funlab_r34 <- 1; ## __patsflab_list_forall
          ## ATStailcalseq_end
        } else {
          tmpret145 <- FALSE;
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret145);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_forall_method <- 
function(arg0)
{
##
## knd = 0
  tmpret149 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_forall_method
  tmpret149 <- R_ats2r34pre_list_patsfun_44__closurerize(arg0);
  return(tmpret149);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_44 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret150 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_44
  tmpret150 <- ats2r34pre_list_forall(env0, arg0);
  return(tmpret150);
} ## end-of-function


##defun
ats2r34pre_list_iforall <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret151 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_iforall
  tmpret151 <- R_ats2r34pre_list_loop_46(arg1, 0, arg0);
  return(tmpret151);
} ## end-of-function


##defun
R_ats2r34pre_list_loop_46 <- 
function(env0, arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret152 <- NULL
  ## tmp153 <- NULL
  ## tmp154 <- NULL
  ## tmp155 <- NULL
  ## tmp156 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_list_loop_46
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab45
        while(TRUE)
        {
        if(ATSCKptriscons(arg1)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab46
        while(TRUE)
        {
        tmpret152 <- TRUE;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab47
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab48
        while(TRUE)
        {
        tmp153 <- arg1[[1]];
        tmp154 <- arg1[[2]];
        tmp155 <- env0[[1]](env0, arg0, tmp153);
        if(tmp155) {
          tmp156 <- ats2r34pre_add_int1_int1(arg0, 1);
          ## ATStailcalseq_beg
          apy0 <- tmp156;
          apy1 <- tmp154;
          arg0 <- apy0;
          arg1 <- apy1;
          funlab_r34 <- 1; ## __patsflab__ats2r34pre_list_loop_46
          ## ATStailcalseq_end
        } else {
          tmpret152 <- FALSE;
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret152);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_iforall_method <- 
function(arg0)
{
##
## knd = 0
  tmpret157 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_iforall_method
  tmpret157 <- R_ats2r34pre_list_patsfun_48__closurerize(arg0);
  return(tmpret157);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_48 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret158 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_48
  tmpret158 <- ats2r34pre_list_iforall(env0, arg0);
  return(tmpret158);
} ## end-of-function


##defun
ats2r34pre_list_app <- 
function(arg0, arg1)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_app
  ats2r34pre_list_foreach(arg0, arg1);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_list_foreach <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## tmp161 <- NULL
  ## tmp162 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_list_foreach
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab49
        while(TRUE)
        {
        if(ATSCKptriscons(arg0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab50
        while(TRUE)
        {
        ## ATSINSmove_void
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab51
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab52
        while(TRUE)
        {
        tmp161 <- arg0[[1]];
        tmp162 <- arg0[[2]];
        arg1[[1]](arg1, tmp161);
        ## ATStailcalseq_beg
        apy0 <- tmp162;
        apy1 <- arg1;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab_list_foreach
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(NULL);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_foreach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret164 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_foreach_method
  tmpret164 <- R_ats2r34pre_list_patsfun_52__closurerize(arg0);
  return(tmpret164);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_52 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_52
  ats2r34pre_list_foreach(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_list_iforeach <- 
function(arg0, arg1)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_iforeach
  R_ats2r34pre_list_aux_54(arg1, 0, arg0);
  return(NULL);
} ## end-of-function


##defun
R_ats2r34pre_list_aux_54 <- 
function(env0, arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## tmp168 <- NULL
  ## tmp169 <- NULL
  ## tmp171 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_list_aux_54
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab53
        while(TRUE)
        {
        if(ATSCKptriscons(arg1)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab54
        while(TRUE)
        {
        ## ATSINSmove_void
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab55
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab56
        while(TRUE)
        {
        tmp168 <- arg1[[1]];
        tmp169 <- arg1[[2]];
        env0[[1]](env0, arg0, tmp168);
        tmp171 <- ats2r34pre_add_int1_int1(arg0, 1);
        ## ATStailcalseq_beg
        apy0 <- tmp171;
        apy1 <- tmp169;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_list_aux_54
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(NULL);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_iforeach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret172 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_iforeach_method
  tmpret172 <- R_ats2r34pre_list_patsfun_56__closurerize(arg0);
  return(tmpret172);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_56 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_56
  ats2r34pre_list_iforeach(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_list_rforeach <- 
function(arg0, arg1)
{
##
## knd = 0
  ## tmp175 <- NULL
  ## tmp176 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_rforeach
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab57
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab58
      while(TRUE)
      {
      ## ATSINSmove_void
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab59
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab60
      while(TRUE)
      {
      tmp175 <- arg0[[1]];
      tmp176 <- arg0[[2]];
      ats2r34pre_list_rforeach(tmp176, arg1);
      arg1[[1]](arg1, tmp175);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_list_rforeach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret178 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_rforeach_method
  tmpret178 <- R_ats2r34pre_list_patsfun_59__closurerize(arg0);
  return(tmpret178);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_59 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_59
  ats2r34pre_list_rforeach(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_list_filter <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret180 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_filter
  tmpret180 <- R_ats2r34pre_list_aux_61(arg1, arg0);
  return(tmpret180);
} ## end-of-function


##defun
R_ats2r34pre_list_aux_61 <- 
function(env0, arg0)
{
##
## knd = 1
  ## apy0 <- NULL
  tmpret181 <- NULL
  ## tmp182 <- NULL
  ## tmp183 <- NULL
  ## tmp184 <- NULL
  ## tmp185 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_list_aux_61
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab61
        while(TRUE)
        {
        if(ATSCKptriscons(arg0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab62
        while(TRUE)
        {
        tmpret181 <- NULL;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab63
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab64
        while(TRUE)
        {
        tmp182 <- arg0[[1]];
        tmp183 <- arg0[[2]];
        tmp184 <- env0[[1]](env0, tmp182);
        if(tmp184) {
          tmp185 <- R_ats2r34pre_list_aux_61(env0, tmp183);
          tmpret181 <- list(tmp182, tmp185);
        } else {
          ## ATStailcalseq_beg
          apy0 <- tmp183;
          arg0 <- apy0;
          funlab_r34 <- 1; ## __patsflab__ats2r34pre_list_aux_61
          ## ATStailcalseq_end
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret181);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_filter_method <- 
function(arg0)
{
##
## knd = 0
  tmpret186 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_filter_method
  tmpret186 <- R_ats2r34pre_list_patsfun_63__closurerize(arg0);
  return(tmpret186);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_63 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret187 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_63
  tmpret187 <- ats2r34pre_list_filter(env0, arg0);
  return(tmpret187);
} ## end-of-function


##defun
R_057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2r34_057_SATS_057_list_056_sats__list_labelize <- 
function(arg0)
{
##
## knd = 0
  tmpret188 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_labelize
  tmpret188 <- ats2r34pre_list_imap(arg0, R_ats2r34pre_list_patsfun_65__closurerize());
  return(tmpret188);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_65 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret189 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_65
  tmpret189 <- list(arg0, arg1);
  return(tmpret189);
} ## end-of-function


##defun
ats2r34pre_list_map <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret190 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_map
  tmpret190 <- R_ats2r34pre_list_aux_67(arg1, arg0);
  return(tmpret190);
} ## end-of-function


##defun
R_ats2r34pre_list_aux_67 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret191 <- NULL
  ## tmp192 <- NULL
  ## tmp193 <- NULL
  ## tmp194 <- NULL
  ## tmp195 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_aux_67
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab65
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab66
      while(TRUE)
      {
      tmpret191 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab67
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab68
      while(TRUE)
      {
      tmp192 <- arg0[[1]];
      tmp193 <- arg0[[2]];
      tmp194 <- env0[[1]](env0, tmp192);
      tmp195 <- R_ats2r34pre_list_aux_67(env0, tmp193);
      tmpret191 <- list(tmp194, tmp195);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret191);
} ## end-of-function


##defun
ats2r34pre_list_map_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret196 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_map_method
  tmpret196 <- R_ats2r34pre_list_patsfun_69__closurerize(arg0);
  return(tmpret196);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_69 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret197 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_69
  tmpret197 <- ats2r34pre_list_map(env0, arg0);
  return(tmpret197);
} ## end-of-function


##defun
ats2r34pre_list_imap <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret198 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_imap
  tmpret198 <- R_ats2r34pre_list_aux_71(arg1, 0, arg0);
  return(tmpret198);
} ## end-of-function


##defun
R_ats2r34pre_list_aux_71 <- 
function(env0, arg0, arg1)
{
##
## knd = 0
  tmpret199 <- NULL
  ## tmp200 <- NULL
  ## tmp201 <- NULL
  ## tmp202 <- NULL
  ## tmp203 <- NULL
  ## tmp204 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_aux_71
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab69
      while(TRUE)
      {
      if(ATSCKptriscons(arg1)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab70
      while(TRUE)
      {
      tmpret199 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab71
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab72
      while(TRUE)
      {
      tmp200 <- arg1[[1]];
      tmp201 <- arg1[[2]];
      tmp202 <- env0[[1]](env0, arg0, tmp200);
      tmp204 <- ats2r34pre_add_int1_int1(arg0, 1);
      tmp203 <- R_ats2r34pre_list_aux_71(env0, tmp204, tmp201);
      tmpret199 <- list(tmp202, tmp203);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret199);
} ## end-of-function


##defun
ats2r34pre_list_imap_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret205 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_imap_method
  tmpret205 <- R_ats2r34pre_list_patsfun_73__closurerize(arg0);
  return(tmpret205);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_73 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret206 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_73
  tmpret206 <- ats2r34pre_list_imap(env0, arg0);
  return(tmpret206);
} ## end-of-function


##defun
ats2r34pre_list_map2 <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret207 <- NULL
  ## tmp208 <- NULL
  ## tmp209 <- NULL
  ## tmp210 <- NULL
  ## tmp211 <- NULL
  ## tmp212 <- NULL
  ## tmp213 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_map2
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab73
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab74
      while(TRUE)
      {
      tmpret207 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab75
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab76
      while(TRUE)
      {
      tmp208 <- arg0[[1]];
      tmp209 <- arg0[[2]];
      ## ATScaseofseq_beg
      tmplab_r34 <- 1;
      while(TRUE) {
        tmplab = tmplab_r34; tmplab_r34 <- 0;
        switch(tmplab, 
          ## ATSbranchseq_beg
          case1={ ##__atstmplab77
          while(TRUE)
          {
          if(ATSCKptriscons(arg1)) {
            { tmplab_r34 <- 4; break; }
          } ## ifthen
            { tmplab_r34 <- 2; break; }
          }
          },
          case2={ ##__atstmplab78
          while(TRUE)
          {
          tmpret207 <- NULL;
          break;
          }
          },
          ## ATSbranchseq_end
          ## ATSbranchseq_beg
          case3={ ##__atstmplab79
          while(TRUE)
          {
            { tmplab_r34 <- 4; break; }
          }
          },
          case4={ ##__atstmplab80
          while(TRUE)
          {
          tmp210 <- arg1[[1]];
          tmp211 <- arg1[[2]];
          tmp212 <- arg2[[1]](arg2, tmp208, tmp210);
          tmp213 <- ats2r34pre_list_map2(tmp209, tmp211, arg2);
          tmpret207 <- list(tmp212, tmp213);
          break;
          }
          }
          ## ATSbranchseq_end
        ) ## end-of-switch
        if (tmplab_r34 == 0) break;
      } ## endwhile
      ## ATScaseofseq_end
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret207);
} ## end-of-function


##defun
ats2r34pre_list_foldleft <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret214 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_foldleft
  tmpret214 <- R_ats2r34pre_list_loop_76(arg2, arg1, arg0);
  return(tmpret214);
} ## end-of-function


##defun
R_ats2r34pre_list_loop_76 <- 
function(env0, arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret215 <- NULL
  ## tmp216 <- NULL
  ## tmp217 <- NULL
  ## tmp218 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_list_loop_76
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab81
        while(TRUE)
        {
        if(ATSCKptriscons(arg1)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab82
        while(TRUE)
        {
        tmpret215 <- arg0;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab83
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab84
        while(TRUE)
        {
        tmp216 <- arg1[[1]];
        tmp217 <- arg1[[2]];
        tmp218 <- env0[[1]](env0, arg0, tmp216);
        ## ATStailcalseq_beg
        apy0 <- tmp218;
        apy1 <- tmp217;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_list_loop_76
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret215);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_foldleft_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret219 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_foldleft_method
  tmpret219 <- R_ats2r34pre_list_patsfun_78__closurerize(arg0, arg1);
  return(tmpret219);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_78 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret220 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_78
  tmpret220 <- ats2r34pre_list_foldleft(env0, env1, arg0);
  return(tmpret220);
} ## end-of-function


##defun
ats2r34pre_list_ifoldleft <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret221 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_ifoldleft
  tmpret221 <- R_ats2r34pre_list_loop_80(arg2, 0, arg1, arg0);
  return(tmpret221);
} ## end-of-function


##defun
R_ats2r34pre_list_loop_80 <- 
function(env0, arg0, arg1, arg2)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## apy2 <- NULL
  tmpret222 <- NULL
  ## tmp223 <- NULL
  ## tmp224 <- NULL
  ## tmp225 <- NULL
  ## tmp226 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_list_loop_80
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab85
        while(TRUE)
        {
        if(ATSCKptriscons(arg2)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab86
        while(TRUE)
        {
        tmpret222 <- arg1;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab87
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab88
        while(TRUE)
        {
        tmp223 <- arg2[[1]];
        tmp224 <- arg2[[2]];
        tmp225 <- ats2r34pre_add_int1_int1(arg0, 1);
        tmp226 <- env0[[1]](env0, arg0, arg1, tmp223);
        ## ATStailcalseq_beg
        apy0 <- tmp225;
        apy1 <- tmp226;
        apy2 <- tmp224;
        arg0 <- apy0;
        arg1 <- apy1;
        arg2 <- apy2;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_list_loop_80
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret222);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_list_ifoldleft_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret227 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_ifoldleft_method
  tmpret227 <- R_ats2r34pre_list_patsfun_82__closurerize(arg0, arg1);
  return(tmpret227);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_82 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret228 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_82
  tmpret228 <- ats2r34pre_list_ifoldleft(env0, env1, arg0);
  return(tmpret228);
} ## end-of-function


##defun
ats2r34pre_list_foldright <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret229 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_foldright
  tmpret229 <- R_ats2r34pre_list_aux_84(arg1, arg0, arg2);
  return(tmpret229);
} ## end-of-function


##defun
R_ats2r34pre_list_aux_84 <- 
function(env0, arg0, arg1)
{
##
## knd = 0
  tmpret230 <- NULL
  ## tmp231 <- NULL
  ## tmp232 <- NULL
  ## tmp233 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_aux_84
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab89
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab90
      while(TRUE)
      {
      tmpret230 <- arg1;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab91
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab92
      while(TRUE)
      {
      tmp231 <- arg0[[1]];
      tmp232 <- arg0[[2]];
      tmp233 <- R_ats2r34pre_list_aux_84(env0, tmp232, arg1);
      tmpret230 <- env0[[1]](env0, tmp231, tmp233);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret230);
} ## end-of-function


##defun
ats2r34pre_list_foldright_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret234 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_foldright_method
  tmpret234 <- R_ats2r34pre_list_patsfun_86__closurerize(arg0, arg1);
  return(tmpret234);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_86 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret235 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_86
  tmpret235 <- ats2r34pre_list_foldright(env0, arg0, env1);
  return(tmpret235);
} ## end-of-function


##defun
ats2r34pre_list_ifoldright <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret236 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_ifoldright
  tmpret236 <- R_ats2r34pre_list_aux_88(arg1, 0, arg0, arg2);
  return(tmpret236);
} ## end-of-function


##defun
R_ats2r34pre_list_aux_88 <- 
function(env0, arg0, arg1, arg2)
{
##
## knd = 0
  tmpret237 <- NULL
  ## tmp238 <- NULL
  ## tmp239 <- NULL
  ## tmp240 <- NULL
  ## tmp241 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_aux_88
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab93
      while(TRUE)
      {
      if(ATSCKptriscons(arg1)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab94
      while(TRUE)
      {
      tmpret237 <- arg2;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab95
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab96
      while(TRUE)
      {
      tmp238 <- arg1[[1]];
      tmp239 <- arg1[[2]];
      tmp241 <- ats2r34pre_add_int1_int1(arg0, 1);
      tmp240 <- R_ats2r34pre_list_aux_88(env0, tmp241, tmp239, arg2);
      tmpret237 <- env0[[1]](env0, arg0, tmp238, tmp240);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret237);
} ## end-of-function


##defun
ats2r34pre_list_ifoldright_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret242 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_ifoldright_method
  tmpret242 <- R_ats2r34pre_list_patsfun_90__closurerize(arg0, arg1);
  return(tmpret242);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_90 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret243 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_90
  tmpret243 <- ats2r34pre_list_ifoldright(env0, arg0, env1);
  return(tmpret243);
} ## end-of-function


##defun
ats2r34pre_list_mergesort <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret246 <- NULL
  ## tmp265 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list_mergesort
  tmp265 <- ats2r34pre_list_length(arg0);
  tmpret246 <- R_ats2r34pre_list_msort_94(arg1, arg0, tmp265);
  return(tmpret246);
} ## end-of-function


##defun
R_ats2r34pre_list_msort_94 <- 
function(env0, arg0, arg1)
{
##
## knd = 0
  tmpret247 <- NULL
  ## tmp248 <- NULL
  ## tmp249 <- NULL
  ## tmp250 <- NULL
  ## tmp251 <- NULL
  ## tmp252 <- NULL
  ## tmp253 <- NULL
  ## tmp254 <- NULL
  ## tmp255 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_msort_94
  tmp248 <- ats2r34pre_lt_int1_int1(arg1, 2);
  if(tmp248) {
    tmpret247 <- arg0;
  } else {
    tmp249 <- ats2r34pre_half_int1(arg1);
    tmp250 <- ats2r34pre_list_split_at(arg0, tmp249);
    tmp251 <- tmp250[[1]];
    tmp252 <- tmp250[[2]];
    tmp253 <- R_ats2r34pre_list_msort_94(env0, tmp251, tmp249);
    tmp255 <- ats2r34pre_sub_int1_int1(arg1, tmp249);
    tmp254 <- R_ats2r34pre_list_msort_94(env0, tmp252, tmp255);
    tmpret247 <- R_ats2r34pre_list_merge_95(env0, tmp253, tmp254);
  } ## end-of-if
  return(tmpret247);
} ## end-of-function


##defun
R_ats2r34pre_list_merge_95 <- 
function(env0, arg0, arg1)
{
##
## knd = 0
  tmpret256 <- NULL
  ## tmp257 <- NULL
  ## tmp258 <- NULL
  ## tmp259 <- NULL
  ## tmp260 <- NULL
  ## tmp261 <- NULL
  ## tmp262 <- NULL
  ## tmp263 <- NULL
  ## tmp264 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_merge_95
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab97
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab98
      while(TRUE)
      {
      tmpret256 <- arg1;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab99
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab100
      while(TRUE)
      {
      tmp257 <- arg0[[1]];
      tmp258 <- arg0[[2]];
      ## ATScaseofseq_beg
      tmplab_r34 <- 1;
      while(TRUE) {
        tmplab = tmplab_r34; tmplab_r34 <- 0;
        switch(tmplab, 
          ## ATSbranchseq_beg
          case1={ ##__atstmplab101
          while(TRUE)
          {
          if(ATSCKptriscons(arg1)) {
            { tmplab_r34 <- 4; break; }
          } ## ifthen
            { tmplab_r34 <- 2; break; }
          }
          },
          case2={ ##__atstmplab102
          while(TRUE)
          {
          tmpret256 <- arg0;
          break;
          }
          },
          ## ATSbranchseq_end
          ## ATSbranchseq_beg
          case3={ ##__atstmplab103
          while(TRUE)
          {
            { tmplab_r34 <- 4; break; }
          }
          },
          case4={ ##__atstmplab104
          while(TRUE)
          {
          tmp259 <- arg1[[1]];
          tmp260 <- arg1[[2]];
          tmp261 <- env0[[1]](env0, tmp257, tmp259);
          tmp262 <- ats2r34pre_lte_int0_int0(tmp261, 0);
          if(tmp262) {
            tmp263 <- R_ats2r34pre_list_merge_95(env0, tmp258, arg1);
            tmpret256 <- list(tmp257, tmp263);
          } else {
            tmp264 <- R_ats2r34pre_list_merge_95(env0, arg0, tmp260);
            tmpret256 <- list(tmp259, tmp264);
          } ## end-of-if
          break;
          }
          }
          ## ATSbranchseq_end
        ) ## end-of-switch
        if (tmplab_r34 == 0) break;
      } ## endwhile
      ## ATScaseofseq_end
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret256);
} ## end-of-function


##defun
ats2r34pre_streamize_list_elt <- 
function(arg0)
{
##
## knd = 0
  tmpret266 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_streamize_list_elt
  tmpret266 <- R_ats2r34pre_list_auxmain_97(arg0);
  return(tmpret266);
} ## end-of-function


##defun
R_ats2r34pre_list_auxmain_97 <- 
function(arg0)
{
##
## knd = 0
  tmpret267 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_auxmain_97
  tmpret267 <- ATSPMVllazyval(R_ats2r34pre_list_patsfun_98__closurerize(arg0));
  return(tmpret267);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_98 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret268 <- NULL
  ## tmp269 <- NULL
  ## tmp270 <- NULL
  ## tmp271 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_98
  if(arg0) {
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab105
        while(TRUE)
        {
        if(ATSCKptriscons(env0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab106
        while(TRUE)
        {
        tmpret268 <- NULL;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab107
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab108
        while(TRUE)
        {
        tmp269 <- env0[[1]];
        tmp270 <- env0[[2]];
        tmp271 <- R_ats2r34pre_list_auxmain_97(tmp270);
        tmpret268 <- list(tmp269, tmp271);
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
  } else {
  } ## end-of-if
  return(tmpret268);
} ## end-of-function


##defun
ats2r34pre_streamize_list_zip <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret272 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_streamize_list_zip
  tmpret272 <- R_ats2r34pre_list_auxmain_100(arg0, arg1);
  return(tmpret272);
} ## end-of-function


##defun
R_ats2r34pre_list_auxmain_100 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret273 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_auxmain_100
  tmpret273 <- ATSPMVllazyval(R_ats2r34pre_list_patsfun_101__closurerize(arg0, arg1));
  return(tmpret273);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_101 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret274 <- NULL
  ## tmp275 <- NULL
  ## tmp276 <- NULL
  ## tmp277 <- NULL
  ## tmp278 <- NULL
  ## tmp279 <- NULL
  ## tmp280 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_101
  if(arg0) {
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab109
        while(TRUE)
        {
        if(ATSCKptriscons(env0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab110
        while(TRUE)
        {
        tmpret274 <- NULL;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab111
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab112
        while(TRUE)
        {
        tmp275 <- env0[[1]];
        tmp276 <- env0[[2]];
        ## ATScaseofseq_beg
        tmplab_r34 <- 1;
        while(TRUE) {
          tmplab = tmplab_r34; tmplab_r34 <- 0;
          switch(tmplab, 
            ## ATSbranchseq_beg
            case1={ ##__atstmplab113
            while(TRUE)
            {
            if(ATSCKptriscons(env1)) {
              { tmplab_r34 <- 4; break; }
            } ## ifthen
              { tmplab_r34 <- 2; break; }
            }
            },
            case2={ ##__atstmplab114
            while(TRUE)
            {
            tmpret274 <- NULL;
            break;
            }
            },
            ## ATSbranchseq_end
            ## ATSbranchseq_beg
            case3={ ##__atstmplab115
            while(TRUE)
            {
              { tmplab_r34 <- 4; break; }
            }
            },
            case4={ ##__atstmplab116
            while(TRUE)
            {
            tmp277 <- env1[[1]];
            tmp278 <- env1[[2]];
            tmp279 <- list(tmp275, tmp277);
            tmp280 <- R_ats2r34pre_list_auxmain_100(tmp276, tmp278);
            tmpret274 <- list(tmp279, tmp280);
            break;
            }
            }
            ## ATSbranchseq_end
          ) ## end-of-switch
          if (tmplab_r34 == 0) break;
        } ## endwhile
        ## ATScaseofseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
  } else {
  } ## end-of-if
  return(tmpret274);
} ## end-of-function


##defun
ats2r34pre_streamize_list_cross <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret281 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_streamize_list_cross
  tmpret281 <- R_ats2r34pre_list_auxmain_105(arg0, arg1);
  return(tmpret281);
} ## end-of-function


##defun
R_ats2r34pre_list_auxone_103 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret282 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_auxone_103
  tmpret282 <- ATSPMVllazyval(R_ats2r34pre_list_patsfun_104__closurerize(arg0, arg1));
  return(tmpret282);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_104 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret283 <- NULL
  ## tmp284 <- NULL
  ## tmp285 <- NULL
  ## tmp286 <- NULL
  ## tmp287 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_104
  if(arg0) {
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab117
        while(TRUE)
        {
        if(ATSCKptriscons(env1)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab118
        while(TRUE)
        {
        tmpret283 <- NULL;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab119
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab120
        while(TRUE)
        {
        tmp284 <- env1[[1]];
        tmp285 <- env1[[2]];
        tmp286 <- list(env0, tmp284);
        tmp287 <- R_ats2r34pre_list_auxone_103(env0, tmp285);
        tmpret283 <- list(tmp286, tmp287);
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
  } else {
  } ## end-of-if
  return(tmpret283);
} ## end-of-function


##defun
R_ats2r34pre_list_auxmain_105 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret288 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_auxmain_105
  tmpret288 <- ATSPMVllazyval(R_ats2r34pre_list_patsfun_106__closurerize(arg0, arg1));
  return(tmpret288);
} ## end-of-function


##defun
R_ats2r34pre_list_patsfun_106 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret289 <- NULL
  ## tmp290 <- NULL
  ## tmp291 <- NULL
  ## tmp292 <- NULL
  ## tmp293 <- NULL
  ## tmp294 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_list_patsfun_106
  if(arg0) {
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab121
        while(TRUE)
        {
        if(ATSCKptriscons(env0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab122
        while(TRUE)
        {
        tmpret289 <- NULL;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab123
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab124
        while(TRUE)
        {
        tmp290 <- env0[[1]];
        tmp291 <- env0[[2]];
        tmp293 <- R_ats2r34pre_list_auxone_103(tmp290, env1);
        tmp294 <- R_ats2r34pre_list_auxmain_105(tmp291, env1);
        tmp292 <- ats2r34pre_stream_vt_append(tmp293, tmp294);
        tmpret289 <- ATSPMVllazyval_eval(tmp292);
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
  } else {
  } ## end-of-if
  return(tmpret289);
} ## end-of-function


## ###### ###### ##

## end-of-compilation-unit ##

##
##
## The R(stat) code is generated by atscc2r34
## The starting compilation time is: 2017-10-6: 14h:33m
##
##

##defun
ats2r34pre_option_some <- 
function(arg0)
{
##
## knd = 0
  tmpret0 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_option_some
  tmpret0 <- list(arg0);
  return(tmpret0);
} ## end-of-function


##defun
ats2r34pre_option_none <- 
function()
{
##
## knd = 0
  tmpret1 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_option_none
  tmpret1 <- NULL;
  return(tmpret1);
} ## end-of-function


##defun
ats2r34pre_option_unsome <- 
function(arg0)
{
##
## knd = 0
  tmpret2 <- NULL
  ## tmp3 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_option_unsome
  tmp3 <- arg0[[1]];
  tmpret2 <- tmp3;
  return(tmpret2);
} ## end-of-function


##defun
ats2r34pre_option_is_some <- 
function(arg0)
{
##
## knd = 0
  tmpret4 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_option_is_some
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab0
      while(TRUE)
      {
      if(ATSCKptrisnull(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab1
      while(TRUE)
      {
      tmpret4 <- TRUE;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab2
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab3
      while(TRUE)
      {
      tmpret4 <- FALSE;
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret4);
} ## end-of-function


##defun
ats2r34pre_option_is_none <- 
function(arg0)
{
##
## knd = 0
  tmpret5 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_option_is_none
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab4
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab5
      while(TRUE)
      {
      tmpret5 <- TRUE;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab6
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab7
      while(TRUE)
      {
      tmpret5 <- FALSE;
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret5);
} ## end-of-function


## ###### ###### ##

## end-of-compilation-unit ##

##
##
## The R(stat) code is generated by atscc2r34
## The starting compilation time is: 2017-10-6: 14h:33m
##
##

##defun
R_ats2r34pre_stream_patsfun_8__closurerize <-
function(env0)
{
  return(list(function(cenv) { return(R_ats2r34pre_stream_patsfun_8(cenv[[2]])); }, env0));
}


##defun
R_ats2r34pre_stream_patsfun_19__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_patsfun_19(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_stream_patsfun_25__closurerize <-
function(env0, env1)
{
  return(list(function(cenv) { return(R_ats2r34pre_stream_patsfun_25(cenv[[2]], cenv[[3]])); }, env0, env1));
}


##defun
R_ats2r34pre_stream_patsfun_27__closurerize <-
function(env0)
{
  return(list(function(cenv) { return(R_ats2r34pre_stream_patsfun_27(cenv[[2]])); }, env0));
}


##defun
R_ats2r34pre_stream_patsfun_29__closurerize <-
function(env0, env1)
{
  return(list(function(cenv) { return(R_ats2r34pre_stream_patsfun_29(cenv[[2]], cenv[[3]])); }, env0, env1));
}


##defun
R_ats2r34pre_stream_patsfun_31__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_patsfun_31(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_patsfun_33__closurerize <-
function(env0, env1)
{
  return(list(function(cenv) { return(R_ats2r34pre_stream_patsfun_33(cenv[[2]], cenv[[3]])); }, env0, env1));
}


##defun
R_ats2r34pre_stream_patsfun_35__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_patsfun_35(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_patsfun_38__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_patsfun_38(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_patsfun_41__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_patsfun_41(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_patsfun_44__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_patsfun_44(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_patsfun_48__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_patsfun_48(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_patsfun_51__closurerize <-
function(env0, env1, env2)
{
  return(list(function(cenv) { return(R_ats2r34pre_stream_patsfun_51(cenv[[2]], cenv[[3]], cenv[[4]])); }, env0, env1, env2));
}


##defun
R_ats2r34pre_stream_patsfun_53__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_patsfun_53(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_stream_patsfun_56__closurerize <-
function(env0, env1)
{
  return(list(function(cenv) { return(R_ats2r34pre_stream_patsfun_56(cenv[[2]], cenv[[3]])); }, env0, env1));
}


##defun
R_ats2r34pre_stream_patsfun_59__closurerize <-
function(env0, env1, env2, env3)
{
  return(list(function(cenv) { return(R_ats2r34pre_stream_patsfun_59(cenv[[2]], cenv[[3]], cenv[[4]], cenv[[5]])); }, env0, env1, env2, env3));
}


##defun
R_ats2r34pre_stream_patsfun_60__closurerize <-
function(env0, env1)
{
  return(list(function(cenv) { return(R_ats2r34pre_stream_patsfun_60(cenv[[2]], cenv[[3]])); }, env0, env1));
}


##defun
R_ats2r34pre_stream_patsfun_66__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0, arg1) { return(R_ats2r34pre_stream_patsfun_66(cenv[[2]], arg0, arg1)); }, env0));
}


##defun
R_ats2r34pre_stream_patsfun_68__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0, arg1) { return(R_ats2r34pre_stream_patsfun_68(cenv[[2]], arg0, arg1)); }, env0));
}


##defun
R_ats2r34pre_stream_patsfun_71__closurerize <-
function(env0, env1)
{
  return(list(function(cenv) { return(R_ats2r34pre_stream_patsfun_71(cenv[[2]], cenv[[3]])); }, env0, env1));
}


##defun
R_ats2r34pre_stream_patsfun_73__closurerize <-
function(env0, env1)
{
  return(list(function(cenv) { return(R_ats2r34pre_stream_patsfun_73(cenv[[2]], cenv[[3]])); }, env0, env1));
}


##defun
ats2r34pre_stream_make_list <- 
function(arg0)
{
##
## knd = 0
  tmpret9 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_make_list
  tmpret9 <- ATSPMVlazyval(R_ats2r34pre_stream_patsfun_8__closurerize(arg0));
  return(tmpret9);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_8 <- 
function(env0)
{
##
## knd = 0
  tmpret10 <- NULL
  ## tmp11 <- NULL
  ## tmp12 <- NULL
  ## tmp13 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_8
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab0
      while(TRUE)
      {
      if(ATSCKptriscons(env0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab1
      while(TRUE)
      {
      tmpret10 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab2
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab3
      while(TRUE)
      {
      tmp11 <- env0[[1]];
      tmp12 <- env0[[2]];
      tmp13 <- ats2r34pre_stream_make_list(tmp12);
      tmpret10 <- list(tmp11, tmp13);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret10);
} ## end-of-function


##defun
ats2r34pre_stream_make_list0 <- 
function(arg0)
{
##
## knd = 0
  tmpret14 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_make_list0
  tmpret14 <- ats2r34pre_stream_make_list(arg0);
  return(tmpret14);
} ## end-of-function


##defun
ats2r34pre_stream_nth_opt <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret15 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_nth_opt
  tmpret15 <- R_ats2r34pre_stream_loop_11(arg0, arg1);
  return(tmpret15);
} ## end-of-function


##defun
R_ats2r34pre_stream_loop_11 <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret16 <- NULL
  ## tmp17 <- NULL
  ## tmp18 <- NULL
  ## tmp19 <- NULL
  ## tmp20 <- NULL
  ## tmp21 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_loop_11
    tmp17 <- ATSPMVlazyval_eval(arg0); 
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab4
        while(TRUE)
        {
        if(ATSCKptriscons(tmp17)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab5
        while(TRUE)
        {
        tmpret16 <- NULL;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab6
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab7
        while(TRUE)
        {
        tmp18 <- tmp17[[1]];
        tmp19 <- tmp17[[2]];
        tmp20 <- ats2r34pre_gt_int1_int1(arg1, 0);
        if(tmp20) {
          tmp21 <- ats2r34pre_pred_int1(arg1);
          ## ATStailcalseq_beg
          apy0 <- tmp19;
          apy1 <- tmp21;
          arg0 <- apy0;
          arg1 <- apy1;
          funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_loop_11
          ## ATStailcalseq_end
        } else {
          tmpret16 <- list(tmp18);
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret16);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_length <- 
function(arg0)
{
##
## knd = 0
  tmpret22 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_length
  tmpret22 <- R_ats2r34pre_stream_loop_13(arg0, 0);
  return(tmpret22);
} ## end-of-function


##defun
R_ats2r34pre_stream_loop_13 <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret23 <- NULL
  ## tmp24 <- NULL
  ## tmp26 <- NULL
  ## tmp27 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_loop_13
    tmp24 <- ATSPMVlazyval_eval(arg0); 
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab8
        while(TRUE)
        {
        if(ATSCKptriscons(tmp24)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab9
        while(TRUE)
        {
        tmpret23 <- arg1;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab10
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab11
        while(TRUE)
        {
        tmp26 <- tmp24[[2]];
        tmp27 <- ats2r34pre_add_int1_int1(arg1, 1);
        ## ATStailcalseq_beg
        apy0 <- tmp26;
        apy1 <- tmp27;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_loop_13
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret23);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream2list <- 
function(arg0)
{
##
## knd = 0
  tmpret28 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream2list
  tmpret28 <- R_ats2r34pre_stream_aux_15(arg0);
  return(tmpret28);
} ## end-of-function


##defun
R_ats2r34pre_stream_aux_15 <- 
function(arg0)
{
##
## knd = 0
  tmpret29 <- NULL
  ## tmp30 <- NULL
  ## tmp31 <- NULL
  ## tmp32 <- NULL
  ## tmp33 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_aux_15
  tmp30 <- ATSPMVlazyval_eval(arg0); 
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab12
      while(TRUE)
      {
      if(ATSCKptriscons(tmp30)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab13
      while(TRUE)
      {
      tmpret29 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab14
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab15
      while(TRUE)
      {
      tmp31 <- tmp30[[1]];
      tmp32 <- tmp30[[2]];
      tmp33 <- R_ats2r34pre_stream_aux_15(tmp32);
      tmpret29 <- list(tmp31, tmp33);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret29);
} ## end-of-function


##defun
ats2r34pre_stream2list_rev <- 
function(arg0)
{
##
## knd = 0
  tmpret34 <- NULL
  ## tmp40 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream2list_rev
  tmp40 <- NULL;
  tmpret34 <- R_ats2r34pre_stream_loop_17(arg0, tmp40);
  return(tmpret34);
} ## end-of-function


##defun
R_ats2r34pre_stream_loop_17 <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret35 <- NULL
  ## tmp36 <- NULL
  ## tmp37 <- NULL
  ## tmp38 <- NULL
  ## tmp39 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_loop_17
    tmp36 <- ATSPMVlazyval_eval(arg0); 
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab16
        while(TRUE)
        {
        if(ATSCKptriscons(tmp36)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab17
        while(TRUE)
        {
        tmpret35 <- arg1;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab18
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab19
        while(TRUE)
        {
        tmp37 <- tmp36[[1]];
        tmp38 <- tmp36[[2]];
        tmp39 <- list(tmp37, arg1);
        ## ATStailcalseq_beg
        apy0 <- tmp38;
        apy1 <- tmp39;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_loop_17
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret35);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_takeLte <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret41 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_takeLte
  tmpret41 <- ATSPMVllazyval(R_ats2r34pre_stream_patsfun_19__closurerize(arg0, arg1));
  return(tmpret41);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_19 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret42 <- NULL
  ## tmp43 <- NULL
  ## tmp44 <- NULL
  ## tmp45 <- NULL
  ## tmp46 <- NULL
  ## tmp47 <- NULL
  ## tmp48 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_19
  if(arg0) {
    tmp43 <- ats2r34pre_gt_int1_int1(env1, 0);
    if(tmp43) {
      tmp44 <- ATSPMVlazyval_eval(env0); 
      ## ATScaseofseq_beg
      tmplab_r34 <- 1;
      while(TRUE) {
        tmplab = tmplab_r34; tmplab_r34 <- 0;
        switch(tmplab, 
          ## ATSbranchseq_beg
          case1={ ##__atstmplab20
          while(TRUE)
          {
          if(ATSCKptriscons(tmp44)) {
            { tmplab_r34 <- 4; break; }
          } ## ifthen
            { tmplab_r34 <- 2; break; }
          }
          },
          case2={ ##__atstmplab21
          while(TRUE)
          {
          tmpret42 <- NULL;
          break;
          }
          },
          ## ATSbranchseq_end
          ## ATSbranchseq_beg
          case3={ ##__atstmplab22
          while(TRUE)
          {
            { tmplab_r34 <- 4; break; }
          }
          },
          case4={ ##__atstmplab23
          while(TRUE)
          {
          tmp45 <- tmp44[[1]];
          tmp46 <- tmp44[[2]];
          tmp48 <- ats2r34pre_sub_int1_int1(env1, 1);
          tmp47 <- ats2r34pre_stream_takeLte(tmp46, tmp48);
          tmpret42 <- list(tmp45, tmp47);
          break;
          }
          }
          ## ATSbranchseq_end
        ) ## end-of-switch
        if (tmplab_r34 == 0) break;
      } ## endwhile
      ## ATScaseofseq_end
    } else {
      tmpret42 <- NULL;
    } ## end-of-if
  } else {
  } ## end-of-if
  return(tmpret42);
} ## end-of-function


##defun
ats2r34pre_stream_take_opt <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret49 <- NULL
  ## tmp58 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_take_opt
  tmp58 <- NULL;
  tmpret49 <- R_ats2r34pre_stream_auxmain_21(arg1, arg0, 0, tmp58);
  return(tmpret49);
} ## end-of-function


##defun
R_ats2r34pre_stream_auxmain_21 <- 
function(env0, arg0, arg1, arg2)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## apy2 <- NULL
  tmpret50 <- NULL
  ## tmp51 <- NULL
  ## tmp52 <- NULL
  ## tmp53 <- NULL
  ## tmp54 <- NULL
  ## tmp55 <- NULL
  ## tmp56 <- NULL
  ## tmp57 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_auxmain_21
    tmp51 <- ats2r34pre_lt_int1_int1(arg1, env0);
    if(tmp51) {
      tmp52 <- ATSPMVlazyval_eval(arg0); 
      ## ATScaseofseq_beg
      tmplab_r34 <- 1;
      while(TRUE) {
        tmplab = tmplab_r34; tmplab_r34 <- 0;
        switch(tmplab, 
          ## ATSbranchseq_beg
          case1={ ##__atstmplab24
          while(TRUE)
          {
          if(ATSCKptriscons(tmp52)) {
            { tmplab_r34 <- 4; break; }
          } ## ifthen
            { tmplab_r34 <- 2; break; }
          }
          },
          case2={ ##__atstmplab25
          while(TRUE)
          {
          tmpret50 <- NULL;
          break;
          }
          },
          ## ATSbranchseq_end
          ## ATSbranchseq_beg
          case3={ ##__atstmplab26
          while(TRUE)
          {
            { tmplab_r34 <- 4; break; }
          }
          },
          case4={ ##__atstmplab27
          while(TRUE)
          {
          tmp53 <- tmp52[[1]];
          tmp54 <- tmp52[[2]];
          tmp55 <- ats2r34pre_add_int1_int1(arg1, 1);
          tmp56 <- list(tmp53, arg2);
          ## ATStailcalseq_beg
          apy0 <- tmp54;
          apy1 <- tmp55;
          apy2 <- tmp56;
          arg0 <- apy0;
          arg1 <- apy1;
          arg2 <- apy2;
          funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_auxmain_21
          ## ATStailcalseq_end
          break;
          }
          }
          ## ATSbranchseq_end
        ) ## end-of-switch
        if (tmplab_r34 == 0) break;
      } ## endwhile
      ## ATScaseofseq_end
    } else {
      tmp57 <- ats2r34pre_list_reverse(arg2);
      tmpret50 <- list(tmp57);
    } ## end-of-if
    if (funlab_r34 > 0) next else return(tmpret50);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_drop_opt <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret59 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_drop_opt
  tmpret59 <- R_ats2r34pre_stream_auxmain_23(arg1, arg0, 0);
  return(tmpret59);
} ## end-of-function


##defun
R_ats2r34pre_stream_auxmain_23 <- 
function(env0, arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret60 <- NULL
  ## tmp61 <- NULL
  ## tmp62 <- NULL
  ## tmp64 <- NULL
  ## tmp65 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_auxmain_23
    tmp61 <- ats2r34pre_lt_int1_int1(arg1, env0);
    if(tmp61) {
      tmp62 <- ATSPMVlazyval_eval(arg0); 
      ## ATScaseofseq_beg
      tmplab_r34 <- 1;
      while(TRUE) {
        tmplab = tmplab_r34; tmplab_r34 <- 0;
        switch(tmplab, 
          ## ATSbranchseq_beg
          case1={ ##__atstmplab28
          while(TRUE)
          {
          if(ATSCKptriscons(tmp62)) {
            { tmplab_r34 <- 4; break; }
          } ## ifthen
            { tmplab_r34 <- 2; break; }
          }
          },
          case2={ ##__atstmplab29
          while(TRUE)
          {
          tmpret60 <- NULL;
          break;
          }
          },
          ## ATSbranchseq_end
          ## ATSbranchseq_beg
          case3={ ##__atstmplab30
          while(TRUE)
          {
            { tmplab_r34 <- 4; break; }
          }
          },
          case4={ ##__atstmplab31
          while(TRUE)
          {
          tmp64 <- tmp62[[2]];
          tmp65 <- ats2r34pre_add_int1_int1(arg1, 1);
          ## ATStailcalseq_beg
          apy0 <- tmp64;
          apy1 <- tmp65;
          arg0 <- apy0;
          arg1 <- apy1;
          funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_auxmain_23
          ## ATStailcalseq_end
          break;
          }
          }
          ## ATSbranchseq_end
        ) ## end-of-switch
        if (tmplab_r34 == 0) break;
      } ## endwhile
      ## ATScaseofseq_end
    } else {
      tmpret60 <- list(arg0);
    } ## end-of-if
    if (funlab_r34 > 0) next else return(tmpret60);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_append <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret66 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_append
  tmpret66 <- ATSPMVlazyval(R_ats2r34pre_stream_patsfun_25__closurerize(arg0, arg1));
  return(tmpret66);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_25 <- 
function(env0, env1)
{
##
## knd = 0
  tmpret67 <- NULL
  ## tmp68 <- NULL
  ## tmp69 <- NULL
  ## tmp70 <- NULL
  ## tmp71 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_25
  tmp68 <- ATSPMVlazyval_eval(env0); 
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab32
      while(TRUE)
      {
      if(ATSCKptriscons(tmp68)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab33
      while(TRUE)
      {
      tmpret67 <- ATSPMVlazyval_eval(env1); 
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab34
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab35
      while(TRUE)
      {
      tmp69 <- tmp68[[1]];
      tmp70 <- tmp68[[2]];
      tmp71 <- ats2r34pre_stream_append(tmp70, env1);
      tmpret67 <- list(tmp69, tmp71);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret67);
} ## end-of-function


##defun
ats2r34pre_stream_concat <- 
function(arg0)
{
##
## knd = 0
  tmpret72 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_concat
  tmpret72 <- ATSPMVlazyval(R_ats2r34pre_stream_patsfun_27__closurerize(arg0));
  return(tmpret72);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_27 <- 
function(env0)
{
##
## knd = 0
  tmpret73 <- NULL
  ## tmp74 <- NULL
  ## tmp75 <- NULL
  ## tmp76 <- NULL
  ## tmp77 <- NULL
  ## tmp78 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_27
  tmp74 <- ATSPMVlazyval_eval(env0); 
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab36
      while(TRUE)
      {
      if(ATSCKptriscons(tmp74)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab37
      while(TRUE)
      {
      tmpret73 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab38
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab39
      while(TRUE)
      {
      tmp75 <- tmp74[[1]];
      tmp76 <- tmp74[[2]];
      tmp78 <- ats2r34pre_stream_concat(tmp76);
      tmp77 <- ats2r34pre_stream_append(tmp75, tmp78);
      tmpret73 <- ATSPMVlazyval_eval(tmp77); 
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret73);
} ## end-of-function


##defun
ats2r34pre_stream_map_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret79 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_map_cloref
  tmpret79 <- ATSPMVlazyval(R_ats2r34pre_stream_patsfun_29__closurerize(arg0, arg1));
  return(tmpret79);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_29 <- 
function(env0, env1)
{
##
## knd = 0
  tmpret80 <- NULL
  ## tmp81 <- NULL
  ## tmp82 <- NULL
  ## tmp83 <- NULL
  ## tmp84 <- NULL
  ## tmp85 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_29
  tmp81 <- ATSPMVlazyval_eval(env0); 
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab40
      while(TRUE)
      {
      if(ATSCKptriscons(tmp81)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab41
      while(TRUE)
      {
      tmpret80 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab42
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab43
      while(TRUE)
      {
      tmp82 <- tmp81[[1]];
      tmp83 <- tmp81[[2]];
      tmp84 <- env1[[1]](env1, tmp82);
      tmp85 <- ats2r34pre_stream_map_cloref(tmp83, env1);
      tmpret80 <- list(tmp84, tmp85);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret80);
} ## end-of-function


##defun
ats2r34pre_stream_map_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret86 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_map_method
  tmpret86 <- R_ats2r34pre_stream_patsfun_31__closurerize(arg0);
  return(tmpret86);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_31 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret87 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_31
  tmpret87 <- ats2r34pre_stream_map_cloref(env0, arg0);
  return(tmpret87);
} ## end-of-function


##defun
ats2r34pre_stream_filter_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret88 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_filter_cloref
  tmpret88 <- ATSPMVlazyval(R_ats2r34pre_stream_patsfun_33__closurerize(arg0, arg1));
  return(tmpret88);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_33 <- 
function(env0, env1)
{
##
## knd = 0
  tmpret89 <- NULL
  ## tmp90 <- NULL
  ## tmp91 <- NULL
  ## tmp92 <- NULL
  ## tmp93 <- NULL
  ## tmp94 <- NULL
  ## tmp95 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_33
  tmp90 <- ATSPMVlazyval_eval(env0); 
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab44
      while(TRUE)
      {
      if(ATSCKptriscons(tmp90)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab45
      while(TRUE)
      {
      tmpret89 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab46
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab47
      while(TRUE)
      {
      tmp91 <- tmp90[[1]];
      tmp92 <- tmp90[[2]];
      tmp93 <- env1[[1]](env1, tmp91);
      if(tmp93) {
        tmp94 <- ats2r34pre_stream_filter_cloref(tmp92, env1);
        tmpret89 <- list(tmp91, tmp94);
      } else {
        tmp95 <- ats2r34pre_stream_filter_cloref(tmp92, env1);
        tmpret89 <- ATSPMVlazyval_eval(tmp95); 
      } ## end-of-if
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret89);
} ## end-of-function


##defun
ats2r34pre_stream_filter_method <- 
function(arg0)
{
##
## knd = 0
  tmpret96 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_filter_method
  tmpret96 <- R_ats2r34pre_stream_patsfun_35__closurerize(arg0);
  return(tmpret96);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_35 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret97 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_35
  tmpret97 <- ats2r34pre_stream_filter_cloref(env0, arg0);
  return(tmpret97);
} ## end-of-function


##defun
ats2r34pre_stream_forall_cloref <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret98 <- NULL
  ## tmp99 <- NULL
  ## tmp100 <- NULL
  ## tmp101 <- NULL
  ## tmp102 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_stream_forall_cloref
    tmp99 <- ATSPMVlazyval_eval(arg0); 
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab48
        while(TRUE)
        {
        if(ATSCKptriscons(tmp99)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab49
        while(TRUE)
        {
        tmpret98 <- TRUE;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab50
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab51
        while(TRUE)
        {
        tmp100 <- tmp99[[1]];
        tmp101 <- tmp99[[2]];
        tmp102 <- arg1[[1]](arg1, tmp100);
        if(tmp102) {
          ## ATStailcalseq_beg
          apy0 <- tmp101;
          apy1 <- arg1;
          arg0 <- apy0;
          arg1 <- apy1;
          funlab_r34 <- 1; ## __patsflab_stream_forall_cloref
          ## ATStailcalseq_end
        } else {
          tmpret98 <- FALSE;
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret98);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_forall_method <- 
function(arg0)
{
##
## knd = 0
  tmpret103 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_forall_method
  tmpret103 <- R_ats2r34pre_stream_patsfun_38__closurerize(arg0);
  return(tmpret103);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_38 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret104 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_38
  tmpret104 <- ats2r34pre_stream_forall_cloref(env0, arg0);
  return(tmpret104);
} ## end-of-function


##defun
ats2r34pre_stream_exists_cloref <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret105 <- NULL
  ## tmp106 <- NULL
  ## tmp107 <- NULL
  ## tmp108 <- NULL
  ## tmp109 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_stream_exists_cloref
    tmp106 <- ATSPMVlazyval_eval(arg0); 
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab52
        while(TRUE)
        {
        if(ATSCKptriscons(tmp106)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab53
        while(TRUE)
        {
        tmpret105 <- FALSE;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab54
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab55
        while(TRUE)
        {
        tmp107 <- tmp106[[1]];
        tmp108 <- tmp106[[2]];
        tmp109 <- arg1[[1]](arg1, tmp107);
        if(tmp109) {
          tmpret105 <- TRUE;
        } else {
          ## ATStailcalseq_beg
          apy0 <- tmp108;
          apy1 <- arg1;
          arg0 <- apy0;
          arg1 <- apy1;
          funlab_r34 <- 1; ## __patsflab_stream_exists_cloref
          ## ATStailcalseq_end
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret105);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_exists_method <- 
function(arg0)
{
##
## knd = 0
  tmpret110 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_exists_method
  tmpret110 <- R_ats2r34pre_stream_patsfun_41__closurerize(arg0);
  return(tmpret110);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_41 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret111 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_41
  tmpret111 <- ats2r34pre_stream_exists_cloref(env0, arg0);
  return(tmpret111);
} ## end-of-function


##defun
ats2r34pre_stream_foreach_cloref <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## tmp113 <- NULL
  ## tmp114 <- NULL
  ## tmp115 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_stream_foreach_cloref
    tmp113 <- ATSPMVlazyval_eval(arg0); 
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab56
        while(TRUE)
        {
        if(ATSCKptriscons(tmp113)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab57
        while(TRUE)
        {
        ## ATSINSmove_void
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab58
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab59
        while(TRUE)
        {
        tmp114 <- tmp113[[1]];
        tmp115 <- tmp113[[2]];
        arg1[[1]](arg1, tmp114);
        ## ATStailcalseq_beg
        apy0 <- tmp115;
        apy1 <- arg1;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab_stream_foreach_cloref
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(NULL);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_foreach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret117 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_foreach_method
  tmpret117 <- R_ats2r34pre_stream_patsfun_44__closurerize(arg0);
  return(tmpret117);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_44 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_44
  ats2r34pre_stream_foreach_cloref(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_stream_iforeach_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_iforeach_cloref
  R_ats2r34pre_stream_loop_46(arg1, 0, arg0);
  return(NULL);
} ## end-of-function


##defun
R_ats2r34pre_stream_loop_46 <- 
function(env0, arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## tmp121 <- NULL
  ## tmp122 <- NULL
  ## tmp123 <- NULL
  ## tmp125 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_loop_46
    tmp121 <- ATSPMVlazyval_eval(arg1); 
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab60
        while(TRUE)
        {
        if(ATSCKptriscons(tmp121)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab61
        while(TRUE)
        {
        ## ATSINSmove_void
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab62
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab63
        while(TRUE)
        {
        tmp122 <- tmp121[[1]];
        tmp123 <- tmp121[[2]];
        env0[[1]](env0, arg0, tmp122);
        tmp125 <- ats2r34pre_add_int1_int1(arg0, 1);
        ## ATStailcalseq_beg
        apy0 <- tmp125;
        apy1 <- tmp123;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_loop_46
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(NULL);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_iforeach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret126 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_iforeach_method
  tmpret126 <- R_ats2r34pre_stream_patsfun_48__closurerize(arg0);
  return(tmpret126);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_48 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_48
  ats2r34pre_stream_iforeach_cloref(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
R_057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2r34_057_SATS_057_stream_056_sats__stream_merge_cloref <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret128 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_merge_cloref
  tmpret128 <- R_ats2r34pre_stream_auxmain_50(arg2, arg0, arg1);
  return(tmpret128);
} ## end-of-function


##defun
R_ats2r34pre_stream_auxmain_50 <- 
function(env0, arg0, arg1)
{
##
## knd = 0
  tmpret129 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_auxmain_50
  tmpret129 <- ATSPMVlazyval(R_ats2r34pre_stream_patsfun_51__closurerize(env0, arg0, arg1));
  return(tmpret129);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_51 <- 
function(env0, env1, env2)
{
##
## knd = 0
  tmpret130 <- NULL
  ## tmp131 <- NULL
  ## tmp132 <- NULL
  ## tmp133 <- NULL
  ## tmp134 <- NULL
  ## tmp135 <- NULL
  ## tmp136 <- NULL
  ## tmp137 <- NULL
  ## tmp138 <- NULL
  ## tmp139 <- NULL
  ## tmp140 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_51
  tmp131 <- ATSPMVlazyval_eval(env1); 
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab64
      while(TRUE)
      {
      if(ATSCKptriscons(tmp131)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab65
      while(TRUE)
      {
      tmpret130 <- ATSPMVlazyval_eval(env2); 
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab66
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab67
      while(TRUE)
      {
      tmp132 <- tmp131[[1]];
      tmp133 <- tmp131[[2]];
      tmp134 <- ATSPMVlazyval_eval(env2); 
      ## ATScaseofseq_beg
      tmplab_r34 <- 1;
      while(TRUE) {
        tmplab = tmplab_r34; tmplab_r34 <- 0;
        switch(tmplab, 
          ## ATSbranchseq_beg
          case1={ ##__atstmplab68
          while(TRUE)
          {
          if(ATSCKptriscons(tmp134)) {
            { tmplab_r34 <- 4; break; }
          } ## ifthen
            { tmplab_r34 <- 2; break; }
          }
          },
          case2={ ##__atstmplab69
          while(TRUE)
          {
          tmpret130 <- list(tmp132, tmp133);
          break;
          }
          },
          ## ATSbranchseq_end
          ## ATSbranchseq_beg
          case3={ ##__atstmplab70
          while(TRUE)
          {
            { tmplab_r34 <- 4; break; }
          }
          },
          case4={ ##__atstmplab71
          while(TRUE)
          {
          tmp135 <- tmp134[[1]];
          tmp136 <- tmp134[[2]];
          tmp137 <- env0[[1]](env0, tmp132, tmp135);
          tmp138 <- ats2r34pre_lte_int0_int0(tmp137, 0);
          if(tmp138) {
            tmp139 <- R_ats2r34pre_stream_auxmain_50(env0, tmp133, env2);
            tmpret130 <- list(tmp132, tmp139);
          } else {
            tmp140 <- R_ats2r34pre_stream_auxmain_50(env0, env1, tmp136);
            tmpret130 <- list(tmp135, tmp140);
          } ## end-of-if
          break;
          }
          }
          ## ATSbranchseq_end
        ) ## end-of-switch
        if (tmplab_r34 == 0) break;
      } ## endwhile
      ## ATScaseofseq_end
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret130);
} ## end-of-function


##defun
R_057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2r34_057_SATS_057_stream_056_sats__stream_merge_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret141 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_merge_method
  tmpret141 <- R_ats2r34pre_stream_patsfun_53__closurerize(arg0, arg1);
  return(tmpret141);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_53 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret142 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_53
  tmpret142 <- R_057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2r34_057_SATS_057_stream_056_sats__stream_merge_cloref(env0, env1, arg0);
  return(tmpret142);
} ## end-of-function


##defun
ats2r34pre_stream_tabulate_cloref <- 
function(arg0)
{
##
## knd = 0
  tmpret143 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_tabulate_cloref
  tmpret143 <- R_ats2r34pre_stream_auxmain_55(arg0, 0);
  return(tmpret143);
} ## end-of-function


##defun
R_ats2r34pre_stream_auxmain_55 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret144 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_auxmain_55
  tmpret144 <- ATSPMVlazyval(R_ats2r34pre_stream_patsfun_56__closurerize(env0, arg0));
  return(tmpret144);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_56 <- 
function(env0, env1)
{
##
## knd = 0
  tmpret145 <- NULL
  ## tmp146 <- NULL
  ## tmp147 <- NULL
  ## tmp148 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_56
  tmp146 <- env0[[1]](env0, env1);
  tmp148 <- ats2r34pre_add_int1_int1(env1, 1);
  tmp147 <- R_ats2r34pre_stream_auxmain_55(env0, tmp148);
  tmpret145 <- list(tmp146, tmp147);
  return(tmpret145);
} ## end-of-function


##defun
ats2r34pre_cross_stream_list <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret149 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_cross_stream_list
  tmpret149 <- ATSPMVlazyval(R_ats2r34pre_stream_patsfun_60__closurerize(arg0, arg1));
  return(tmpret149);
} ## end-of-function


##defun
R_ats2r34pre_stream_auxmain_58 <- 
function(arg0, arg1, arg2, arg3)
{
##
## knd = 0
  tmpret150 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_auxmain_58
  tmpret150 <- ATSPMVlazyval(R_ats2r34pre_stream_patsfun_59__closurerize(arg0, arg1, arg2, arg3));
  return(tmpret150);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_59 <- 
function(env0, env1, env2, env3)
{
##
## knd = 0
  tmpret151 <- NULL
  ## tmp152 <- NULL
  ## tmp153 <- NULL
  ## tmp154 <- NULL
  ## tmp155 <- NULL
  ## tmp156 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_59
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab72
      while(TRUE)
      {
      if(ATSCKptriscons(env3)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab73
      while(TRUE)
      {
      tmp154 <- ats2r34pre_cross_stream_list(env1, env2);
      tmpret151 <- ATSPMVlazyval_eval(tmp154); 
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab74
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab75
      while(TRUE)
      {
      tmp152 <- env3[[1]];
      tmp153 <- env3[[2]];
      tmp155 <- list(env0, tmp152);
      tmp156 <- R_ats2r34pre_stream_auxmain_58(env0, env1, env2, tmp153);
      tmpret151 <- list(tmp155, tmp156);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret151);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_60 <- 
function(env0, env1)
{
##
## knd = 0
  tmpret157 <- NULL
  ## tmp158 <- NULL
  ## tmp159 <- NULL
  ## tmp160 <- NULL
  ## tmp161 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_60
  tmp158 <- ATSPMVlazyval_eval(env0); 
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab76
      while(TRUE)
      {
      if(ATSCKptriscons(tmp158)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab77
      while(TRUE)
      {
      tmpret157 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab78
      while(TRUE)
      {
      if(ATSCKptrisnull(tmp158)) {
        ATSINScaseof_fail("/home/hwxi/Research/ATS-Postiats/contrib/libatscc/DATS/stream.dats: 7926(line=526, offs=1) -- 8018(line=528, offs=50)");
      } ## ifthen
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab79
      while(TRUE)
      {
      tmp159 <- tmp158[[1]];
      tmp160 <- tmp158[[2]];
      tmp161 <- R_ats2r34pre_stream_auxmain_58(tmp159, tmp160, env1, env1);
      tmpret157 <- ATSPMVlazyval_eval(tmp161); 
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret157);
} ## end-of-function


##defun
ats2r34pre_cross_stream_list0 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret162 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_cross_stream_list0
  tmpret162 <- ats2r34pre_cross_stream_list(arg0, arg1);
  return(tmpret162);
} ## end-of-function


##defun
ats2r34pre_stream_take_while_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret163 <- NULL
  ## tmp164 <- NULL
  ## tmp165 <- NULL
  ## tmp166 <- NULL
  ## tmp167 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_take_while_cloref
  tmp164 <- ats2r34pre_stream_rtake_while_cloref(arg0, arg1);
  tmp165 <- tmp164[[1]];
  tmp166 <- tmp164[[2]];
  tmp167 <- ats2r34pre_list_reverse(tmp166);
  tmpret163 <- list(tmp165, tmp167);
  return(tmpret163);
} ## end-of-function


##defun
ats2r34pre_stream_rtake_while_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret168 <- NULL
  ## tmp176 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_rtake_while_cloref
  tmp176 <- NULL;
  tmpret168 <- R_ats2r34pre_stream_loop_64(arg1, arg0, 0, tmp176);
  return(tmpret168);
} ## end-of-function


##defun
R_ats2r34pre_stream_loop_64 <- 
function(env0, arg0, arg1, arg2)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## apy2 <- NULL
  tmpret169 <- NULL
  ## tmp170 <- NULL
  ## tmp171 <- NULL
  ## tmp172 <- NULL
  ## tmp173 <- NULL
  ## tmp174 <- NULL
  ## tmp175 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_loop_64
    tmp170 <- ATSPMVlazyval_eval(arg0); 
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab80
        while(TRUE)
        {
        if(ATSCKptriscons(tmp170)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab81
        while(TRUE)
        {
        tmpret169 <- list(arg0, arg2);
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab82
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab83
        while(TRUE)
        {
        tmp171 <- tmp170[[1]];
        tmp172 <- tmp170[[2]];
        tmp173 <- env0[[1]](env0, arg1, tmp171);
        if(tmp173) {
          tmp174 <- ats2r34pre_add_int1_int1(arg1, 1);
          tmp175 <- list(tmp171, arg2);
          ## ATStailcalseq_beg
          apy0 <- tmp172;
          apy1 <- tmp174;
          apy2 <- tmp175;
          arg0 <- apy0;
          arg1 <- apy1;
          arg2 <- apy2;
          funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_loop_64
          ## ATStailcalseq_end
        } else {
          tmpret169 <- list(arg0, arg2);
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret169);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_take_until_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret177 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_take_until_cloref
  tmpret177 <- ats2r34pre_stream_take_while_cloref(arg0, R_ats2r34pre_stream_patsfun_66__closurerize(arg1));
  return(tmpret177);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_66 <- 
function(env0, arg0, arg1)
{
##
## knd = 0
  tmpret178 <- NULL
  ## tmp179 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_66
  tmp179 <- env0[[1]](env0, arg0, arg1);
  tmpret178 <- atspre_neg_bool0(tmp179);
  return(tmpret178);
} ## end-of-function


##defun
ats2r34pre_stream_rtake_until_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret180 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_rtake_until_cloref
  tmpret180 <- ats2r34pre_stream_rtake_while_cloref(arg0, R_ats2r34pre_stream_patsfun_68__closurerize(arg1));
  return(tmpret180);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_68 <- 
function(env0, arg0, arg1)
{
##
## knd = 0
  tmpret181 <- NULL
  ## tmp182 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_68
  tmp182 <- env0[[1]](env0, arg0, arg1);
  tmpret181 <- atspre_neg_bool0(tmp182);
  return(tmpret181);
} ## end-of-function


##defun
ats2r34pre_stream_list_xprod2 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret183 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_list_xprod2
  tmpret183 <- R_ats2r34pre_stream_auxlst_72(arg0, arg1);
  return(tmpret183);
} ## end-of-function


##defun
R_ats2r34pre_stream_aux_70 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret184 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_aux_70
  tmpret184 <- ATSPMVlazyval(R_ats2r34pre_stream_patsfun_71__closurerize(arg0, arg1));
  return(tmpret184);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_71 <- 
function(env0, env1)
{
##
## knd = 0
  tmpret185 <- NULL
  ## tmp186 <- NULL
  ## tmp187 <- NULL
  ## tmp188 <- NULL
  ## tmp189 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_71
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab84
      while(TRUE)
      {
      if(ATSCKptriscons(env1)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab85
      while(TRUE)
      {
      tmpret185 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab86
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab87
      while(TRUE)
      {
      tmp186 <- env1[[1]];
      tmp187 <- env1[[2]];
      tmp188 <- list(env0, tmp186);
      tmp189 <- R_ats2r34pre_stream_aux_70(env0, tmp187);
      tmpret185 <- list(tmp188, tmp189);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret185);
} ## end-of-function


##defun
R_ats2r34pre_stream_auxlst_72 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret190 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_auxlst_72
  tmpret190 <- ATSPMVlazyval(R_ats2r34pre_stream_patsfun_73__closurerize(arg0, arg1));
  return(tmpret190);
} ## end-of-function


##defun
R_ats2r34pre_stream_patsfun_73 <- 
function(env0, env1)
{
##
## knd = 0
  tmpret191 <- NULL
  ## tmp192 <- NULL
  ## tmp193 <- NULL
  ## tmp194 <- NULL
  ## tmp195 <- NULL
  ## tmp196 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_patsfun_73
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab88
      while(TRUE)
      {
      if(ATSCKptriscons(env0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab89
      while(TRUE)
      {
      tmpret191 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab90
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab91
      while(TRUE)
      {
      tmp192 <- env0[[1]];
      tmp193 <- env0[[2]];
      tmp195 <- R_ats2r34pre_stream_aux_70(tmp192, env1);
      tmp196 <- R_ats2r34pre_stream_auxlst_72(tmp193, env1);
      tmp194 <- ats2r34pre_stream_append(tmp195, tmp196);
      tmpret191 <- ATSPMVlazyval_eval(tmp194); 
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret191);
} ## end-of-function


##defun
ats2r34pre_stream_nth_exn <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret197 <- NULL
  ## tmp198 <- NULL
  ## tmp199 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_nth_exn
  tmp198 <- ats2r34pre_stream_nth_opt(arg0, arg1);
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab92
      while(TRUE)
      {
      if(ATSCKptrisnull(tmp198)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab93
      while(TRUE)
      {
      tmp199 <- tmp198[[1]];
      ## ATSINSfreecon(tmp198);
      tmpret197 <- tmp199;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab94
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab95
      while(TRUE)
      {
      tmpret197 <- ats2r34pre_StreamSubscriptExn_throw();
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret197);
} ## end-of-function


## ###### ###### ##

## end-of-compilation-unit ##

##
##
## The R(stat) code is generated by atscc2r34
## The starting compilation time is: 2017-10-6: 14h:33m
##
##

##defun
R_ats2r34pre_stream_vt_patsfun_10__closurerize <-
function(env0)
{
  return(list(function(cenv) { return(R_ats2r34pre_stream_vt_patsfun_10(cenv[[2]])); }, env0));
}


##defun
R_ats2r34pre_stream_vt_patsfun_13__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_13(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_stream_vt_patsfun_22__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_22(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_stream_vt_patsfun_25__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_25(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_vt_patsfun_28__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_28(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_stream_vt_patsfun_30__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_30(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_vt_patsfun_33__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_33(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_stream_vt_patsfun_35__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_35(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_vt_patsfun_39__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_39(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_vt_patsfun_43__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_43(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_vt_patsfun_47__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_47(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_vt_patsfun_51__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_51(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_vt_patsfun_55__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_55(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_stream_vt_patsfun_58__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_stream_vt_patsfun_58(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
ats2r34pre_stream_vt_free <- 
function(arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_free
  atspre_lazy_vt_free(arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_stream_vt2t <- 
function(arg0)
{
##
## knd = 0
  tmpret11 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt2t
  tmpret11 <- R_ats2r34pre_stream_vt_aux_9(arg0);
  return(tmpret11);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_aux_9 <- 
function(arg0)
{
##
## knd = 0
  tmpret12 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_aux_9
  tmpret12 <- ATSPMVlazyval(R_ats2r34pre_stream_vt_patsfun_10__closurerize(arg0));
  return(tmpret12);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_10 <- 
function(env0)
{
##
## knd = 0
  tmpret13 <- NULL
  ## tmp14 <- NULL
  ## tmp15 <- NULL
  ## tmp16 <- NULL
  ## tmp17 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_10
  tmp14 <- ATSPMVllazyval_eval(env0);
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab0
      while(TRUE)
      {
      if(ATSCKptriscons(tmp14)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab1
      while(TRUE)
      {
      tmpret13 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab2
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab3
      while(TRUE)
      {
      tmp15 <- tmp14[[1]];
      tmp16 <- tmp14[[2]];
      ## ATSINSfreecon(tmp14);
      tmp17 <- R_ats2r34pre_stream_vt_aux_9(tmp16);
      tmpret13 <- list(tmp15, tmp17);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret13);
} ## end-of-function


##defun
ats2r34pre_stream_vt_takeLte <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret18 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_takeLte
  tmpret18 <- R_ats2r34pre_stream_vt_auxmain_12(arg0, arg1);
  return(tmpret18);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_auxmain_12 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret19 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_auxmain_12
  tmpret19 <- ATSPMVllazyval(R_ats2r34pre_stream_vt_patsfun_13__closurerize(arg0, arg1));
  return(tmpret19);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_13 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret20 <- NULL
  ## tmp21 <- NULL
  ## tmp22 <- NULL
  ## tmp23 <- NULL
  ## tmp24 <- NULL
  ## tmp25 <- NULL
  ## tmp26 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_13
  if(arg0) {
    tmp21 <- ats2r34pre_gt_int1_int1(env1, 0);
    if(tmp21) {
      tmp22 <- ATSPMVllazyval_eval(env0);
      ## ATScaseofseq_beg
      tmplab_r34 <- 1;
      while(TRUE) {
        tmplab = tmplab_r34; tmplab_r34 <- 0;
        switch(tmplab, 
          ## ATSbranchseq_beg
          case1={ ##__atstmplab4
          while(TRUE)
          {
          if(ATSCKptriscons(tmp22)) {
            { tmplab_r34 <- 4; break; }
          } ## ifthen
            { tmplab_r34 <- 2; break; }
          }
          },
          case2={ ##__atstmplab5
          while(TRUE)
          {
          tmpret20 <- NULL;
          break;
          }
          },
          ## ATSbranchseq_end
          ## ATSbranchseq_beg
          case3={ ##__atstmplab6
          while(TRUE)
          {
            { tmplab_r34 <- 4; break; }
          }
          },
          case4={ ##__atstmplab7
          while(TRUE)
          {
          tmp23 <- tmp22[[1]];
          tmp24 <- tmp22[[2]];
          ## ATSINSfreecon(tmp22);
          tmp26 <- ats2r34pre_sub_int1_int1(env1, 1);
          tmp25 <- R_ats2r34pre_stream_vt_auxmain_12(tmp24, tmp26);
          tmpret20 <- list(tmp23, tmp25);
          break;
          }
          }
          ## ATSbranchseq_end
        ) ## end-of-switch
        if (tmplab_r34 == 0) break;
      } ## endwhile
      ## ATScaseofseq_end
    } else {
      atspre_lazy_vt_free(env0);
      tmpret20 <- NULL;
    } ## end-of-if
  } else {
    atspre_lazy_vt_free(env0);
  } ## end-of-if
  return(tmpret20);
} ## end-of-function


##defun
ats2r34pre_stream_vt_length <- 
function(arg0)
{
##
## knd = 0
  tmpret29 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_length
  tmpret29 <- R_ats2r34pre_stream_vt_loop_15(arg0, 0);
  return(tmpret29);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_loop_15 <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret30 <- NULL
  ## tmp31 <- NULL
  ## tmp33 <- NULL
  ## tmp34 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_vt_loop_15
    tmp31 <- ATSPMVllazyval_eval(arg0);
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab8
        while(TRUE)
        {
        if(ATSCKptriscons(tmp31)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab9
        while(TRUE)
        {
        tmpret30 <- arg1;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab10
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab11
        while(TRUE)
        {
        tmp33 <- tmp31[[2]];
        ## ATSINSfreecon(tmp31);
        tmp34 <- ats2r34pre_add_int1_int1(arg1, 1);
        ## ATStailcalseq_beg
        apy0 <- tmp33;
        apy1 <- tmp34;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_vt_loop_15
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret30);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream2list_vt <- 
function(arg0)
{
##
## knd = 0
  tmpret35 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream2list_vt
  tmpret35 <- R_ats2r34pre_stream_vt_aux_17(arg0);
  return(tmpret35);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_aux_17 <- 
function(arg0)
{
##
## knd = 0
  tmpret36 <- NULL
  ## tmp37 <- NULL
  ## tmp38 <- NULL
  ## tmp39 <- NULL
  ## tmp40 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_aux_17
  tmp37 <- ATSPMVllazyval_eval(arg0);
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab12
      while(TRUE)
      {
      if(ATSCKptriscons(tmp37)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab13
      while(TRUE)
      {
      tmpret36 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab14
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab15
      while(TRUE)
      {
      tmp38 <- tmp37[[1]];
      tmp39 <- tmp37[[2]];
      ## ATSINSfreecon(tmp37);
      tmp40 <- R_ats2r34pre_stream_vt_aux_17(tmp39);
      tmpret36 <- list(tmp38, tmp40);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret36);
} ## end-of-function


##defun
ats2r34pre_stream2list_vt_rev <- 
function(arg0)
{
##
## knd = 0
  tmpret41 <- NULL
  ## tmp47 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream2list_vt_rev
  tmp47 <- NULL;
  tmpret41 <- R_ats2r34pre_stream_vt_loop_19(arg0, tmp47);
  return(tmpret41);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_loop_19 <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret42 <- NULL
  ## tmp43 <- NULL
  ## tmp44 <- NULL
  ## tmp45 <- NULL
  ## tmp46 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_vt_loop_19
    tmp43 <- ATSPMVllazyval_eval(arg0);
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab16
        while(TRUE)
        {
        if(ATSCKptriscons(tmp43)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab17
        while(TRUE)
        {
        tmpret42 <- arg1;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab18
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab19
        while(TRUE)
        {
        tmp44 <- tmp43[[1]];
        tmp45 <- tmp43[[2]];
        ## ATSINSfreecon(tmp43);
        tmp46 <- list(tmp44, arg1);
        ## ATStailcalseq_beg
        apy0 <- tmp45;
        apy1 <- tmp46;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_vt_loop_19
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret42);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_vt_append <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret48 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_append
  tmpret48 <- R_ats2r34pre_stream_vt_auxmain_21(arg0, arg1);
  return(tmpret48);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_auxmain_21 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret49 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_auxmain_21
  tmpret49 <- ATSPMVllazyval(R_ats2r34pre_stream_vt_patsfun_22__closurerize(arg0, arg1));
  return(tmpret49);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_22 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret50 <- NULL
  ## tmp51 <- NULL
  ## tmp52 <- NULL
  ## tmp53 <- NULL
  ## tmp54 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_22
  if(arg0) {
    tmp51 <- ATSPMVllazyval_eval(env0);
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab20
        while(TRUE)
        {
        if(ATSCKptriscons(tmp51)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab21
        while(TRUE)
        {
        tmpret50 <- ATSPMVllazyval_eval(env1);
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab22
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab23
        while(TRUE)
        {
        tmp52 <- tmp51[[1]];
        tmp53 <- tmp51[[2]];
        ## ATSINSfreecon(tmp51);
        tmp54 <- R_ats2r34pre_stream_vt_auxmain_21(tmp53, env1);
        tmpret50 <- list(tmp52, tmp54);
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
  } else {
    atspre_lazy_vt_free(env0);
    atspre_lazy_vt_free(env1);
  } ## end-of-if
  return(tmpret50);
} ## end-of-function


##defun
ats2r34pre_stream_vt_concat <- 
function(arg0)
{
##
## knd = 0
  tmpret57 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_concat
  tmpret57 <- R_ats2r34pre_stream_vt_auxmain_24(arg0);
  return(tmpret57);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_auxmain_24 <- 
function(arg0)
{
##
## knd = 0
  tmpret58 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_auxmain_24
  tmpret58 <- ATSPMVllazyval(R_ats2r34pre_stream_vt_patsfun_25__closurerize(arg0));
  return(tmpret58);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_25 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret59 <- NULL
  ## tmp60 <- NULL
  ## tmp61 <- NULL
  ## tmp62 <- NULL
  ## tmp63 <- NULL
  ## tmp64 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_25
  if(arg0) {
    tmp60 <- ATSPMVllazyval_eval(env0);
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab24
        while(TRUE)
        {
        if(ATSCKptriscons(tmp60)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab25
        while(TRUE)
        {
        tmpret59 <- NULL;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab26
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab27
        while(TRUE)
        {
        tmp61 <- tmp60[[1]];
        tmp62 <- tmp60[[2]];
        ## ATSINSfreecon(tmp60);
        tmp64 <- R_ats2r34pre_stream_vt_auxmain_24(tmp62);
        tmp63 <- ats2r34pre_stream_vt_append(tmp61, tmp64);
        tmpret59 <- ATSPMVllazyval_eval(tmp63);
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
  } else {
    atspre_lazy_vt_free(env0);
  } ## end-of-if
  return(tmpret59);
} ## end-of-function


##defun
ats2r34pre_stream_vt_map_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret66 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_map_cloref
  tmpret66 <- R_ats2r34pre_stream_vt_auxmain_27(arg1, arg0);
  return(tmpret66);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_auxmain_27 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret67 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_auxmain_27
  tmpret67 <- ATSPMVllazyval(R_ats2r34pre_stream_vt_patsfun_28__closurerize(env0, arg0));
  return(tmpret67);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_28 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret68 <- NULL
  ## tmp69 <- NULL
  ## tmp70 <- NULL
  ## tmp71 <- NULL
  ## tmp72 <- NULL
  ## tmp73 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_28
  if(arg0) {
    tmp69 <- ATSPMVllazyval_eval(env1);
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab28
        while(TRUE)
        {
        if(ATSCKptriscons(tmp69)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab29
        while(TRUE)
        {
        tmpret68 <- NULL;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab30
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab31
        while(TRUE)
        {
        tmp70 <- tmp69[[1]];
        tmp71 <- tmp69[[2]];
        ## ATSINSfreecon(tmp69);
        tmp72 <- env0[[1]](env0, tmp70);
        tmp73 <- R_ats2r34pre_stream_vt_auxmain_27(env0, tmp71);
        tmpret68 <- list(tmp72, tmp73);
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
  } else {
    atspre_lazy_vt_free(env1);
  } ## end-of-if
  return(tmpret68);
} ## end-of-function


##defun
ats2r34pre_stream_vt_map_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret75 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_map_method
  tmpret75 <- R_ats2r34pre_stream_vt_patsfun_30__closurerize(arg0);
  return(tmpret75);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_30 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret76 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_30
  tmpret76 <- ats2r34pre_stream_vt_map_cloref(env0, arg0);
  return(tmpret76);
} ## end-of-function


##defun
ats2r34pre_stream_vt_filter_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret77 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_filter_cloref
  tmpret77 <- R_ats2r34pre_stream_vt_auxmain_32(arg1, arg0);
  return(tmpret77);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_auxmain_32 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret78 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_auxmain_32
  tmpret78 <- ATSPMVllazyval(R_ats2r34pre_stream_vt_patsfun_33__closurerize(env0, arg0));
  return(tmpret78);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_33 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret79 <- NULL
  ## tmp80 <- NULL
  ## tmp81 <- NULL
  ## tmp82 <- NULL
  ## tmp83 <- NULL
  ## tmp84 <- NULL
  ## tmp85 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_33
  if(arg0) {
    tmp80 <- ATSPMVllazyval_eval(env1);
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab32
        while(TRUE)
        {
        if(ATSCKptriscons(tmp80)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab33
        while(TRUE)
        {
        tmpret79 <- NULL;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab34
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab35
        while(TRUE)
        {
        tmp81 <- tmp80[[1]];
        tmp82 <- tmp80[[2]];
        ## ATSINSfreecon(tmp80);
        tmp83 <- env0[[1]](env0, tmp81);
        if(tmp83) {
          tmp84 <- R_ats2r34pre_stream_vt_auxmain_32(env0, tmp82);
          tmpret79 <- list(tmp81, tmp84);
        } else {
          tmp85 <- R_ats2r34pre_stream_vt_auxmain_32(env0, tmp82);
          tmpret79 <- ATSPMVllazyval_eval(tmp85);
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
  } else {
    atspre_lazy_vt_free(env1);
  } ## end-of-if
  return(tmpret79);
} ## end-of-function


##defun
ats2r34pre_stream_vt_filter_method <- 
function(arg0)
{
##
## knd = 0
  tmpret87 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_filter_method
  tmpret87 <- R_ats2r34pre_stream_vt_patsfun_35__closurerize(arg0);
  return(tmpret87);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_35 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret88 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_35
  tmpret88 <- ats2r34pre_stream_vt_filter_cloref(env0, arg0);
  return(tmpret88);
} ## end-of-function


##defun
ats2r34pre_stream_vt_exists_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret89 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_exists_cloref
  tmpret89 <- R_ats2r34pre_stream_vt_loop_37(arg1, arg0);
  return(tmpret89);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_loop_37 <- 
function(env0, arg0)
{
##
## knd = 1
  ## apy0 <- NULL
  tmpret90 <- NULL
  ## tmp91 <- NULL
  ## tmp92 <- NULL
  ## tmp93 <- NULL
  ## tmp94 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_vt_loop_37
    tmp91 <- ATSPMVllazyval_eval(arg0);
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab36
        while(TRUE)
        {
        if(ATSCKptriscons(tmp91)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab37
        while(TRUE)
        {
        tmpret90 <- FALSE;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab38
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab39
        while(TRUE)
        {
        tmp92 <- tmp91[[1]];
        tmp93 <- tmp91[[2]];
        ## ATSINSfreecon(tmp91);
        tmp94 <- env0[[1]](env0, tmp92);
        if(tmp94) {
          atspre_lazy_vt_free(tmp93);
          tmpret90 <- TRUE;
        } else {
          ## ATStailcalseq_beg
          apy0 <- tmp93;
          arg0 <- apy0;
          funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_vt_loop_37
          ## ATStailcalseq_end
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret90);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_vt_exists_method <- 
function(arg0)
{
##
## knd = 0
  tmpret96 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_exists_method
  tmpret96 <- R_ats2r34pre_stream_vt_patsfun_39__closurerize(arg0);
  return(tmpret96);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_39 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret97 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_39
  tmpret97 <- ats2r34pre_stream_vt_exists_cloref(env0, arg0);
  return(tmpret97);
} ## end-of-function


##defun
ats2r34pre_stream_vt_forall_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret98 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_forall_cloref
  tmpret98 <- R_ats2r34pre_stream_vt_loop_41(arg1, arg0);
  return(tmpret98);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_loop_41 <- 
function(env0, arg0)
{
##
## knd = 1
  ## apy0 <- NULL
  tmpret99 <- NULL
  ## tmp100 <- NULL
  ## tmp101 <- NULL
  ## tmp102 <- NULL
  ## tmp103 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_vt_loop_41
    tmp100 <- ATSPMVllazyval_eval(arg0);
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab40
        while(TRUE)
        {
        if(ATSCKptriscons(tmp100)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab41
        while(TRUE)
        {
        tmpret99 <- TRUE;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab42
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab43
        while(TRUE)
        {
        tmp101 <- tmp100[[1]];
        tmp102 <- tmp100[[2]];
        ## ATSINSfreecon(tmp100);
        tmp103 <- env0[[1]](env0, tmp101);
        if(tmp103) {
          ## ATStailcalseq_beg
          apy0 <- tmp102;
          arg0 <- apy0;
          funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_vt_loop_41
          ## ATStailcalseq_end
        } else {
          atspre_lazy_vt_free(tmp102);
          tmpret99 <- FALSE;
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret99);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_vt_forall_method <- 
function(arg0)
{
##
## knd = 0
  tmpret105 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_forall_method
  tmpret105 <- R_ats2r34pre_stream_vt_patsfun_43__closurerize(arg0);
  return(tmpret105);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_43 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret106 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_43
  tmpret106 <- ats2r34pre_stream_vt_forall_cloref(env0, arg0);
  return(tmpret106);
} ## end-of-function


##defun
ats2r34pre_stream_vt_foreach_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_foreach_cloref
  R_ats2r34pre_stream_vt_loop_45(arg1, arg0);
  return(NULL);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_loop_45 <- 
function(env0, arg0)
{
##
## knd = 1
  ## apy0 <- NULL
  ## tmp109 <- NULL
  ## tmp110 <- NULL
  ## tmp111 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_vt_loop_45
    tmp109 <- ATSPMVllazyval_eval(arg0);
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab44
        while(TRUE)
        {
        if(ATSCKptriscons(tmp109)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab45
        while(TRUE)
        {
        ## ATSINSmove_void
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab46
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab47
        while(TRUE)
        {
        tmp110 <- tmp109[[1]];
        tmp111 <- tmp109[[2]];
        ## ATSINSfreecon(tmp109);
        env0[[1]](env0, tmp110);
        ## ATStailcalseq_beg
        apy0 <- tmp111;
        arg0 <- apy0;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_vt_loop_45
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(NULL);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_vt_foreach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret113 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_foreach_method
  tmpret113 <- R_ats2r34pre_stream_vt_patsfun_47__closurerize(arg0);
  return(tmpret113);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_47 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_47
  ats2r34pre_stream_vt_foreach_cloref(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_stream_vt_iforeach_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_iforeach_cloref
  R_ats2r34pre_stream_vt_loop_49(arg1, 0, arg0);
  return(NULL);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_loop_49 <- 
function(env0, arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## tmp117 <- NULL
  ## tmp118 <- NULL
  ## tmp119 <- NULL
  ## tmp121 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_stream_vt_loop_49
    tmp117 <- ATSPMVllazyval_eval(arg1);
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab48
        while(TRUE)
        {
        if(ATSCKptriscons(tmp117)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab49
        while(TRUE)
        {
        ## ATSINSmove_void
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab50
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab51
        while(TRUE)
        {
        tmp118 <- tmp117[[1]];
        tmp119 <- tmp117[[2]];
        ## ATSINSfreecon(tmp117);
        env0[[1]](env0, arg0, tmp118);
        tmp121 <- ats2r34pre_add_int1_int1(arg0, 1);
        ## ATStailcalseq_beg
        apy0 <- tmp121;
        apy1 <- tmp119;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_stream_vt_loop_49
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(NULL);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_stream_vt_iforeach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret122 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_iforeach_method
  tmpret122 <- R_ats2r34pre_stream_vt_patsfun_51__closurerize(arg0);
  return(tmpret122);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_51 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_51
  ats2r34pre_stream_vt_iforeach_cloref(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_stream_vt_rforeach_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_rforeach_cloref
  R_ats2r34pre_stream_vt_auxmain_53(arg1, arg0);
  return(NULL);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_auxmain_53 <- 
function(env0, arg0)
{
##
## knd = 0
  ## tmp126 <- NULL
  ## tmp127 <- NULL
  ## tmp128 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_auxmain_53
  tmp126 <- ATSPMVllazyval_eval(arg0);
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab52
      while(TRUE)
      {
      if(ATSCKptriscons(tmp126)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab53
      while(TRUE)
      {
      ## ATSINSmove_void
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab54
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab55
      while(TRUE)
      {
      tmp127 <- tmp126[[1]];
      tmp128 <- tmp126[[2]];
      ## ATSINSfreecon(tmp126);
      R_ats2r34pre_stream_vt_auxmain_53(env0, tmp128);
      env0[[1]](env0, tmp127);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_stream_vt_rforeach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret130 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_rforeach_method
  tmpret130 <- R_ats2r34pre_stream_vt_patsfun_55__closurerize(arg0);
  return(tmpret130);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_55 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_55
  ats2r34pre_stream_vt_rforeach_cloref(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_stream_vt_tabulate_cloref <- 
function(arg0)
{
##
## knd = 0
  tmpret132 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_stream_vt_tabulate_cloref
  tmpret132 <- R_ats2r34pre_stream_vt_auxmain_57(arg0, 0);
  return(tmpret132);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_auxmain_57 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret133 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_auxmain_57
  tmpret133 <- ATSPMVllazyval(R_ats2r34pre_stream_vt_patsfun_58__closurerize(env0, arg0));
  return(tmpret133);
} ## end-of-function


##defun
R_ats2r34pre_stream_vt_patsfun_58 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret134 <- NULL
  ## tmp135 <- NULL
  ## tmp136 <- NULL
  ## tmp137 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_stream_vt_patsfun_58
  if(arg0) {
    tmp135 <- env0[[1]](env0, env1);
    tmp137 <- ats2r34pre_add_int1_int1(env1, 1);
    tmp136 <- R_ats2r34pre_stream_vt_auxmain_57(env0, tmp137);
    tmpret134 <- list(tmp135, tmp136);
  } else {
  } ## end-of-if
  return(tmpret134);
} ## end-of-function


## ###### ###### ##

## end-of-compilation-unit ##

##
##
## The R(stat) code is generated by atscc2r34
## The starting compilation time is: 2017-10-6: 14h:33m
##
##

##defun
R_ats2r34pre_intrange_patsfun_4__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_4(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_intrange_patsfun_9__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_9(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_intrange_patsfun_11__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_11(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_intrange_patsfun_13__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_13(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_intrange_patsfun_16__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_16(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_intrange_patsfun_20__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_20(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_intrange_patsfun_23__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_23(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_intrange_patsfun_26__closurerize <-
function(env0, env1, env2)
{
  return(list(function(cenv) { return(R_ats2r34pre_intrange_patsfun_26(cenv[[2]], cenv[[3]], cenv[[4]])); }, env0, env1, env2));
}


##defun
R_ats2r34pre_intrange_patsfun_28__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_28(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_intrange_patsfun_31__closurerize <-
function(env0, env1, env2)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_31(cenv[[2]], cenv[[3]], cenv[[4]], arg0)); }, env0, env1, env2));
}


##defun
R_ats2r34pre_intrange_patsfun_33__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_33(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_intrange_patsfun_40__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_40(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_intrange_patsfun_44__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_44(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_intrange_patsfun_48__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_48(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_intrange_patsfun_52__closurerize <-
function(env0, env1, env2)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_intrange_patsfun_52(cenv[[2]], cenv[[3]], cenv[[4]], arg0)); }, env0, env1, env2));
}


##defun
ats2r34pre_int_repeat_lazy <- 
function(arg0, arg1)
{
##
## knd = 0
  ## tmp1 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_repeat_lazy
  tmp1 <- ats2r34pre_lazy2cloref(arg1);
  ats2r34pre_int_repeat_cloref(arg0, tmp1);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_int_repeat_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_repeat_cloref
  R_ats2r34pre_intrange_loop_2(arg0, arg1);
  return(NULL);
} ## end-of-function


##defun
R_ats2r34pre_intrange_loop_2 <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## tmp4 <- NULL
  ## tmp6 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_intrange_loop_2
    tmp4 <- ats2r34pre_gt_int0_int0(arg0, 0);
    if(tmp4) {
      arg1[[1]](arg1);
      tmp6 <- ats2r34pre_sub_int0_int0(arg0, 1);
      ## ATStailcalseq_beg
      apy0 <- tmp6;
      apy1 <- arg1;
      arg0 <- apy0;
      arg1 <- apy1;
      funlab_r34 <- 1; ## __patsflab__ats2r34pre_intrange_loop_2
      ## ATStailcalseq_end
    } else {
      ## ATSINSmove_void
    } ## end-of-if
    if (funlab_r34 > 0) next else return(NULL);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_int_repeat_method <- 
function(arg0)
{
##
## knd = 0
  tmpret7 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_repeat_method
  tmpret7 <- R_ats2r34pre_intrange_patsfun_4__closurerize(arg0);
  return(tmpret7);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_4 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_4
  ats2r34pre_int_repeat_cloref(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_int_exists_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret9 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_exists_cloref
  tmpret9 <- ats2r34pre_intrange_exists_cloref(0, arg0, arg1);
  return(tmpret9);
} ## end-of-function


##defun
ats2r34pre_int_forall_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret10 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_forall_cloref
  tmpret10 <- ats2r34pre_intrange_forall_cloref(0, arg0, arg1);
  return(tmpret10);
} ## end-of-function


##defun
ats2r34pre_int_foreach_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_foreach_cloref
  ats2r34pre_intrange_foreach_cloref(0, arg0, arg1);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_int_exists_method <- 
function(arg0)
{
##
## knd = 0
  tmpret12 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_exists_method
  tmpret12 <- R_ats2r34pre_intrange_patsfun_9__closurerize(arg0);
  return(tmpret12);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_9 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret13 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_9
  tmpret13 <- ats2r34pre_int_exists_cloref(env0, arg0);
  return(tmpret13);
} ## end-of-function


##defun
ats2r34pre_int_forall_method <- 
function(arg0)
{
##
## knd = 0
  tmpret14 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_forall_method
  tmpret14 <- R_ats2r34pre_intrange_patsfun_11__closurerize(arg0);
  return(tmpret14);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_11 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret15 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_11
  tmpret15 <- ats2r34pre_int_forall_cloref(env0, arg0);
  return(tmpret15);
} ## end-of-function


##defun
ats2r34pre_int_foreach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret16 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_foreach_method
  tmpret16 <- R_ats2r34pre_intrange_patsfun_13__closurerize(arg0);
  return(tmpret16);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_13 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_13
  ats2r34pre_int_foreach_cloref(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_int_foldleft_cloref <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret18 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_foldleft_cloref
  tmpret18 <- ats2r34pre_intrange_foldleft_cloref(0, arg0, arg1, arg2);
  return(tmpret18);
} ## end-of-function


##defun
ats2r34pre_int_foldleft_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret19 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_foldleft_method
  tmpret19 <- R_ats2r34pre_intrange_patsfun_16__closurerize(arg0, arg1);
  return(tmpret19);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_16 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret20 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_16
  tmpret20 <- ats2r34pre_int_foldleft_cloref(env0, env1, arg0);
  return(tmpret20);
} ## end-of-function


##defun
ats2r34pre_int_list_map_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret21 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_list_map_cloref
  tmpret21 <- R_ats2r34pre_intrange_aux_18(arg0, arg1, 0);
  return(tmpret21);
} ## end-of-function


##defun
R_ats2r34pre_intrange_aux_18 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret22 <- NULL
  ## tmp23 <- NULL
  ## tmp24 <- NULL
  ## tmp25 <- NULL
  ## tmp26 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_aux_18
  tmp23 <- ats2r34pre_lt_int1_int1(arg0, env0);
  if(tmp23) {
    tmp24 <- env1[[1]](env1, arg0);
    tmp26 <- ats2r34pre_add_int1_int1(arg0, 1);
    tmp25 <- R_ats2r34pre_intrange_aux_18(env0, env1, tmp26);
    tmpret22 <- list(tmp24, tmp25);
  } else {
    tmpret22 <- NULL;
  } ## end-of-if
  return(tmpret22);
} ## end-of-function


##defun
ats2r34pre_int_list_map_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret27 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_list_map_method
  tmpret27 <- R_ats2r34pre_intrange_patsfun_20__closurerize(arg0);
  return(tmpret27);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_20 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret28 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_20
  tmpret28 <- ats2r34pre_int_list_map_cloref(env0, arg0);
  return(tmpret28);
} ## end-of-function


##defun
ats2r34pre_int_list0_map_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret29 <- NULL
  ## tmp30 <- NULL
  ## tmp31 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_list0_map_cloref
  tmp30 <- ats2r34pre_gte_int1_int1(arg0, 0);
  if(tmp30) {
    tmp31 <- ats2r34pre_int_list_map_cloref(arg0, arg1);
    tmpret29 <- tmp31;
  } else {
    tmpret29 <- NULL;
  } ## end-of-if
  return(tmpret29);
} ## end-of-function


##defun
ats2r34pre_int_list0_map_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret32 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_list0_map_method
  tmpret32 <- R_ats2r34pre_intrange_patsfun_23__closurerize(arg0);
  return(tmpret32);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_23 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret33 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_23
  tmpret33 <- ats2r34pre_int_list0_map_cloref(env0, arg0);
  return(tmpret33);
} ## end-of-function


##defun
ats2r34pre_int_stream_map_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret34 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_stream_map_cloref
  tmpret34 <- R_ats2r34pre_intrange_aux_25(arg0, arg1, 0);
  return(tmpret34);
} ## end-of-function


##defun
R_ats2r34pre_intrange_aux_25 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret35 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_aux_25
  tmpret35 <- ATSPMVlazyval(R_ats2r34pre_intrange_patsfun_26__closurerize(env0, env1, arg0));
  return(tmpret35);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_26 <- 
function(env0, env1, env2)
{
##
## knd = 0
  tmpret36 <- NULL
  ## tmp37 <- NULL
  ## tmp38 <- NULL
  ## tmp39 <- NULL
  ## tmp40 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_26
  tmp37 <- ats2r34pre_lt_int1_int1(env2, env0);
  if(tmp37) {
    tmp38 <- env1[[1]](env1, env2);
    tmp40 <- ats2r34pre_add_int1_int1(env2, 1);
    tmp39 <- R_ats2r34pre_intrange_aux_25(env0, env1, tmp40);
    tmpret36 <- list(tmp38, tmp39);
  } else {
    tmpret36 <- NULL;
  } ## end-of-if
  return(tmpret36);
} ## end-of-function


##defun
ats2r34pre_int_stream_map_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret41 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_stream_map_method
  tmpret41 <- R_ats2r34pre_intrange_patsfun_28__closurerize(arg0);
  return(tmpret41);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_28 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret42 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_28
  tmpret42 <- ats2r34pre_int_stream_map_cloref(env0, arg0);
  return(tmpret42);
} ## end-of-function


##defun
ats2r34pre_int_stream_vt_map_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret43 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_stream_vt_map_cloref
  tmpret43 <- R_ats2r34pre_intrange_aux_30(arg0, arg1, 0);
  return(tmpret43);
} ## end-of-function


##defun
R_ats2r34pre_intrange_aux_30 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret44 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_aux_30
  tmpret44 <- ATSPMVllazyval(R_ats2r34pre_intrange_patsfun_31__closurerize(env0, env1, arg0));
  return(tmpret44);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_31 <- 
function(env0, env1, env2, arg0)
{
##
## knd = 0
  tmpret45 <- NULL
  ## tmp46 <- NULL
  ## tmp47 <- NULL
  ## tmp48 <- NULL
  ## tmp49 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_31
  if(arg0) {
    tmp46 <- ats2r34pre_lt_int1_int1(env2, env0);
    if(tmp46) {
      tmp47 <- env1[[1]](env1, env2);
      tmp49 <- ats2r34pre_add_int1_int1(env2, 1);
      tmp48 <- R_ats2r34pre_intrange_aux_30(env0, env1, tmp49);
      tmpret45 <- list(tmp47, tmp48);
    } else {
      tmpret45 <- NULL;
    } ## end-of-if
  } else {
  } ## end-of-if
  return(tmpret45);
} ## end-of-function


##defun
ats2r34pre_int_stream_vt_map_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret50 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int_stream_vt_map_method
  tmpret50 <- R_ats2r34pre_intrange_patsfun_33__closurerize(arg0);
  return(tmpret50);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_33 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret51 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_33
  tmpret51 <- ats2r34pre_int_stream_vt_map_cloref(env0, arg0);
  return(tmpret51);
} ## end-of-function


##defun
ats2r34pre_int2_exists_cloref <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret52 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int2_exists_cloref
  tmpret52 <- ats2r34pre_intrange2_exists_cloref(0, arg0, 0, arg1, arg2);
  return(tmpret52);
} ## end-of-function


##defun
ats2r34pre_int2_forall_cloref <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret53 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int2_forall_cloref
  tmpret53 <- ats2r34pre_intrange2_forall_cloref(0, arg0, 0, arg1, arg2);
  return(tmpret53);
} ## end-of-function


##defun
ats2r34pre_int2_foreach_cloref <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_int2_foreach_cloref
  ats2r34pre_intrange2_foreach_cloref(0, arg0, 0, arg1, arg2);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_intrange_exists_cloref <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret55 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_intrange_exists_cloref
  tmpret55 <- R_ats2r34pre_intrange_loop_38(arg0, arg1, arg2);
  return(tmpret55);
} ## end-of-function


##defun
R_ats2r34pre_intrange_loop_38 <- 
function(arg0, arg1, arg2)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## apy2 <- NULL
  tmpret56 <- NULL
  ## tmp57 <- NULL
  ## tmp58 <- NULL
  ## tmp59 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_intrange_loop_38
    tmp57 <- ats2r34pre_lt_int0_int0(arg0, arg1);
    if(tmp57) {
      tmp58 <- arg2[[1]](arg2, arg0);
      if(tmp58) {
        tmpret56 <- TRUE;
      } else {
        tmp59 <- ats2r34pre_add_int0_int0(arg0, 1);
        ## ATStailcalseq_beg
        apy0 <- tmp59;
        apy1 <- arg1;
        apy2 <- arg2;
        arg0 <- apy0;
        arg1 <- apy1;
        arg2 <- apy2;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_intrange_loop_38
        ## ATStailcalseq_end
      } ## end-of-if
    } else {
      tmpret56 <- FALSE;
    } ## end-of-if
    if (funlab_r34 > 0) next else return(tmpret56);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_intrange_exists_method <- 
function(arg0)
{
##
## knd = 0
  tmpret60 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_intrange_exists_method
  tmpret60 <- R_ats2r34pre_intrange_patsfun_40__closurerize(arg0);
  return(tmpret60);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_40 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret61 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_40
  tmpret61 <- ats2r34pre_intrange_exists_cloref(env0[[1]], env0[[2]], arg0);
  return(tmpret61);
} ## end-of-function


##defun
ats2r34pre_intrange_forall_cloref <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret62 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_intrange_forall_cloref
  tmpret62 <- R_ats2r34pre_intrange_loop_42(arg0, arg1, arg2);
  return(tmpret62);
} ## end-of-function


##defun
R_ats2r34pre_intrange_loop_42 <- 
function(arg0, arg1, arg2)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## apy2 <- NULL
  tmpret63 <- NULL
  ## tmp64 <- NULL
  ## tmp65 <- NULL
  ## tmp66 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_intrange_loop_42
    tmp64 <- ats2r34pre_lt_int0_int0(arg0, arg1);
    if(tmp64) {
      tmp65 <- arg2[[1]](arg2, arg0);
      if(tmp65) {
        tmp66 <- ats2r34pre_add_int0_int0(arg0, 1);
        ## ATStailcalseq_beg
        apy0 <- tmp66;
        apy1 <- arg1;
        apy2 <- arg2;
        arg0 <- apy0;
        arg1 <- apy1;
        arg2 <- apy2;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_intrange_loop_42
        ## ATStailcalseq_end
      } else {
        tmpret63 <- FALSE;
      } ## end-of-if
    } else {
      tmpret63 <- TRUE;
    } ## end-of-if
    if (funlab_r34 > 0) next else return(tmpret63);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_intrange_forall_method <- 
function(arg0)
{
##
## knd = 0
  tmpret67 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_intrange_forall_method
  tmpret67 <- R_ats2r34pre_intrange_patsfun_44__closurerize(arg0);
  return(tmpret67);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_44 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret68 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_44
  tmpret68 <- ats2r34pre_intrange_forall_cloref(env0[[1]], env0[[2]], arg0);
  return(tmpret68);
} ## end-of-function


##defun
ats2r34pre_intrange_foreach_cloref <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_intrange_foreach_cloref
  R_ats2r34pre_intrange_loop_46(arg0, arg1, arg2);
  return(NULL);
} ## end-of-function


##defun
R_ats2r34pre_intrange_loop_46 <- 
function(arg0, arg1, arg2)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## apy2 <- NULL
  ## tmp71 <- NULL
  ## tmp73 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_intrange_loop_46
    tmp71 <- ats2r34pre_lt_int0_int0(arg0, arg1);
    if(tmp71) {
      arg2[[1]](arg2, arg0);
      tmp73 <- ats2r34pre_add_int0_int0(arg0, 1);
      ## ATStailcalseq_beg
      apy0 <- tmp73;
      apy1 <- arg1;
      apy2 <- arg2;
      arg0 <- apy0;
      arg1 <- apy1;
      arg2 <- apy2;
      funlab_r34 <- 1; ## __patsflab__ats2r34pre_intrange_loop_46
      ## ATStailcalseq_end
    } else {
      ## ATSINSmove_void
    } ## end-of-if
    if (funlab_r34 > 0) next else return(NULL);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_intrange_foreach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret74 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_intrange_foreach_method
  tmpret74 <- R_ats2r34pre_intrange_patsfun_48__closurerize(arg0);
  return(tmpret74);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_48 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_48
  ats2r34pre_intrange_foreach_cloref(env0[[1]], env0[[2]], arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_intrange_foldleft_cloref <- 
function(arg0, arg1, arg2, arg3)
{
##
## knd = 0
  tmpret76 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_intrange_foldleft_cloref
  tmpret76 <- R_ats2r34pre_intrange_loop_50(arg3, arg0, arg1, arg2, arg3);
  return(tmpret76);
} ## end-of-function


##defun
R_ats2r34pre_intrange_loop_50 <- 
function(env0, arg0, arg1, arg2, arg3)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## apy2 <- NULL
  ## apy3 <- NULL
  tmpret77 <- NULL
  ## tmp78 <- NULL
  ## tmp79 <- NULL
  ## tmp80 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_intrange_loop_50
    tmp78 <- ats2r34pre_lt_int0_int0(arg0, arg1);
    if(tmp78) {
      tmp79 <- ats2r34pre_add_int0_int0(arg0, 1);
      tmp80 <- arg3[[1]](arg3, arg2, arg0);
      ## ATStailcalseq_beg
      apy0 <- tmp79;
      apy1 <- arg1;
      apy2 <- tmp80;
      apy3 <- env0;
      arg0 <- apy0;
      arg1 <- apy1;
      arg2 <- apy2;
      arg3 <- apy3;
      funlab_r34 <- 1; ## __patsflab__ats2r34pre_intrange_loop_50
      ## ATStailcalseq_end
    } else {
      tmpret77 <- arg2;
    } ## end-of-if
    if (funlab_r34 > 0) next else return(tmpret77);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_intrange_foldleft_method <- 
function(arg0, arg1)
{
##
## knd = 0
  ## tmp81 <- NULL
  ## tmp82 <- NULL
  tmpret83 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_intrange_foldleft_method
  tmp81 <- arg0[[1]];
  tmp82 <- arg0[[2]];
  tmpret83 <- R_ats2r34pre_intrange_patsfun_52__closurerize(tmp81, tmp82, arg1);
  return(tmpret83);
} ## end-of-function


##defun
R_ats2r34pre_intrange_patsfun_52 <- 
function(env0, env1, env2, arg0)
{
##
## knd = 0
  tmpret84 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_intrange_patsfun_52
  tmpret84 <- ats2r34pre_intrange_foldleft_cloref(env0, env1, env2, arg0);
  return(tmpret84);
} ## end-of-function


##defun
ats2r34pre_intrange2_exists_cloref <- 
function(arg0, arg1, arg2, arg3, arg4)
{
##
## knd = 0
  tmpret85 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_intrange2_exists_cloref
  tmpret85 <- R_ats2r34pre_intrange_loop1_54(arg2, arg3, arg4, arg0, arg1, arg2, arg3, arg4);
  return(tmpret85);
} ## end-of-function


##defun
R_ats2r34pre_intrange_loop1_54 <- 
function(env0, env1, env2, arg0, arg1, arg2, arg3, arg4)
{
##
## knd = 2
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## apy2 <- NULL
  ## apy3 <- NULL
  ## apy4 <- NULL
  tmpret86 <- NULL
  ## tmp87 <- NULL
  ## a2rg0 <- NULL
  ## a2rg1 <- NULL
  ## a2rg2 <- NULL
  ## a2rg3 <- NULL
  ## a2rg4 <- NULL
  ## a2py0 <- NULL
  ## a2py1 <- NULL
  ## a2py2 <- NULL
  ## a2py3 <- NULL
  ## a2py4 <- NULL
  tmpret88 <- NULL
  ## tmp89 <- NULL
  ## tmp90 <- NULL
  ## tmp91 <- NULL
  ## tmp92 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  funlab_r34 <- 1;
  while(TRUE) {
    switch(funlab_r34, 
      case1= {
        funlab_r34 <- 0;
        tmp87 <- ats2r34pre_lt_int0_int0(arg0, arg1);
        if(tmp87) {
          ## ATStailcalseq_beg
          a2py0 <- arg0;
          a2py1 <- arg1;
          a2py2 <- arg2;
          a2py3 <- arg3;
          a2py4 <- env2;
          a2rg0 <- a2py0;
          a2rg1 <- a2py1;
          a2rg2 <- a2py2;
          a2rg3 <- a2py3;
          a2rg4 <- a2py4;
          funlab_r34 <- 2; ## __patsflab__ats2r34pre_intrange_loop2_55
          ## ATStailcalseq_end
        } else {
          tmpret86 <- FALSE;
        } ## end-of-if
        if (funlab_r34 > 0) next else return(tmpret86);
      } ## end-of-case
      ,
      case2= {
        funlab_r34 <- 0;
        tmp89 <- ats2r34pre_lt_int0_int0(a2rg2, a2rg3);
        if(tmp89) {
          tmp90 <- a2rg4[[1]](a2rg4, a2rg0, a2rg2);
          if(tmp90) {
            tmpret88 <- TRUE;
          } else {
            tmp91 <- ats2r34pre_add_int0_int0(a2rg2, 1);
            ## ATStailcalseq_beg
            a2py0 <- a2rg0;
            a2py1 <- a2rg1;
            a2py2 <- tmp91;
            a2py3 <- a2rg3;
            a2py4 <- a2rg4;
            a2rg0 <- a2py0;
            a2rg1 <- a2py1;
            a2rg2 <- a2py2;
            a2rg3 <- a2py3;
            a2rg4 <- a2py4;
            funlab_r34 <- 2; ## __patsflab__ats2r34pre_intrange_loop2_55
            ## ATStailcalseq_end
          } ## end-of-if
        } else {
          tmp92 <- ats2r34pre_add_int0_int0(a2rg0, 1);
          ## ATStailcalseq_beg
          apy0 <- tmp92;
          apy1 <- a2rg1;
          apy2 <- env0;
          apy3 <- env1;
          apy4 <- a2rg4;
          arg0 <- apy0;
          arg1 <- apy1;
          arg2 <- apy2;
          arg3 <- apy3;
          arg4 <- apy4;
          funlab_r34 <- 1; ## __patsflab__ats2r34pre_intrange_loop1_54
          ## ATStailcalseq_end
        } ## end-of-if
        if (funlab_r34 > 0) next else return(tmpret88);
      } ## end-of-case
    ) ## end-of-switch
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_intrange2_forall_cloref <- 
function(arg0, arg1, arg2, arg3, arg4)
{
##
## knd = 0
  tmpret93 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_intrange2_forall_cloref
  tmpret93 <- R_ats2r34pre_intrange_loop1_57(arg2, arg3, arg0, arg1, arg2, arg3, arg4);
  return(tmpret93);
} ## end-of-function


##defun
R_ats2r34pre_intrange_loop1_57 <- 
function(env0, env1, arg0, arg1, arg2, arg3, arg4)
{
##
## knd = 2
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## apy2 <- NULL
  ## apy3 <- NULL
  ## apy4 <- NULL
  tmpret94 <- NULL
  ## tmp95 <- NULL
  ## a2rg0 <- NULL
  ## a2rg1 <- NULL
  ## a2rg2 <- NULL
  ## a2rg3 <- NULL
  ## a2rg4 <- NULL
  ## a2py0 <- NULL
  ## a2py1 <- NULL
  ## a2py2 <- NULL
  ## a2py3 <- NULL
  ## a2py4 <- NULL
  tmpret96 <- NULL
  ## tmp97 <- NULL
  ## tmp98 <- NULL
  ## tmp99 <- NULL
  ## tmp100 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  funlab_r34 <- 1;
  while(TRUE) {
    switch(funlab_r34, 
      case1= {
        funlab_r34 <- 0;
        tmp95 <- ats2r34pre_lt_int0_int0(arg0, arg1);
        if(tmp95) {
          ## ATStailcalseq_beg
          a2py0 <- arg0;
          a2py1 <- arg1;
          a2py2 <- arg2;
          a2py3 <- arg3;
          a2py4 <- arg4;
          a2rg0 <- a2py0;
          a2rg1 <- a2py1;
          a2rg2 <- a2py2;
          a2rg3 <- a2py3;
          a2rg4 <- a2py4;
          funlab_r34 <- 2; ## __patsflab__ats2r34pre_intrange_loop2_58
          ## ATStailcalseq_end
        } else {
          tmpret94 <- TRUE;
        } ## end-of-if
        if (funlab_r34 > 0) next else return(tmpret94);
      } ## end-of-case
      ,
      case2= {
        funlab_r34 <- 0;
        tmp97 <- ats2r34pre_lt_int0_int0(a2rg2, a2rg3);
        if(tmp97) {
          tmp98 <- a2rg4[[1]](a2rg4, a2rg0, a2rg2);
          if(tmp98) {
            tmp99 <- ats2r34pre_add_int0_int0(a2rg2, 1);
            ## ATStailcalseq_beg
            a2py0 <- a2rg0;
            a2py1 <- a2rg1;
            a2py2 <- tmp99;
            a2py3 <- a2rg3;
            a2py4 <- a2rg4;
            a2rg0 <- a2py0;
            a2rg1 <- a2py1;
            a2rg2 <- a2py2;
            a2rg3 <- a2py3;
            a2rg4 <- a2py4;
            funlab_r34 <- 2; ## __patsflab__ats2r34pre_intrange_loop2_58
            ## ATStailcalseq_end
          } else {
            tmpret96 <- FALSE;
          } ## end-of-if
        } else {
          tmp100 <- ats2r34pre_add_int0_int0(a2rg0, 1);
          ## ATStailcalseq_beg
          apy0 <- tmp100;
          apy1 <- a2rg1;
          apy2 <- env0;
          apy3 <- env1;
          apy4 <- a2rg4;
          arg0 <- apy0;
          arg1 <- apy1;
          arg2 <- apy2;
          arg3 <- apy3;
          arg4 <- apy4;
          funlab_r34 <- 1; ## __patsflab__ats2r34pre_intrange_loop1_57
          ## ATStailcalseq_end
        } ## end-of-if
        if (funlab_r34 > 0) next else return(tmpret96);
      } ## end-of-case
    ) ## end-of-switch
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_intrange2_foreach_cloref <- 
function(arg0, arg1, arg2, arg3, arg4)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_intrange2_foreach_cloref
  R_ats2r34pre_intrange_loop1_60(arg2, arg3, arg0, arg1, arg2, arg3, arg4);
  return(NULL);
} ## end-of-function


##defun
R_ats2r34pre_intrange_loop1_60 <- 
function(env0, env1, arg0, arg1, arg2, arg3, arg4)
{
##
## knd = 2
  ## apy0 <- NULL
  ## apy1 <- NULL
  ## apy2 <- NULL
  ## apy3 <- NULL
  ## apy4 <- NULL
  ## tmp103 <- NULL
  ## a2rg0 <- NULL
  ## a2rg1 <- NULL
  ## a2rg2 <- NULL
  ## a2rg3 <- NULL
  ## a2rg4 <- NULL
  ## a2py0 <- NULL
  ## a2py1 <- NULL
  ## a2py2 <- NULL
  ## a2py3 <- NULL
  ## a2py4 <- NULL
  ## tmp105 <- NULL
  ## tmp107 <- NULL
  ## tmp108 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  funlab_r34 <- 1;
  while(TRUE) {
    switch(funlab_r34, 
      case1= {
        funlab_r34 <- 0;
        tmp103 <- ats2r34pre_lt_int0_int0(arg0, arg1);
        if(tmp103) {
          ## ATStailcalseq_beg
          a2py0 <- arg0;
          a2py1 <- arg1;
          a2py2 <- arg2;
          a2py3 <- arg3;
          a2py4 <- arg4;
          a2rg0 <- a2py0;
          a2rg1 <- a2py1;
          a2rg2 <- a2py2;
          a2rg3 <- a2py3;
          a2rg4 <- a2py4;
          funlab_r34 <- 2; ## __patsflab__ats2r34pre_intrange_loop2_61
          ## ATStailcalseq_end
        } else {
          ## ATSINSmove_void
        } ## end-of-if
        if (funlab_r34 > 0) next else return(NULL);
      } ## end-of-case
      ,
      case2= {
        funlab_r34 <- 0;
        tmp105 <- ats2r34pre_lt_int0_int0(a2rg2, a2rg3);
        if(tmp105) {
          a2rg4[[1]](a2rg4, a2rg0, a2rg2);
          tmp107 <- ats2r34pre_add_int0_int0(a2rg2, 1);
          ## ATStailcalseq_beg
          a2py0 <- a2rg0;
          a2py1 <- a2rg1;
          a2py2 <- tmp107;
          a2py3 <- a2rg3;
          a2py4 <- a2rg4;
          a2rg0 <- a2py0;
          a2rg1 <- a2py1;
          a2rg2 <- a2py2;
          a2rg3 <- a2py3;
          a2rg4 <- a2py4;
          funlab_r34 <- 2; ## __patsflab__ats2r34pre_intrange_loop2_61
          ## ATStailcalseq_end
        } else {
          tmp108 <- ats2r34pre_succ_int0(a2rg0);
          ## ATStailcalseq_beg
          apy0 <- tmp108;
          apy1 <- a2rg1;
          apy2 <- env0;
          apy3 <- env1;
          apy4 <- a2rg4;
          arg0 <- apy0;
          arg1 <- apy1;
          arg2 <- apy2;
          arg3 <- apy3;
          arg4 <- apy4;
          funlab_r34 <- 1; ## __patsflab__ats2r34pre_intrange_loop1_60
          ## ATStailcalseq_end
        } ## end-of-if
        if (funlab_r34 > 0) next else return(NULL);
      } ## end-of-case
    ) ## end-of-switch
  } ## endwhile-fun
} ## end-of-function


## ###### ###### ##

## end-of-compilation-unit ##

##
##
## The R(stat) code is generated by atscc2r34
## The starting compilation time is: 2017-10-6: 14h:33m
##
##

##defun
ats2r34pre_R34vector_map_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret6 <- NULL
  ## tmp7 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_R34vector_map_cloref
  tmp7 <- ats2r34pre_cloref2fun1(arg1);
  tmpret6 <- ats2r34pre_R34vector_map_fun(arg0, tmp7);
  return(tmpret6);
} ## end-of-function


##defun
ats2r34pre_R34vector_tabulate_cloref <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret8 <- NULL
  ## tmp9 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_R34vector_tabulate_cloref
  tmp9 <- ats2r34pre_cloref2fun1(arg1);
  tmpret8 <- ats2r34pre_R34vector_tabulate_fun(arg0, tmp9);
  return(tmpret8);
} ## end-of-function


## ###### ###### ##

## end-of-compilation-unit ##

##
##
## The R(stat) code is generated by atscc2r34
## The starting compilation time is: 2017-10-6: 14h:33m
##
##

## ###### ###### ##

## end-of-compilation-unit ##

##
##
## The R(stat) code is generated by atscc2r34
## The starting compilation time is: 2017-10-6: 14h:33m
##
##

##defun
ats2r34pre_R34matrix_tabulate_cloref <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret0 <- NULL
  ## tmp1 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_R34matrix_tabulate_cloref
  tmp1 <- ats2r34pre_cloref2fun2(arg2);
  tmpret0 <- ats2r34pre_R34matrix_tabulate_fun(arg0, arg1, tmp1);
  return(tmpret0);
} ## end-of-function


## ###### ###### ##

## end-of-compilation-unit ##

##
##
## The R(stat) code is generated by atscc2r34
## The starting compilation time is: 2017-10-6: 14h:33m
##
##

##defun
R_ats2r34pre_ML_list0_patsfun_31__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_31(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_ML_list0_patsfun_34__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_34(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_ML_list0_patsfun_37__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_37(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_ML_list0_patsfun_40__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_40(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_ML_list0_patsfun_44__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_44(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_ML_list0_patsfun_47__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_47(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_ML_list0_patsfun_50__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_50(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_ML_list0_patsfun_53__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_53(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_ML_list0_patsfun_57__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_57(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_ML_list0_patsfun_60__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_60(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_ML_list0_patsfun_65__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_65(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_ML_list0_patsfun_68__closurerize <-
function(env0)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_68(cenv[[2]], arg0)); }, env0));
}


##defun
R_ats2r34pre_ML_list0_patsfun_74__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_74(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_ML_list0_patsfun_78__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_78(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
R_ats2r34pre_ML_list0_patsfun_82__closurerize <-
function(env0, env1)
{
  return(list(function(cenv, arg0) { return(R_ats2r34pre_ML_list0_patsfun_82(cenv[[2]], cenv[[3]], arg0)); }, env0, env1));
}


##defun
ats2r34pre_ML_list0_head_opt <- 
function(arg0)
{
##
## knd = 0
  tmpret7 <- NULL
  ## tmp8 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_head_opt
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab6
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab7
      while(TRUE)
      {
      tmpret7 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab8
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab9
      while(TRUE)
      {
      tmp8 <- arg0[[1]];
      tmpret7 <- list(tmp8);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret7);
} ## end-of-function


##defun
ats2r34pre_ML_list0_tail_opt <- 
function(arg0)
{
##
## knd = 0
  tmpret10 <- NULL
  ## tmp12 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_tail_opt
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab10
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab11
      while(TRUE)
      {
      tmpret10 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab12
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab13
      while(TRUE)
      {
      tmp12 <- arg0[[2]];
      tmpret10 <- list(tmp12);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret10);
} ## end-of-function


##defun
ats2r34pre_ML_list0_length <- 
function(arg0)
{
##
## knd = 0
  tmpret13 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_length
  tmpret13 <- ats2r34pre_list_length(arg0);
  return(tmpret13);
} ## end-of-function


##defun
ats2r34pre_ML_list0_last_opt <- 
function(arg0)
{
##
## knd = 0
  tmpret14 <- NULL
  ## tmp18 <- NULL
  ## tmp19 <- NULL
  ## tmp20 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_last_opt
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab18
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab19
      while(TRUE)
      {
      tmpret14 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab20
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab21
      while(TRUE)
      {
      tmp18 <- arg0[[1]];
      tmp19 <- arg0[[2]];
      tmp20 <- R_ats2r34pre_ML_list0_loop_8(tmp18, tmp19);
      tmpret14 <- list(tmp20);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret14);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_loop_8 <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret15 <- NULL
  ## tmp16 <- NULL
  ## tmp17 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_ML_list0_loop_8
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab14
        while(TRUE)
        {
        if(ATSCKptriscons(arg1)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab15
        while(TRUE)
        {
        tmpret15 <- arg0;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab16
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab17
        while(TRUE)
        {
        tmp16 <- arg1[[1]];
        tmp17 <- arg1[[2]];
        ## ATStailcalseq_beg
        apy0 <- tmp16;
        apy1 <- tmp17;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_ML_list0_loop_8
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret15);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_ML_list0_init_opt <- 
function(arg0)
{
##
## knd = 0
  tmpret21 <- NULL
  ## tmp26 <- NULL
  ## tmp27 <- NULL
  ## tmp28 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_init_opt
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab26
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab27
      while(TRUE)
      {
      tmpret21 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab28
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab29
      while(TRUE)
      {
      tmp26 <- arg0[[1]];
      tmp27 <- arg0[[2]];
      tmp28 <- R_ats2r34pre_ML_list0_aux_10(tmp26, tmp27);
      tmpret21 <- list(tmp28);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret21);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_aux_10 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret22 <- NULL
  ## tmp23 <- NULL
  ## tmp24 <- NULL
  ## tmp25 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_aux_10
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab22
      while(TRUE)
      {
      if(ATSCKptriscons(arg1)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab23
      while(TRUE)
      {
      tmpret22 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab24
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab25
      while(TRUE)
      {
      tmp23 <- arg1[[1]];
      tmp24 <- arg1[[2]];
      tmp25 <- R_ats2r34pre_ML_list0_aux_10(tmp23, tmp24);
      tmpret22 <- list(arg0, tmp25);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret22);
} ## end-of-function


##defun
ats2r34pre_ML_list0_get_at_opt <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret29 <- NULL
  ## tmp30 <- NULL
  ## tmp31 <- NULL
  ## tmp32 <- NULL
  ## tmp33 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_list0_get_at_opt
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab30
        while(TRUE)
        {
        if(ATSCKptriscons(arg0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab31
        while(TRUE)
        {
        tmpret29 <- NULL;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab32
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab33
        while(TRUE)
        {
        tmp30 <- arg0[[1]];
        tmp31 <- arg0[[2]];
        tmp32 <- ats2r34pre_gt_int1_int1(arg1, 0);
        if(tmp32) {
          tmp33 <- ats2r34pre_sub_int1_int1(arg1, 1);
          ## ATStailcalseq_beg
          apy0 <- tmp31;
          apy1 <- tmp33;
          arg0 <- apy0;
          arg1 <- apy1;
          funlab_r34 <- 1; ## __patsflab_list0_get_at_opt
          ## ATStailcalseq_end
        } else {
          tmpret29 <- list(tmp30);
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret29);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_ML_list0_make_elt <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret34 <- NULL
  ## tmp35 <- NULL
  ## tmp36 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_make_elt
  tmp35 <- ats2r34pre_gte_int1_int1(arg0, 0);
  if(tmp35) {
    tmp36 <- ats2r34pre_list_make_elt(arg0, arg1);
    tmpret34 <- tmp36;
  } else {
    tmpret34 <- NULL;
  } ## end-of-if
  return(tmpret34);
} ## end-of-function


##defun
ats2r34pre_ML_list0_make_intrange_2 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret37 <- NULL
  ## tmp38 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_make_intrange_2
  tmp38 <- ats2r34pre_list_make_intrange_2(arg0, arg1);
  tmpret37 <- tmp38;
  return(tmpret37);
} ## end-of-function


##defun
ats2r34pre_ML_list0_make_intrange_3 <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret39 <- NULL
  ## tmp40 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_make_intrange_3
  tmp40 <- ats2r34pre_list_make_intrange_3(arg0, arg1, arg2);
  tmpret39 <- tmp40;
  return(tmpret39);
} ## end-of-function


##defun
ats2r34pre_ML_list0_snoc <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret52 <- NULL
  ## tmp53 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_snoc
  tmp53 <- ats2r34pre_list_snoc(arg0, arg1);
  tmpret52 <- tmp53;
  return(tmpret52);
} ## end-of-function


##defun
ats2r34pre_ML_list0_extend <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret54 <- NULL
  ## tmp55 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_extend
  tmp55 <- ats2r34pre_list_extend(arg0, arg1);
  tmpret54 <- tmp55;
  return(tmpret54);
} ## end-of-function


##defun
ats2r34pre_ML_list0_append <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret56 <- NULL
  ## tmp57 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_append
  tmp57 <- ats2r34pre_list_append(arg0, arg1);
  tmpret56 <- tmp57;
  return(tmpret56);
} ## end-of-function


##defun
ats2r34pre_ML_mul_int_list0 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret58 <- NULL
  ## tmp59 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_mul_int_list0
  tmp59 <- ats2r34pre_mul_int_list(arg0, arg1);
  tmpret58 <- tmp59;
  return(tmpret58);
} ## end-of-function


##defun
ats2r34pre_ML_list0_reverse <- 
function(arg0)
{
##
## knd = 0
  tmpret60 <- NULL
  ## tmp61 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_reverse
  tmp61 <- ats2r34pre_list_reverse(arg0);
  tmpret60 <- tmp61;
  return(tmpret60);
} ## end-of-function


##defun
ats2r34pre_ML_list0_reverse_append <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret62 <- NULL
  ## tmp63 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_reverse_append
  tmp63 <- ats2r34pre_list_reverse_append(arg0, arg1);
  tmpret62 <- tmp63;
  return(tmpret62);
} ## end-of-function


##defun
ats2r34pre_ML_list0_concat <- 
function(arg0)
{
##
## knd = 0
  tmpret64 <- NULL
  ## tmp65 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_concat
  tmp65 <- ats2r34pre_list_concat(arg0);
  tmpret64 <- tmp65;
  return(tmpret64);
} ## end-of-function


##defun
ats2r34pre_ML_list0_remove_at_opt <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret66 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_remove_at_opt
  tmpret66 <- R_ats2r34pre_ML_list0_aux_28(arg0, 0);
  return(tmpret66);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_aux_28 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret67 <- NULL
  ## tmp68 <- NULL
  ## tmp69 <- NULL
  ## tmp70 <- NULL
  ## tmp71 <- NULL
  ## tmp72 <- NULL
  ## tmp73 <- NULL
  ## tmp74 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_aux_28
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab38
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab39
      while(TRUE)
      {
      tmpret67 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab40
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab41
      while(TRUE)
      {
      tmp68 <- arg0[[1]];
      tmp69 <- arg0[[2]];
      tmp70 <- ats2r34pre_gt_int1_int1(arg1, 0);
      if(tmp70) {
        tmp72 <- ats2r34pre_sub_int1_int1(arg1, 1);
        tmp71 <- R_ats2r34pre_ML_list0_aux_28(tmp69, tmp72);
        ## ATScaseofseq_beg
        tmplab_r34 <- 1;
        while(TRUE) {
          tmplab = tmplab_r34; tmplab_r34 <- 0;
          switch(tmplab, 
            ## ATSbranchseq_beg
            case1={ ##__atstmplab42
            while(TRUE)
            {
            if(ATSCKptriscons(tmp71)) {
              { tmplab_r34 <- 4; break; }
            } ## ifthen
              { tmplab_r34 <- 2; break; }
            }
            },
            case2={ ##__atstmplab43
            while(TRUE)
            {
            tmpret67 <- NULL;
            break;
            }
            },
            ## ATSbranchseq_end
            ## ATSbranchseq_beg
            case3={ ##__atstmplab44
            while(TRUE)
            {
              { tmplab_r34 <- 4; break; }
            }
            },
            case4={ ##__atstmplab45
            while(TRUE)
            {
            tmp73 <- tmp71[[1]];
            ## ATSINSfreecon(tmp71);
            tmp74 <- list(tmp68, tmp73);
            tmpret67 <- list(tmp74);
            break;
            }
            }
            ## ATSbranchseq_end
          ) ## end-of-switch
          if (tmplab_r34 == 0) break;
        } ## endwhile
        ## ATScaseofseq_end
      } else {
        tmpret67 <- list(tmp69);
      } ## end-of-if
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret67);
} ## end-of-function


##defun
ats2r34pre_ML_list0_exists <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret75 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_exists
  tmpret75 <- ats2r34pre_list_exists(arg0, arg1);
  return(tmpret75);
} ## end-of-function


##defun
ats2r34pre_ML_list0_exists_method <- 
function(arg0)
{
##
## knd = 0
  tmpret76 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_exists_method
  tmpret76 <- R_ats2r34pre_ML_list0_patsfun_31__closurerize(arg0);
  return(tmpret76);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_31 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret77 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_31
  tmpret77 <- ats2r34pre_ML_list0_exists(env0, arg0);
  return(tmpret77);
} ## end-of-function


##defun
ats2r34pre_ML_list0_iexists <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret78 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_iexists
  tmpret78 <- ats2r34pre_list_iexists(arg0, arg1);
  return(tmpret78);
} ## end-of-function


##defun
ats2r34pre_ML_list0_iexists_method <- 
function(arg0)
{
##
## knd = 0
  tmpret79 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_iexists_method
  tmpret79 <- R_ats2r34pre_ML_list0_patsfun_34__closurerize(arg0);
  return(tmpret79);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_34 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret80 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_34
  tmpret80 <- ats2r34pre_ML_list0_iexists(env0, arg0);
  return(tmpret80);
} ## end-of-function


##defun
ats2r34pre_ML_list0_forall <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret81 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_forall
  tmpret81 <- ats2r34pre_list_forall(arg0, arg1);
  return(tmpret81);
} ## end-of-function


##defun
ats2r34pre_ML_list0_forall_method <- 
function(arg0)
{
##
## knd = 0
  tmpret82 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_forall_method
  tmpret82 <- R_ats2r34pre_ML_list0_patsfun_37__closurerize(arg0);
  return(tmpret82);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_37 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret83 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_37
  tmpret83 <- ats2r34pre_ML_list0_forall(env0, arg0);
  return(tmpret83);
} ## end-of-function


##defun
ats2r34pre_ML_list0_iforall <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret84 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_iforall
  tmpret84 <- ats2r34pre_list_iforall(arg0, arg1);
  return(tmpret84);
} ## end-of-function


##defun
ats2r34pre_ML_list0_iforall_method <- 
function(arg0)
{
##
## knd = 0
  tmpret85 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_iforall_method
  tmpret85 <- R_ats2r34pre_ML_list0_patsfun_40__closurerize(arg0);
  return(tmpret85);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_40 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret86 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_40
  tmpret86 <- ats2r34pre_ML_list0_iforall(env0, arg0);
  return(tmpret86);
} ## end-of-function


##defun
ats2r34pre_ML_list0_app <- 
function(arg0, arg1)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_app
  ats2r34pre_ML_list0_foreach(arg0, arg1);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_ML_list0_foreach <- 
function(arg0, arg1)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_foreach
  ats2r34pre_list_foreach(arg0, arg1);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_ML_list0_foreach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret89 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_foreach_method
  tmpret89 <- R_ats2r34pre_ML_list0_patsfun_44__closurerize(arg0);
  return(tmpret89);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_44 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_44
  ats2r34pre_ML_list0_foreach(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_ML_list0_iforeach <- 
function(arg0, arg1)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_iforeach
  ats2r34pre_list_iforeach(arg0, arg1);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_ML_list0_iforeach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret92 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_iforeach_method
  tmpret92 <- R_ats2r34pre_ML_list0_patsfun_47__closurerize(arg0);
  return(tmpret92);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_47 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_47
  ats2r34pre_ML_list0_iforeach(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_ML_list0_rforeach <- 
function(arg0, arg1)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_rforeach
  ats2r34pre_list_rforeach(arg0, arg1);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_ML_list0_rforeach_method <- 
function(arg0)
{
##
## knd = 0
  tmpret95 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_rforeach_method
  tmpret95 <- R_ats2r34pre_ML_list0_patsfun_50__closurerize(arg0);
  return(tmpret95);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_50 <- 
function(env0, arg0)
{
##
## knd = 0
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_50
  ats2r34pre_ML_list0_rforeach(env0, arg0);
  return(NULL);
} ## end-of-function


##defun
ats2r34pre_ML_list0_filter <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret97 <- NULL
  ## tmp98 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_filter
  tmp98 <- ats2r34pre_list_filter(arg0, arg1);
  tmpret97 <- tmp98;
  return(tmpret97);
} ## end-of-function


##defun
ats2r34pre_ML_list0_filter_method <- 
function(arg0)
{
##
## knd = 0
  tmpret99 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_filter_method
  tmpret99 <- R_ats2r34pre_ML_list0_patsfun_53__closurerize(arg0);
  return(tmpret99);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_53 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret100 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_53
  tmpret100 <- ats2r34pre_ML_list0_filter(env0, arg0);
  return(tmpret100);
} ## end-of-function


##defun
R_057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2r34_057_SATS_057_ML_057_list0_056_sats__list0_labelize <- 
function(arg0)
{
##
## knd = 0
  tmpret101 <- NULL
  ## tmp102 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_labelize
  tmp102 <- R_057_home_057_hwxi_057_Research_057_ATS_055_Postiats_057_contrib_057_libatscc2r34_057_SATS_057_list_056_sats__list_labelize(arg0);
  tmpret101 <- tmp102;
  return(tmpret101);
} ## end-of-function


##defun
ats2r34pre_ML_list0_map <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret103 <- NULL
  ## tmp104 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_map
  tmp104 <- ats2r34pre_list_map(arg0, arg1);
  tmpret103 <- tmp104;
  return(tmpret103);
} ## end-of-function


##defun
ats2r34pre_ML_list0_map_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret105 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_map_method
  tmpret105 <- R_ats2r34pre_ML_list0_patsfun_57__closurerize(arg0);
  return(tmpret105);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_57 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret106 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_57
  tmpret106 <- ats2r34pre_ML_list0_map(env0, arg0);
  return(tmpret106);
} ## end-of-function


##defun
ats2r34pre_ML_list0_imap <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret107 <- NULL
  ## tmp108 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_imap
  tmp108 <- ats2r34pre_list_imap(arg0, arg1);
  tmpret107 <- tmp108;
  return(tmpret107);
} ## end-of-function


##defun
ats2r34pre_ML_list0_imap_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret109 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_imap_method
  tmpret109 <- R_ats2r34pre_ML_list0_patsfun_60__closurerize(arg0);
  return(tmpret109);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_60 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret110 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_60
  tmpret110 <- ats2r34pre_ML_list0_imap(env0, arg0);
  return(tmpret110);
} ## end-of-function


##defun
ats2r34pre_ML_list0_map2 <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret111 <- NULL
  ## tmp112 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_map2
  tmp112 <- ats2r34pre_list_map2(arg0, arg1, arg2);
  tmpret111 <- tmp112;
  return(tmpret111);
} ## end-of-function


##defun
ats2r34pre_ML_list0_mapcons <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret113 <- NULL
  ## tmp114 <- NULL
  ## tmp115 <- NULL
  ## tmp116 <- NULL
  ## tmp117 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_mapcons
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab46
      while(TRUE)
      {
      if(ATSCKptriscons(arg1)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab47
      while(TRUE)
      {
      tmpret113 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab48
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab49
      while(TRUE)
      {
      tmp114 <- arg1[[1]];
      tmp115 <- arg1[[2]];
      tmp116 <- list(arg0, tmp114);
      tmp117 <- ats2r34pre_ML_list0_mapcons(arg0, tmp115);
      tmpret113 <- list(tmp116, tmp117);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret113);
} ## end-of-function


##defun
ats2r34pre_ML_list0_find_opt <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret118 <- NULL
  ## tmp119 <- NULL
  ## tmp120 <- NULL
  ## tmp121 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_list0_find_opt
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab50
        while(TRUE)
        {
        if(ATSCKptriscons(arg0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab51
        while(TRUE)
        {
        tmpret118 <- NULL;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab52
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab53
        while(TRUE)
        {
        tmp119 <- arg0[[1]];
        tmp120 <- arg0[[2]];
        tmp121 <- arg1[[1]](arg1, tmp119);
        if(tmp121) {
          tmpret118 <- list(tmp119);
        } else {
          ## ATStailcalseq_beg
          apy0 <- tmp120;
          apy1 <- arg1;
          arg0 <- apy0;
          arg1 <- apy1;
          funlab_r34 <- 1; ## __patsflab_list0_find_opt
          ## ATStailcalseq_end
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret118);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_ML_list0_find_opt_method <- 
function(arg0)
{
##
## knd = 0
  tmpret122 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_find_opt_method
  tmpret122 <- R_ats2r34pre_ML_list0_patsfun_65__closurerize(arg0);
  return(tmpret122);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_65 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret123 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_65
  tmpret123 <- ats2r34pre_ML_list0_find_opt(env0, arg0);
  return(tmpret123);
} ## end-of-function


##defun
ats2r34pre_ML_list0_find_suffix <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret124 <- NULL
  ## tmp126 <- NULL
  ## tmp127 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_list0_find_suffix
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab54
        while(TRUE)
        {
        if(ATSCKptriscons(arg0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab55
        while(TRUE)
        {
        tmpret124 <- NULL;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab56
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab57
        while(TRUE)
        {
        tmp126 <- arg0[[2]];
        tmp127 <- arg1[[1]](arg1, arg0);
        if(tmp127) {
          tmpret124 <- arg0;
        } else {
          ## ATStailcalseq_beg
          apy0 <- tmp126;
          apy1 <- arg1;
          arg0 <- apy0;
          arg1 <- apy1;
          funlab_r34 <- 1; ## __patsflab_list0_find_suffix
          ## ATStailcalseq_end
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret124);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_ML_list0_find_suffix_method <- 
function(arg0)
{
##
## knd = 0
  tmpret128 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_find_suffix_method
  tmpret128 <- R_ats2r34pre_ML_list0_patsfun_68__closurerize(arg0);
  return(tmpret128);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_68 <- 
function(env0, arg0)
{
##
## knd = 0
  tmpret129 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_68
  tmpret129 <- ats2r34pre_ML_list0_find_suffix(env0, arg0);
  return(tmpret129);
} ## end-of-function


##defun
ats2r34pre_ML_list0_zip <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret130 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_zip
  tmpret130 <- R_ats2r34pre_ML_list0_aux_70(arg0, arg1);
  return(tmpret130);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_aux_70 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret131 <- NULL
  ## tmp132 <- NULL
  ## tmp133 <- NULL
  ## tmp134 <- NULL
  ## tmp135 <- NULL
  ## tmp136 <- NULL
  ## tmp137 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_aux_70
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab58
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab59
      while(TRUE)
      {
      tmpret131 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab60
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab61
      while(TRUE)
      {
      tmp132 <- arg0[[1]];
      tmp133 <- arg0[[2]];
      ## ATScaseofseq_beg
      tmplab_r34 <- 1;
      while(TRUE) {
        tmplab = tmplab_r34; tmplab_r34 <- 0;
        switch(tmplab, 
          ## ATSbranchseq_beg
          case1={ ##__atstmplab62
          while(TRUE)
          {
          if(ATSCKptriscons(arg1)) {
            { tmplab_r34 <- 4; break; }
          } ## ifthen
            { tmplab_r34 <- 2; break; }
          }
          },
          case2={ ##__atstmplab63
          while(TRUE)
          {
          tmpret131 <- NULL;
          break;
          }
          },
          ## ATSbranchseq_end
          ## ATSbranchseq_beg
          case3={ ##__atstmplab64
          while(TRUE)
          {
            { tmplab_r34 <- 4; break; }
          }
          },
          case4={ ##__atstmplab65
          while(TRUE)
          {
          tmp134 <- arg1[[1]];
          tmp135 <- arg1[[2]];
          tmp136 <- list(tmp132, tmp134);
          tmp137 <- R_ats2r34pre_ML_list0_aux_70(tmp133, tmp135);
          tmpret131 <- list(tmp136, tmp137);
          break;
          }
          }
          ## ATSbranchseq_end
        ) ## end-of-switch
        if (tmplab_r34 == 0) break;
      } ## endwhile
      ## ATScaseofseq_end
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret131);
} ## end-of-function


##defun
ats2r34pre_ML_list0_zipwith <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret138 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_zipwith
  tmpret138 <- R_ats2r34pre_ML_list0_aux_72(arg0, arg1, arg2);
  return(tmpret138);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_aux_72 <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret139 <- NULL
  ## tmp140 <- NULL
  ## tmp141 <- NULL
  ## tmp142 <- NULL
  ## tmp143 <- NULL
  ## tmp144 <- NULL
  ## tmp145 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_aux_72
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab66
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab67
      while(TRUE)
      {
      tmpret139 <- NULL;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab68
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab69
      while(TRUE)
      {
      tmp140 <- arg0[[1]];
      tmp141 <- arg0[[2]];
      ## ATScaseofseq_beg
      tmplab_r34 <- 1;
      while(TRUE) {
        tmplab = tmplab_r34; tmplab_r34 <- 0;
        switch(tmplab, 
          ## ATSbranchseq_beg
          case1={ ##__atstmplab70
          while(TRUE)
          {
          if(ATSCKptriscons(arg1)) {
            { tmplab_r34 <- 4; break; }
          } ## ifthen
            { tmplab_r34 <- 2; break; }
          }
          },
          case2={ ##__atstmplab71
          while(TRUE)
          {
          tmpret139 <- NULL;
          break;
          }
          },
          ## ATSbranchseq_end
          ## ATSbranchseq_beg
          case3={ ##__atstmplab72
          while(TRUE)
          {
            { tmplab_r34 <- 4; break; }
          }
          },
          case4={ ##__atstmplab73
          while(TRUE)
          {
          tmp142 <- arg1[[1]];
          tmp143 <- arg1[[2]];
          tmp144 <- arg2[[1]](arg2, tmp140, tmp142);
          tmp145 <- R_ats2r34pre_ML_list0_aux_72(tmp141, tmp143, arg2);
          tmpret139 <- list(tmp144, tmp145);
          break;
          }
          }
          ## ATSbranchseq_end
        ) ## end-of-switch
        if (tmplab_r34 == 0) break;
      } ## endwhile
      ## ATScaseofseq_end
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret139);
} ## end-of-function


##defun
ats2r34pre_ML_list0_zipwith_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret146 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_zipwith_method
  tmpret146 <- R_ats2r34pre_ML_list0_patsfun_74__closurerize(arg0, arg1);
  return(tmpret146);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_74 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret147 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_74
  tmpret147 <- ats2r34pre_ML_list0_zipwith(env0, env1, arg0);
  return(tmpret147);
} ## end-of-function


##defun
ats2r34pre_ML_list0_foldleft <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret148 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_foldleft
  tmpret148 <- R_ats2r34pre_ML_list0_aux_76(arg2, arg1, arg0);
  return(tmpret148);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_aux_76 <- 
function(env0, arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret149 <- NULL
  ## tmp150 <- NULL
  ## tmp151 <- NULL
  ## tmp152 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_ML_list0_aux_76
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab74
        while(TRUE)
        {
        if(ATSCKptriscons(arg1)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab75
        while(TRUE)
        {
        tmpret149 <- arg0;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab76
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab77
        while(TRUE)
        {
        tmp150 <- arg1[[1]];
        tmp151 <- arg1[[2]];
        tmp152 <- env0[[1]](env0, arg0, tmp150);
        ## ATStailcalseq_beg
        apy0 <- tmp152;
        apy1 <- tmp151;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_ML_list0_aux_76
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret149);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_ML_list0_foldleft_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret153 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_foldleft_method
  tmpret153 <- R_ats2r34pre_ML_list0_patsfun_78__closurerize(arg0, arg1);
  return(tmpret153);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_78 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret154 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_78
  tmpret154 <- ats2r34pre_ML_list0_foldleft(env0, env1, arg0);
  return(tmpret154);
} ## end-of-function


##defun
ats2r34pre_ML_list0_foldright <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret155 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_foldright
  tmpret155 <- R_ats2r34pre_ML_list0_aux_80(arg1, arg2, arg0, arg2);
  return(tmpret155);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_aux_80 <- 
function(env0, env1, arg0, arg1)
{
##
## knd = 0
  tmpret156 <- NULL
  ## tmp157 <- NULL
  ## tmp158 <- NULL
  ## tmp159 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_aux_80
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab78
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab79
      while(TRUE)
      {
      tmpret156 <- arg1;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab80
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab81
      while(TRUE)
      {
      tmp157 <- arg0[[1]];
      tmp158 <- arg0[[2]];
      tmp159 <- R_ats2r34pre_ML_list0_aux_80(env0, env1, tmp158, env1);
      tmpret156 <- env0[[1]](env0, tmp157, tmp159);
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret156);
} ## end-of-function


##defun
ats2r34pre_ML_list0_foldright_method <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret160 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_foldright_method
  tmpret160 <- R_ats2r34pre_ML_list0_patsfun_82__closurerize(arg0, arg1);
  return(tmpret160);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_patsfun_82 <- 
function(env0, env1, arg0)
{
##
## knd = 0
  tmpret161 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_patsfun_82
  tmpret161 <- ats2r34pre_ML_list0_foldright(env0, arg0, env1);
  return(tmpret161);
} ## end-of-function


##defun
ats2r34pre_ML_list0_foldleft_suffix <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret162 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_foldleft_suffix
  tmpret162 <- R_ats2r34pre_ML_list0_aux_84(arg2, arg1, arg0);
  return(tmpret162);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_aux_84 <- 
function(env0, arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret163 <- NULL
  ## tmp165 <- NULL
  ## tmp166 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab__ats2r34pre_ML_list0_aux_84
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab82
        while(TRUE)
        {
        if(ATSCKptriscons(arg1)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab83
        while(TRUE)
        {
        tmpret163 <- arg0;
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab84
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab85
        while(TRUE)
        {
        tmp165 <- arg1[[2]];
        tmp166 <- env0[[1]](env0, arg0, arg1);
        ## ATStailcalseq_beg
        apy0 <- tmp166;
        apy1 <- tmp165;
        arg0 <- apy0;
        arg1 <- apy1;
        funlab_r34 <- 1; ## __patsflab__ats2r34pre_ML_list0_aux_84
        ## ATStailcalseq_end
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret163);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_ML_list0_sort_2 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret169 <- NULL
  ## tmp170 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_sort_2
  tmp170 <- ats2r34pre_list_sort_2(arg0, arg1);
  tmpret169 <- tmp170;
  return(tmpret169);
} ## end-of-function


##defun
ats2r34pre_ML_list0_mergesort <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret171 <- NULL
  ## tmp172 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_mergesort
  tmp172 <- ats2r34pre_list_mergesort(arg0, arg1);
  tmpret171 <- tmp172;
  return(tmpret171);
} ## end-of-function


##defun
ats2r34pre_ML_streamize_list0_zip <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret173 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_streamize_list0_zip
  tmpret173 <- ats2r34pre_streamize_list_zip(arg0, arg1);
  return(tmpret173);
} ## end-of-function


##defun
ats2r34pre_ML_streamize_list0_cross <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret174 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_streamize_list0_cross
  tmpret174 <- ats2r34pre_streamize_list_cross(arg0, arg1);
  return(tmpret174);
} ## end-of-function


##defun
ats2r34pre_ML_list0_head_exn <- 
function(arg0)
{
##
## knd = 0
  tmpret175 <- NULL
  ## tmp176 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_head_exn
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab86
      while(TRUE)
      {
      if(ATSCKptrisnull(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab87
      while(TRUE)
      {
      tmp176 <- arg0[[1]];
      tmpret175 <- tmp176;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab88
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab89
      while(TRUE)
      {
      tmpret175 <- ats2r34pre_ListSubscriptExn_throw();
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret175);
} ## end-of-function


##defun
ats2r34pre_ML_list0_tail_exn <- 
function(arg0)
{
##
## knd = 0
  tmpret178 <- NULL
  ## tmp180 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_tail_exn
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab90
      while(TRUE)
      {
      if(ATSCKptrisnull(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab91
      while(TRUE)
      {
      tmp180 <- arg0[[2]];
      tmpret178 <- tmp180;
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab92
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab93
      while(TRUE)
      {
      tmpret178 <- ats2r34pre_ListSubscriptExn_throw();
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret178);
} ## end-of-function


##defun
ats2r34pre_ML_list0_get_at_exn <- 
function(arg0, arg1)
{
##
## knd = 1
  ## apy0 <- NULL
  ## apy1 <- NULL
  tmpret181 <- NULL
  ## tmp182 <- NULL
  ## tmp183 <- NULL
  ## tmp184 <- NULL
  ## tmp185 <- NULL
  ## var funlab_r34
  ## var tmplab, tmplab_r34
##
  while(TRUE) {
    funlab_r34 <- 0;
    ## __patsflab_list0_get_at_exn
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab94
        while(TRUE)
        {
        if(ATSCKptriscons(arg0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab95
        while(TRUE)
        {
        tmpret181 <- ats2r34pre_ListSubscriptExn_throw();
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab96
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab97
        while(TRUE)
        {
        tmp182 <- arg0[[1]];
        tmp183 <- arg0[[2]];
        tmp184 <- ats2r34pre_gt_int1_int1(arg1, 0);
        if(tmp184) {
          tmp185 <- ats2r34pre_sub_int1_int1(arg1, 1);
          ## ATStailcalseq_beg
          apy0 <- tmp183;
          apy1 <- tmp185;
          arg0 <- apy0;
          arg1 <- apy1;
          funlab_r34 <- 1; ## __patsflab_list0_get_at_exn
          ## ATStailcalseq_end
        } else {
          tmpret181 <- tmp182;
        } ## end-of-if
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
    if (funlab_r34 > 0) next else return(tmpret181);
  } ## endwhile-fun
} ## end-of-function


##defun
ats2r34pre_ML_list0_insert_at_exn <- 
function(arg0, arg1, arg2)
{
##
## knd = 0
  tmpret186 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_insert_at_exn
  tmpret186 <- R_ats2r34pre_ML_list0_aux_94(arg2, arg0, arg1);
  return(tmpret186);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_aux_94 <- 
function(env0, arg0, arg1)
{
##
## knd = 0
  tmpret187 <- NULL
  ## tmp188 <- NULL
  ## tmp189 <- NULL
  ## tmp190 <- NULL
  ## tmp191 <- NULL
  ## tmp192 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_aux_94
  tmp188 <- ats2r34pre_gt_int1_int1(arg1, 0);
  if(tmp188) {
    ## ATScaseofseq_beg
    tmplab_r34 <- 1;
    while(TRUE) {
      tmplab = tmplab_r34; tmplab_r34 <- 0;
      switch(tmplab, 
        ## ATSbranchseq_beg
        case1={ ##__atstmplab98
        while(TRUE)
        {
        if(ATSCKptriscons(arg0)) {
          { tmplab_r34 <- 4; break; }
        } ## ifthen
          { tmplab_r34 <- 2; break; }
        }
        },
        case2={ ##__atstmplab99
        while(TRUE)
        {
        tmpret187 <- ats2r34pre_ListSubscriptExn_throw();
        break;
        }
        },
        ## ATSbranchseq_end
        ## ATSbranchseq_beg
        case3={ ##__atstmplab100
        while(TRUE)
        {
          { tmplab_r34 <- 4; break; }
        }
        },
        case4={ ##__atstmplab101
        while(TRUE)
        {
        tmp189 <- arg0[[1]];
        tmp190 <- arg0[[2]];
        tmp192 <- ats2r34pre_sub_int1_int1(arg1, 1);
        tmp191 <- R_ats2r34pre_ML_list0_aux_94(env0, tmp190, tmp192);
        tmpret187 <- list(tmp189, tmp191);
        break;
        }
        }
        ## ATSbranchseq_end
      ) ## end-of-switch
      if (tmplab_r34 == 0) break;
    } ## endwhile
    ## ATScaseofseq_end
  } else {
    tmpret187 <- list(env0, arg0);
  } ## end-of-if
  return(tmpret187);
} ## end-of-function


##defun
ats2r34pre_ML_list0_remove_at_exn <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret193 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab_list0_remove_at_exn
  tmpret193 <- R_ats2r34pre_ML_list0_aux_96(arg0, arg1);
  return(tmpret193);
} ## end-of-function


##defun
R_ats2r34pre_ML_list0_aux_96 <- 
function(arg0, arg1)
{
##
## knd = 0
  tmpret194 <- NULL
  ## tmp195 <- NULL
  ## tmp196 <- NULL
  ## tmp197 <- NULL
  ## tmp198 <- NULL
  ## tmp199 <- NULL
  ## var tmplab, tmplab_r34
##
  ## __patsflab__ats2r34pre_ML_list0_aux_96
  ## ATScaseofseq_beg
  tmplab_r34 <- 1;
  while(TRUE) {
    tmplab = tmplab_r34; tmplab_r34 <- 0;
    switch(tmplab, 
      ## ATSbranchseq_beg
      case1={ ##__atstmplab102
      while(TRUE)
      {
      if(ATSCKptriscons(arg0)) {
        { tmplab_r34 <- 4; break; }
      } ## ifthen
        { tmplab_r34 <- 2; break; }
      }
      },
      case2={ ##__atstmplab103
      while(TRUE)
      {
      tmpret194 <- ats2r34pre_ListSubscriptExn_throw();
      break;
      }
      },
      ## ATSbranchseq_end
      ## ATSbranchseq_beg
      case3={ ##__atstmplab104
      while(TRUE)
      {
        { tmplab_r34 <- 4; break; }
      }
      },
      case4={ ##__atstmplab105
      while(TRUE)
      {
      tmp195 <- arg0[[1]];
      tmp196 <- arg0[[2]];
      tmp197 <- ats2r34pre_gt_int1_int1(arg1, 0);
      if(tmp197) {
        tmp199 <- ats2r34pre_sub_int1_int1(arg1, 1);
        tmp198 <- R_ats2r34pre_ML_list0_aux_96(tmp196, tmp199);
        tmpret194 <- list(tmp195, tmp198);
      } else {
        tmpret194 <- tmp196;
      } ## end-of-if
      break;
      }
      }
      ## ATSbranchseq_end
    ) ## end-of-switch
    if (tmplab_r34 == 0) break;
  } ## endwhile
  ## ATScaseofseq_end
  return(tmpret194);
} ## end-of-function


## ###### ###### ##

## end-of-compilation-unit ##


## ###### ###### ##

## end of [libatscc2r34_all.R] ##
