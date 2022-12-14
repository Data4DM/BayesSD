/**********************************************************************
Copyright (c) 2012 Duke-NUS Graduate Medical School

Permission is hereby granted, free of charge, to any person obtaining a 
copy of this software and associated documentation files (the 
"Software"), to deal in the Software without restriction, including 
without limitation the rights to use, copy, modify, merge, publish, 
distribute, sublicense, and/or sell copies of the Software, and to 
permit persons to whom the Software is furnished to do so, subject to 
the following conditions:

The above copyright notice and this permission notice shall be included 
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
**********************************************************************/


/****************************************************************************
COHORT functions as external Vensim functions - see the sample venext.c
    file that ships with Vensim for more explanation */
#define COHORT_VERSION 8 /* change this when function prototypes change */
/* it turns out that if an inflow (or in everywhere) depends on tha level under
   control then the rate will be computed before the shift takes place and this
	will result in inconsistent values - to work around this the COHORT SHIFT 
	function is called to execute the shift - it is marked as modifying to is
	executed first - the others will in turn throw an error if this one is no
	in place - extra clutter unforunately 
	*/



#define WANT_WINDOWS_INCLUDES /* the sample implementation of this requires windows includes/libraries */
#define VENEXT_GLOBALS
#include "vensim.h"
#ifdef unix
#include <string.h>
#include <stdlib.h>
#else
#include <malloc.h>
#endif

GLOB_VARS *VENGV='\0'; /* the value for this is set by set_gv below */



/*******************************************
 1 - function ids - used to swich between choices 
 *******************************************/
enum{
      COHORT_CONTROL_FUNC,
      COHORT_CONTROL_INIT_FUNC,
      COHORT_CONTROL_INFLOW_FUNC,
      COHORT_CONTROL_TRANSFER_FUNC,
      COHORT_COUNT_FUNC,
		COHORT_SHIFT_FUNC,
		COHORT_SS_PREVALENCE_COMP_FUNC,
		COHORT_SSMC_PREVALENCE_COMP_FUNC,
		COHORT_ADJUST_FUNC,
      COMPUTE_COPREVALENCE_FUNC,
      COMPUTE_COPREV2_FUNC,
		LIFE_EXPECTANCY_FUNC,
		LPBASED_INCIDENCE_FUNC,

   };

/*******************************************
 2 - function prototypes 
 *******************************************
  each external function is prototyped here
  arguments can reasonably be doubles - for normal number manipulation,
  COMPREAL * for vector manipulation or int for indexing.  Recasting of
  values takes place in 
  Note that if you use more than 1 file for the external function definitions
  you should probably put these prototypes into a #include file.  Also, for
  working with compiled simulation a # include file is helpfule, and should
  be nested into vensim.h

  Note that all the external functions are all upper case.  This is required
  if you want to use compile simulations - since the calls in mdl.c will
  be upper case.  Our apologies to those this offends.
*********************************************/
double COSINE(double x) ;
double INRANGE(double norm,double minval,double maxval) ;
double PSUM(VECTOR_ARG *vec,double num_arg,int maxarg) ;
double MATRIX_INVERT(VECTOR_ARG *invmat,VECTOR_ARG *mat1) ; 
double MATRIX_INPLACE_INVERT(VECTOR_ARG *mat1) ; 
double INTERNAL_ROR(double inval,double time,double minval,double maxval,
             int streamid,double do_compute) ;
double MYMESSAGE(const unsigned char *message,double time) ;
double MYFINDZERO(VECTOR_ARG *x,VECTOR_ARG *y,int narg) ;
double MYLOOKUP(TAB_TYPE *tab,double x) ;
double MYALLTYPES(VECTOR_ARG *lhs,const unsigned char *literal,TAB_TYPE *tab,VECTOR_ARG *vecarg,double x) ;
double MYCONSTDEF(CONSTANT_MATRIX *cmat,const unsigned char *literal) ;
double MYDATADEF(DATA_MATRIX *dmat,const unsigned char *literal) ;
double DISCRETE_AGEING(TAB_TYPE *tav,VECTOR_ARG *lev,VECTOR_ARG *inflow,double spread) ;
double COHORT_CONTROL(VECTOR_ARG *lev,VECTOR_ARG *grouplen,double inat0,double elmcount,double wantcum) ;
double COHORT_CONTROL_INIT(VECTOR_ARG *lev,VECTOR_ARG *grouplen,VECTOR_ARG *init_val,VECTOR_ARG *init_grouplen,double inat0,double elmcount,double init_elmcount,double wantcum) ;
double COHORT_CONTROL_INFLOW(VECTOR_ARG *lev,VECTOR_ARG *grouplen,VECTOR_ARG *ineverywhere,double inat0,double elmcount,double wantcum) ;
double COHORT_CONTROL_TRANSFER(VECTOR_ARG *lev,VECTOR_ARG *grouplen,VECTOR_ARG *ineverywhere,VECTOR_ARG *fromlev,double inat0,double elmcount,double wantcum) ;
double COHORT_COUNT(VECTOR_ARG *lev,double fromtime,double totime) ;
double COHORT_SHIFT(VECTOR_ARG *lev) ;
double COHORT_SSMC_PREVALENCE_COMP(VECTOR_ARG *lhs,VECTOR_ARG *population,VECTOR_ARG *incidence_rate,VECTOR_ARG *remission_rate,VECTOR_ARG *progression_rate,VECTOR_ARG *mortality_rate,VECTOR_ARG *grouplen,VECTOR_ARG *cross,double elmcount) ;
double COHORT_ADJUST(VECTOR_ARG *lev,VECTOR_ARG *data) ;
double COMPUTE_COPREVALENCE(VECTOR_ARG *prevalence,VECTOR_ARG *condition_relationship,double total_pop,double xfor25,double xfor75) ;
double COMPUTE_COPREV2(VECTOR_ARG *prevalence,VECTOR_ARG *condition_relationship) ;
double LIFE_EXPECTANCY(VECTOR_ARG *mortality_rate,VECTOR_ARG *grouplen,double elmcount) ;
double LPBASED_INCIDENCE(VECTOR_ARG *mincidence,VECTOR_ARG *mmaxval,VECTOR_ARG *mprevalence,VECTOR_ARG *mintercept,VECTOR_ARG *mage_alpha,
								  VECTOR_ARG *mcondition_alpha,COMPREAL age) ;


/****************************************************
 3 - Grouping of functions in a structure - see venext.h
 ***********************************************************/

static FUNC_DESC Flist[] = {
                    {"COHORT CONTROL"," {level} , {time_in_group} , {inflow_at_0} , {elmcount} , {want_cum} ",5,2,COHORT_CONTROL_FUNC,0,0,0,0},
                    {"COHORT CONTROL INIT"," {level} , {time_in_group} , {init_lev} , {init_time_in_group} , {inflow_at_0} , {elmcount} , {init_elmcount} , {want_cum} ",8,4,COHORT_CONTROL_INIT_FUNC,0,0,0,0},
                    {"COHORT CONTROL INFLOW"," {level} , {time_in_group} , {inflow_everywhere} , {inflow_at_0} , {elmcount} , {want_cum} ",6,3,COHORT_CONTROL_INFLOW_FUNC,0,0,0,0},
                    {"COHORT CONTROL TRANSFER"," {level} , {time_in_group} , {inflow_everywhere} , {source_lev} , {inflow_at_0} , {elmcount} , {want_cum} ",7,4,COHORT_CONTROL_TRANSFER_FUNC,0,0,0,0},
                    {"COHORT COUNT"," {level} , {from_time} , {to_time} ",3,1,COHORT_COUNT_FUNC,0,0,0,0},
                    {"COHORT SSMC PREVALENCE COMP"," {target} , {on_pop} , {incidence_rate} , {remission_rate} , {progression_rate} , {mortality_rate} , {grouplen} ",7,7,COHORT_SSMC_PREVALENCE_COMP_FUNC,0,1,0,0},
                    {"COHORT SS PREVALENCE COMP",  " {target} , {on_pop} , {incidence_rate} , {remission_rate} , {mortality_rate} , {grouplen} , {elmcount} ",7,6,COHORT_SS_PREVALENCE_COMP_FUNC,0,1,0,0},
						  {"COHORT SHIFT"," {level} ",1,1,COHORT_SHIFT_FUNC,0,1,0,0}, /* only this function is marked modifying so it is executed first */
						  {"COHORT ADJUST", " {level} , {data} ",2,2,COHORT_ADJUST_FUNC,0,1,0,0}, /* also modifying but short chain */
                    {"COMPUTE COPREVALENCE"," {prevalence} , {progre_prob} , {total_pop} , {xfor25} , {xfor75} ",5,2,COMPUTE_COPREVALENCE_FUNC,0,0,0,0},
                    {"COMPUTE COPREV2"," {prevalence} , {progre_prob} ",2,2,COMPUTE_COPREV2_FUNC,0,0,0,0},
						  {"COMPUTE LIFE EXPECTANCY"," {mortality} , {time_in_group} , {elmcount] ",3,2,LIFE_EXPECTANCY_FUNC,0,0,0,0},
						  {"LPBASED INCIDENCE"," {maxval} , {prevalence} , {intercept} , {age_slope} , {dependence_matrix} , {age} ",6,5,LPBASED_INCIDENCE_FUNC,1,0,0,0},
                    {'\0',0,0,0}} ;


int VEFCC version_info()
 {
  return(EXTERNAL_VERSION) ;
  }

/* When you make changes to functions update this. If Vensim opens a .vmf file
   that references aexternal functions and there is a mismatch a message will
   be given indicating that the model should be reformed and cleaned 
   - if you return 0 no checking will occur

  If you have multiple external function libraries you can also use this to 
  signal when a model is not matched to the library (though it won't indicate
  which library should be used) */
unsigned short VEFCC funcversion_info()
{
   return(COHORT_VERSION) ;
   }

int VEFCC set_gv(GLOB_VARS *vgv) 
 {
  VENGV = vgv ;
  if(!VENGV || 
     VENGV->vgv_magic_start != VGV_MAGIC_START ||
     VENGV->vgv_magic_end != VGV_MAGIC_END)
     return 0 ;
  return 1 ;
  }

  /* ****************************
   This function is _exported and called multiple times at Vensim 
   startup with an index  - it returns 1 on success and 0 to 
   indicate the end of the function list.  For convenience the structure
   defined in section 3 is used, but all the functions could also be declared
   with a switch statement on i
 *****************************************************************/

int VEFCC user_definition(
   int i, /* an index for requesting information - this is mapped to Flist
             but could be used another way - vensim repeatedly calls
             user_definition with i bigger by 1 until user_definition returns
             0 */
   unsigned char **sym,/* the name of the function to be used in the Vensim model */
   unsigned char **argument_desc, /* description of arguments to be used by the function */
   int *num_arg, /* the number of arguments (in Vensim) the function takes 
                    note that for user loop functions this will be one less
                    than the number of arguments the function actually takes on */
   int *num_vector, /* the number of arguments that are passed as real number vectors */
   int *func_index, /* a number between 0 and 254 that identifies the function
                       vensim_external is called with this number */
   int *dim_act,  /* reserved - for doing dimensional analysis but not implemented */
   int *modify,  /* a flag to indicate that the function will modify value that
                    are passed to it - 
                    0 is a normal function that does not modify its argument
                    1 is a function that does modify arguments
                    2 is a function that modifies arguments and serves as a solver
                      of a simultaneous set of conditions as FIND_ZERO */
  int *num_loop, /* the number of loops that are managed by the function - 
                    this is nonzero (normally 1 or 2) for a function that 
                    needs to return a vector or matrix of values - if this is
                    nonzero Vensim will put a pointer to the vector or array to
                    be filled in and pass it as the first argument to the function 
                    NOTE use -1 for a constdef function and -2 for a datadef function */

  int *num_literal, /* the number of literals that are passed to the function - 
                       arguments are always passed in the order literals, 
                       lookups, vectors, numbers - if num_loop is set the
                       first argument is a vector even if num_literal is positive */
  int *num_lookup  /* the number of lookup functions passed - this structure is
                      not currently accessible but will be made so in the future */
  )
 {

  if(Flist[i].sym) {
     *sym = (unsigned char *)Flist[i].sym ;
     *argument_desc = (unsigned char *)Flist[i].argument_desc ;
     *num_arg = Flist[i].num_args ;
     *num_vector = Flist[i].num_vector ;
     *func_index = Flist[i].func_index ;
     *dim_act = 0 ;
     *modify = Flist[i].modify ;
     *num_loop = Flist[i].num_loop ;
     *num_literal = Flist[i].num_literal ;
     *num_lookup = Flist[i].num_lookup ;
     return(1) ;
     }
  return(0) ; /* indicating the end of the list */
  }

/*********************************************************************
 6 - startup and shutdown routines
 *********************************************************************
    these two functions (if they exist and are exported) 
    are called before the simulation starts and
    after it ends - in a normal simulation the order is
       simulation_setup(1) ;
       simulation_setup(0) ;
       simulation_shutdown(0) ;
       simulation_shutdown(1) ;
    for an optimization it the middle two calls are repeated for 
    every simulation - the setup routine should return 0 on failure
    the return value is only used when iniflag == 1.  If the function
    returns 0 simulation will not proceed. 
 ******************************************************************/

CFUNCTION int VEFCC simulation_setup(int iniflag)
 {
  return(1) ;
  }
CFUNCTION int VEFCC simulation_shutdown(int finalflag)
 {
   static void ageing_var_cleanup(void) ;
   ageing_var_cleanup() ;
  return(1) ;
  }

/* this is a safety function to validate vector ranges when passing
   vectors to Vensim - you don't need to use it but it will help to 
   prevent nasty memory errors */
static void validate_vector_arg(VECTOR_ARG *v,int firstind,int lastind)
{
   int itemp ;
   if(firstind > lastind) {
      itemp = firstind ;
      firstind = lastind ;
      lastind = itemp ;
      }
   if(v->vals + firstind < v->firstval ||
      v->vals+lastind > v->firstval + v->dim_info->tot_vol) {
      (*VENGV->error_message)(VERROR,(unsigned char *)"Vector argument out of bounds") ;
      v->vals[0] = (COMPREAL)0.0 ;
      v->vals[0] = (COMPREAL)(1.0/v->vals[0]) ; /* generate a floating point exception */
      }
   }


/*********************************************************************
 6 - vensim_external - the actual external function call
 *********************************************************************
   note that all the functions doing floating point are passed and 
   return doubles to prevent any compiler specific problems from 
   arising 
 ******************************************************************/

CFUNCTION int VEFCC vensim_external(VV *val,int nval,int funcid)
 {
  double rval ;

  switch(funcid) {
     case COHORT_CONTROL_FUNC :
        rval = COHORT_CONTROL(val[0].vec,val[1].vec,val[2].val,val[3].val,val[4].val) ;
        break ;
     case COHORT_CONTROL_INIT_FUNC :
        rval = COHORT_CONTROL_INIT(val[0].vec,val[1].vec,val[2].vec,val[3].vec,val[4].val,val[5].val,val[6].val,val[7].val) ;
        break ;
     case COHORT_CONTROL_INFLOW_FUNC :
        rval = COHORT_CONTROL_INFLOW(val[0].vec,val[1].vec,val[2].vec,val[3].val,val[4].val,val[5].val) ;
        break ;
     case COHORT_CONTROL_TRANSFER_FUNC :
        rval = COHORT_CONTROL_TRANSFER(val[0].vec,val[1].vec,val[2].vec,val[3].vec,val[4].val,val[5].val,val[6].val) ;
        break ;
     case COHORT_COUNT_FUNC :
        rval = COHORT_COUNT(val[0].vec,val[1].val,val[2].val) ;
        break ;
	  case COHORT_SS_PREVALENCE_COMP_FUNC :
		  rval = COHORT_SSMC_PREVALENCE_COMP(val[0].vec,val[1].vec,val[2].vec,val[3].vec,'\0',val[4].vec,val[5].vec,'\0',val[6].val) ;
		  break ;
	  case COHORT_SSMC_PREVALENCE_COMP_FUNC :
		  rval = COHORT_SSMC_PREVALENCE_COMP(val[0].vec,val[1].vec,val[2].vec,val[3].vec,val[4].vec,val[5].vec,val[6].vec,'\0',0) ;
		  break ;
	  case COHORT_SHIFT_FUNC :
		  rval = COHORT_SHIFT(val[0].vec) ;
		  break ;
	  case COHORT_ADJUST_FUNC :
		  rval = COHORT_ADJUST(val[0].vec,val[1].vec) ;
		  break ;
     case COMPUTE_COPREVALENCE_FUNC :
        rval = COMPUTE_COPREVALENCE(val[0].vec,val[1].vec,val[2].val,val[3].val,val[4].val) ;
        break ;
     case COMPUTE_COPREV2_FUNC :
        rval = COMPUTE_COPREV2(val[0].vec,val[1].vec) ;
        break ;
	  case LIFE_EXPECTANCY_FUNC :
		  rval = LIFE_EXPECTANCY(val[0].vec,val[1].vec,val[2].val) ;
		  break ;
	  case LPBASED_INCIDENCE_FUNC :
		  rval = LPBASED_INCIDENCE(val[0].vec,val[1].vec,val[2].vec,val[3].vec,val[4].vec,val[5].vec,val[6].val) ;
		  break ;
     default :
       return(0) ; /* indicate an error condition to Vensim */
     }
  /* set val[0], this value will be used in the equation output */
  val[0].val = (COMPREAL)rval ;
  return(1) ; /* a 1 return value signals vensim of successful completetion */
  }


/*************************************************************************
 7 - actual function bodies - these could be a separate file 
 *************************************************************************
 actual function bodies are all set up to use and return doubles
 (except when acting on vectors) this aids portability across different
 platforms and compilers as the C standard for floating point argument
 passing uses doubles.
 *************************************************************************/
typedef struct {
   double val ;
   double outflow ;
   } VAL_OUTFLOW ;
typedef struct _tag_ageing_var {
   COMPREAL *lev_vals ;
   COMPREAL timestamp ;
   struct _tag_ageing_var *next ;
   int npoints ;
   int is_init ;
   VAL_OUTFLOW vo[1] ; /* this is a vector of lenght spread/time step + 1  */
   } AGEING_VAR ;
typedef struct _tag_cohort_group {
   int npoints ;
   double *vals ; /* actually a redirect pointer back to a bigger vector */
   COMPREAL length ; /* from the initial setup */
   double netinflow ; /* for next computation */
   double ineverywhere ; /* for next computation */
   double total_val ;
	double adjust_amount ; /* used with COHORT ADJUST prior to the shift though rates will have already been computed */
   } COHORT_GROUP  ;
typedef struct _tag_cohort_var {
   COMPREAL *lev_vals ;
	struct _tag_cohort_var *fcv ; /* in case it is an in everywhere variant */
   COMPREAL timestamp ;
   struct _tag_cohort_var *next ;
   int ngroup ;
   COHORT_GROUP *cg ;
   int npoints ;
	int needs_init ; /* 0 not, 1 yes from shift, 2 allocated not computed, 3 initialized to steady state 4 to steady state and shift called */
	int needs_adjust ; /* for adjustment of each cohort group from data */
	int wantcum ;
   double inat0 ;
   double vals[1] ;
   } COHORT_VAR ;

static AGEING_VAR *Ageing_var ;
static COHORT_VAR *Cohort_var ;
static double *Scratch_vec ;
static int Scratch_vec_len ;

static void ageing_var_cleanup()
{
   AGEING_VAR *av ;
   COHORT_VAR *cv ;
   while(Ageing_var) {
      av = Ageing_var->next ;
      free(Ageing_var) ;
      Ageing_var = av ;
      }
   while(Cohort_var) {
      cv = Cohort_var->next ;
      free(Cohort_var) ;
      Cohort_var = cv ;
      }
   if(Scratch_vec) { 
      free(Scratch_vec) ;
      Scratch_vec = '\0' ;
      }
   Scratch_vec_len = 0 ;
   }

static void stopsim_error(VECTOR_ARG *v,unsigned char *msg)
{
	(*VENGV->error_message)(VERROR,msg) ;
	v->vals[0] = (COMPREAL)0.0 ;
	v->vals[0] = (COMPREAL)(1.0/v->vals[0]) ; /* generate a floating point exception */\
	}

static int check_subfamily(VECTOR_ARG *lev,VECTOR_ARG *v,const char *vdesc,int subcount)
{
	char buf[2048] ;
	int i ;

	if(!lev || !v)
		return 1 ; /* is OK */
	if(lev->dim_info->tot_dim < subcount) {
		sprintf(buf,"Must have at least %d subscripts for level to use this function",subcount) ;
		}
	else {
		if(v->dim_info->tot_dim < subcount) {
			sprintf(buf,"For COHORT_CONTROL... %s must have at elast %d subscripts",vdesc,subcount) ;
			}
		else {
			for(i=0;i<subcount;i++) {
		      if(v->dim_info->fam[v->dim_info->tot_dim-1-i] != lev->dim_info->fam[lev->dim_info->tot_dim-1-i]) {
					sprintf(buf,"For COHORT_CONTROL... %s must have same final(%d) subscript as Level",vdesc,i) ;
					break ;
					}
				}
			if(i == subcount)
				return 1 ;
			}
		}
   stopsim_error(lev,(unsigned char *)buf) ;
	return 0 ;
	}

static COHORT_VAR *test_and_allocate_vecs(COHORT_VAR *cv,VECTOR_ARG *lev,VECTOR_ARG *grouplen,VECTOR_ARG *init_lev,VECTOR_ARG *init_grouplen,VECTOR_ARG *ineverywhere,VECTOR_ARG *fromlev,double elmcount,double init_elmcount)
{
/* if we have not done this one before fill it in and check to be sure that the final
	subscript is the same as the LHS subscript */
	int ngroup,nvals,nigroup,nivals,k ;
	double nextlen,curlen ;
	int i ;
	COHORT_VAR *tcv ;

	
	if(!check_subfamily(lev,grouplen,"time_in_group",1))
		return '\0' ;
	if(ineverywhere) {
		if(!check_subfamily(lev,ineverywhere,"inflow_everywhere",1))
			return '\0' ;
		}
	if(fromlev) {
		if(!check_subfamily(lev,fromlev,"source_lev",1))
			return '\0' ;
		}
	if(init_lev) {
		if(!init_lev->dim_info->tot_dim) {
			stopsim_error(lev,(unsigned char *)"For COHORT_CONTROL... init_lev must be subscripted") ;
			return '\0' ;
			}
		if(init_grouplen) {
			if(!init_grouplen->dim_info->tot_dim) {
				stopsim_error(lev,(unsigned char *)"For COHORT_CONTROL... init_time_in_group must be subscripted") ;
				return '\0' ;
				}
			if(init_grouplen->dim_info->fam[init_grouplen->dim_info->tot_dim-1] != init_lev->dim_info->fam[init_lev->dim_info->tot_dim-1]) {
				stopsim_error(lev,(unsigned char *)"For COHORT_CONTROL... init_time_in_group must have same final subscript as init_lev") ;
				return '\0' ;
				}
			}
		else {
			stopsim_error(lev,(unsigned char *)"For COHORT_CONTROL... internal error 1") ;
			return '\0' ;
			}
		}
      /* figure out total number of times, last group is mixed so adds only 1 slot
      	no matter how long it is */
	ngroup = lev->dim_info->dim[lev->dim_info->tot_dim-1] ;
	if(elmcount > 0) {
		i = (int)(elmcount+0.5) ;
		if(i > 0 && i < ngroup)
			ngroup = i ;
		}
	if(ngroup < 2) { /* forget it */
		stopsim_error(lev,(unsigned char *)"For COHORT_CONTROL... Level must contain at least 2 groups") ;
		return '\0' ;
		}
	if(init_lev) {
		nigroup = init_lev->dim_info->dim[init_lev->dim_info->tot_dim-1] ;
		if(init_elmcount > 0) {
			i = (int)(init_elmcount+0.5) ;
			if(i > 0 && i < nigroup)
				nigroup = i ;
			}
		if(nigroup < ngroup) { /* forget it */
			stopsim_error(lev,(unsigned char *)"For COHORT_CONTROL... init_lev must contain more groups than lev") ;
			return '\0' ;
			}
		
		/* now make sure the init_groups are evenly divisible into the full groups */
		nextlen = grouplen->vals[0] ;
		nvals = (int)((grouplen->vals[0] + 0.5*VENGV->time_step) / VENGV->time_step) ;
		nivals = 0 ;
		curlen = 0 ;
		for(i=k=0;k < nigroup;k++) {
			curlen += init_grouplen->vals[k] ;
			nivals += (int)((init_grouplen->vals[k] + 0.5*VENGV->time_step) / VENGV->time_step) ;
			if(curlen + VENGV->time_step/2.0 > nextlen) { /* finished this group */
				if(fabs(curlen - nextlen) > VENGV->time_step/10.0) {
					stopsim_error(lev,(unsigned char *)"For COHORT_CONTROL... init_time_in_group must divide into time_in_group") ;
					return '\0' ;
					}
				if(nivals != nvals) {
					stopsim_error(lev,(unsigned char *)"For COHORT_CONTROL... init_time_in_group or time_in_group not time_step multiples") ;
					return '\0' ;
					}
				if(k == nigroup-1) {
					break ; /* done */
					}
				if(i == ngroup-1) {
					stopsim_error(lev,(unsigned char *)"For COHORT_CONTROL... init_time_in_group total longer than time_in_group") ;
					return '\0' ;
					}
				i++ ;
				nextlen += grouplen->vals[i] ;
				nivals = 0 ;
				nvals = (int)((grouplen->vals[i] + 0.5*VENGV->time_step) / VENGV->time_step) ;
				}
			}
		if(i < ngroup-1) {
			stopsim_error(lev,(unsigned char *)"For COHORT_CONTROL... init_time_in_group total shorter than time_in_group") ;
			return '\0' ;
			}
		}
	/* testing is now done - next step is allocat but only if that hasn't happened already
	   (if the steady state prevelence function is called it will allocate and obviate
		the need for initilization) */
	if(cv && cv->needs_init >= 3) { /* verify that elmcount matches ngroup */
		if(ngroup != cv->ngroup) {
			stopsim_error(lev,(unsigned char *)"Check elmcount matches in COHORT CONTROL... and COMP SS PREVALENCE") ;
			return '\0' ;
			}
		cv->needs_init = 0 ; /* done */
		return cv ;
		}
	
	
	
	
	for(i=0,nvals=0;i<ngroup-1;i++) 
		nvals += (int)((grouplen->vals[i] + 0.5*VENGV->time_step) / VENGV->time_step) ; /* should be evenly divisible */
	nvals++ ; /* final group - not split up */
	
	/* pull the old cv out and free it */
	if(cv) {
		if(Cohort_var == cv) {
			Cohort_var = cv->next ;
			free(cv) ;
			}
		else {
			for(tcv=Cohort_var;tcv->next;tcv=tcv->next) {
				if(tcv->next == cv) {
					tcv->next = cv->next ;
					free(cv) ;
					break ;
					}
				}
			}
		}
	
	/* allocate - this assumes TIME STEP is constant - grouplen is used only at initilization */
	cv = (COHORT_VAR *)malloc(sizeof(COHORT_VAR) + (nvals-1)*sizeof(VAL_OUTFLOW) + ngroup*sizeof(COHORT_GROUP)) ;
	if(!cv) {
		stopsim_error(lev,(unsigned char *)"allocation failure in COHORT_CONTROL...") ;
		return '\0' ;
		}
	cv->lev_vals = lev->vals ;
	cv->ngroup = ngroup ;
	cv->npoints = nvals ;
	cv->timestamp = VENGV->time ;
	cv->needs_init = 2 ; /* allocated - but not yet initialized */
	cv->needs_adjust = 0 ;
	cv->cg = (COHORT_GROUP *)(&(cv->vals[nvals])) ;
	for(i=0,nvals=0;i<ngroup;i++) {
		cv->cg[i].vals = cv->vals+nvals ;
		cv->cg[i].length = grouplen->vals[i] ;
		cv->cg[i].npoints = (int)((cv->cg[i].length + 0.5*VENGV->time_step) / VENGV->time_step) ; /* should be evenly divisible */
		cv->cg[i].ineverywhere = 0.0 ;
		nvals += cv->cg[i].npoints ;
		}
	cv->cg[ngroup-1].npoints = 1 ; /* store but ignore length - only 1 group in final */
	cv->next = Cohort_var ;
	Cohort_var = cv ;
	return cv ;
   }


double COHORT_CONTROL_ALL(VECTOR_ARG *lev,VECTOR_ARG *grouplen,VECTOR_ARG *init_lev,VECTOR_ARG *init_grouplen,VECTOR_ARG *ineverywhere,VECTOR_ARG *fromlev,double inat0,double elmcount,double init_elmcount,double wantcum) 
{
   COHORT_VAR *cv,*fcv ;
	double tweight ;
   int i,j,hasneg;
   
   /* find it */
   for(cv=Cohort_var;cv;cv=cv->next) {
      if(cv->lev_vals == lev->vals)
         break ;
      }
	if(!cv || cv->needs_init == 3) {
		stopsim_error(lev,(unsigned char *)"You must have a COHORT SHIFT function for the shifting level") ;
		return NA ;
		}
   fcv = '\0' ;
   if(fromlev) {
      for(fcv=Cohort_var;fcv;fcv=fcv->next) {
         if(fcv->lev_vals == fromlev->vals)
            break ;
         }
		if(!fcv || fcv->needs_init == 3) {
			stopsim_error(lev,(unsigned char *)"You must have a COHORT SHIFT function for the source level") ;
			return NA ;
			}
		}
	if(cv->needs_init) {
		/* first test */
		cv = test_and_allocate_vecs(cv,lev,grouplen,init_lev,init_grouplen,ineverywhere,fromlev,elmcount,init_elmcount) ;
		if(!cv)
			return NA ;
		if(cv->needs_init) { /* otherwise already done */
			int ngroup,nigroup,k ;
			double mavg,mp,rp,lp,nextlen,init_cum,curlen ;
			double ttmult,ptmult,ntmult ;
			int nm1o2,np1o2,no2,i ;
			int tnpoints,pnpoints,nnpoints,basej ;
			COMPREAL *ilev,*igrouplen ;
			double tnpointsm1 ;
			
			
			/* fill in the values making sure that the internal levels connect the
         different groups smoothly by setting the left and right edges to the 
         average of the mean value of this group and the adjacent group and then
         adjusting the middle point (2 points if odd number) so that the total
         adds up correctly  */
			
			
			/* if we have a finer subdivision with init_lev we use the same logic but
         over a larger number of groups - in this case we have to adjust the finer
         values to match up with the more granualar group */
			/* first group has no left component so we just us a straight line to connect
         to the next group */
			
			ngroup = cv->ngroup ;
			if(init_lev && init_grouplen) {
         /* use total_val as a multiplier for each main group applied 
         to the more granular initial values - we assume these share boundaries
				with our lengths */
				nigroup = init_lev->dim_info->dim[init_lev->dim_info->tot_dim-1] ;
				init_cum = 0 ;
				
				i = 0 ;
				nextlen = grouplen->vals[0] ;
				curlen = 0 ;
				for(i=k=0;k < nigroup-1;k++) {
					init_cum += init_lev->vals[k] ;
					curlen += init_grouplen->vals[k] ;
					if(curlen + VENGV->time_step/2.0 > nextlen) { /* finished this group */
						if(lev->vals[i] == 0)
							cv->cg[i].total_val = 0.0 ;
						else
							cv->cg[i].total_val = lev->vals[i]/init_cum ; /* might throw a floating point exception on 0's in this case */
						init_cum = 0.0 ;
						i++ ;
						nextlen += grouplen->vals[i] ;
						}
					}
				for(;i<ngroup;i++)
					cv->cg[i].total_val = lev->vals[i] ;
				ilev = init_lev->vals ;
				igrouplen = init_grouplen->vals ;
				}
			else {
				for(i=0;i<ngroup;i++)
					cv->cg[i].total_val = 1.0 ;
				ilev = lev->vals ;
				igrouplen = grouplen->vals ;
				nigroup = ngroup ; /* same */
				}
			if(fcv && !init_lev && fcv->ngroup == cv->ngroup) { /* allocat preportional to fromlev */
				for(i=0;i<cv->ngroup;i++) { 
					tnpoints = cv->cg[i].npoints ;
					if(fcv->cg[i].total_val > 0) {
						for(j=0;j<tnpoints;j++) {
							cv->cg[i].vals[j] = ilev[i]/(double)tnpoints ; // * fcv->cg[i].vals[j]/fcv->cg[i].total_val ;
							}
						}
					else {
						for(j=0;j<tnpoints;j++) {
							cv->cg[i].vals[j] = ilev[i]/(double)tnpoints ;
							}
						}
					}
				}
			else if(!init_lev && ineverywhere && inat0 == 0) { /* flat + growing by ineverywhere value */
				for(i=0;i<cv->ngroup;i++) {
					tnpoints = cv->cg[i].npoints ;
					mavg = ilev[i] / tnpoints ;
					if(ineverywhere->vals[i] > 0 && tnpoints > 1) {
						rp = ineverywhere->vals[i]*VENGV->time_step ;
						mavg -= rp/2,0 ; 
						for(j=0;j<cv->cg[i].npoints;j++)
							cv->cg[i].vals[j] = mavg + j * rp / (tnpoints-1) ;
						}
					else {
						for(j=0;j<cv->cg[i].npoints;j++)
							cv->cg[i].vals[j] = mavg  ;
						}
#ifdef _TESTING_WANTED
					// testing
					for(rp=0,j=0;j<cv->cg[i].npoints;j++)
						rp += cv->cg[i].vals[j] ;
					if(fabs(rp-ilev[i]) > 1e-8)
						rp += 4 ;
#endif
					}
				
				}
			else {
				k = i = 0 ;
				basej = 0 ;
				
				pnpoints = 0 ;
				tnpoints = (int)((igrouplen[0] + 0.5*VENGV->time_step) / VENGV->time_step) ;
				tnpointsm1 = tnpoints - 1 ;
				nnpoints = (int)((igrouplen[1] + 0.5*VENGV->time_step) / VENGV->time_step) ;
				nextlen = grouplen->vals[0] ;
				curlen = 0 ;
				ptmult = 0 ;
				ttmult = cv->cg[1].total_val ;
				if(igrouplen[0] + VENGV->time_step/2 > nextlen)
					ntmult = cv->cg[1].total_val ;
				else
					ntmult = ttmult ;
				tweight = 0.5 + 0.5/tnpoints ;
				mavg = ilev[0]*ttmult/tnpoints ;
				/* connect using straight lines through center point */
				rp = ilev[1]*ntmult/nnpoints ; 
				rp = mavg + (rp - mavg) * (double)tnpoints / (double)(tnpoints + nnpoints) ;
				lp = 2*mavg - rp ; /* to get correct area */
				if(lp < 0 && mavg >= 0) {
					lp = 0 ;
					rp = 2*mavg ;
					}
				while(1) {
					if(tnpoints < 3) { /* degenerate - just push everything */
						mp = mavg ;
						for(j=0;j<tnpoints;j++)
							cv->vals[basej+j] = mp ;
						}
					else if(tnpoints%2) { /* odd number - the middle point is shared between the two sides */
						np1o2 = (tnpoints+1)/2 ;
						nm1o2 = np1o2 - 1 ;
						mp = tnpoints * (mavg - (lp + rp)/2.0) ; /* this is the total amount we have missed by */
						mp = mp * 2.0 / tnpointsm1 / nm1o2 ; /* increment with j */
						hasneg = 0 ;
						/* left side */
						for(j=0;j<np1o2;j++) {
							cv->vals[basej+j] = lp +  j/tnpointsm1*(rp-lp) + j*mp ;
							if(cv->vals[basej+j] < 0)
								hasneg = 1 ;
							}
						/* right side */
						for(j=0;j<nm1o2;j++) {
							cv->vals[basej+np1o2+j] = lp + (np1o2+j)/tnpointsm1*(rp - lp) + (nm1o2-j-1)*mp ;
							if(cv->vals[basej+np1o2+j] < 0)
								hasneg = 1 ;
							}
						if(hasneg) { /* points would go negative - just do mavg */
							for(j=0;j<tnpoints;j++)
								cv->vals[basej+j] = mavg ;
							}
						}
					else { /* even numbre of points - in this case the total volume will be
							 (lp + rp)/2.0 * n and we need to get the excess/shortfall relative to 
							 ilev  - to do that we deviate from a straight line with the maximum
						deviation at the mid point (the true mid point is between two points) */
						no2 = tnpoints/2 ;
						mp = no2 * (mavg - (lp + rp)/2.0) ; /* this is the total amount we have missed by  on each side (ie 1/2) */
						mp = mp * 2 / no2 / (no2-1) ; /* the increment away from the left or right point */
						
						hasneg = 0 ;
						/* left side */
						for(j=0;j<no2;j++) {
							cv->vals[basej+j] = lp + j/tnpointsm1*(rp-lp) + j*mp ;
							if(cv->vals[basej+j] < 0)
								hasneg = 1 ;
							}
						/* right side */
						for(j=0;j<no2;j++) {
							cv->vals[basej+no2+j] =  lp + (no2+j)/tnpointsm1*(rp-lp) + (no2-j-1)*mp ;
							if(cv->vals[basej+no2+j] < 0)
								hasneg = 1 ;
							}
						if(hasneg) { /* points would go negative - just do mavg */
							for(j=0;j<tnpoints;j++)
								cv->vals[basej+j] = mavg ;
							}
#ifdef xx_DEBUG
						/* flat */
						for(j=0;j<tnpoints;j++)
							cv->vals[basej+j] = mavg ;
#endif
						}
					
#ifdef xxx_DEBUG
					// testing
					for(rp=0,j=0;j<cv->cg[i].npoints;j++)
						rp += cv->cg[i].vals[j] ;
					if(fabs(rp-ilev[i]) > 1e-8)
						rp += 4 ;
#endif

					curlen += igrouplen[k] ;
					/* check to see if we need to proceed to the next main cohort */
					if(curlen + VENGV->time_step/2.0 > nextlen) {
						i++ ;
						if(i == ngroup-1) { /* finished */
							cv->cg[i].vals[0] = lev->vals[i] ;
							break ;
							}
						nextlen += grouplen->vals[i] ;
						}
					/* continue with next initializing cohort */
					basej += tnpoints ;
					k++ ;
					pnpoints = tnpoints ;
					tnpoints = nnpoints ;
					tweight = 0.5 + 0.5/tnpoints ;
					tnpointsm1 = tnpoints - 1.0 ;
					nnpoints = (int)((igrouplen[k+1] + 0.5*VENGV->time_step) / VENGV->time_step) ;
					ptmult = ttmult ;
					ttmult = ntmult ;
					if(curlen+VENGV->time_step/2.0 > nextlen)
						ntmult = cv->cg[i+1].total_val ;
					else
						ntmult = cv->cg[i].total_val ;

				

					
					if(k >= nigroup-2) { 
						if(k == nigroup-1) { /* finished - last is just one point */
							(*VENGV->error_message)(VERROR,(unsigned char *)"For COHORT_CONTROL... internal error ") ;
							return NA ;
							}
						else { /* right is not meaningful (just a lumped point), use same as first group */
							mavg = ilev[k]*ttmult/tnpoints ;
							lp = ilev[k-1]*ptmult/pnpoints ; 
							lp = lp + (mavg-lp)*tnpoints/(double)(tnpoints+pnpoints) ;
							rp = 2*mavg - lp ; /* to get correct area */
							if(rp < 0 && mavg >= 0) {
								rp = 0 ;
								lp = 2*mavg ;
								}
							}
						}
					else {
						mavg = ilev[k]*ttmult/tnpoints ;
						lp = (ilev[k-1]*ptmult/pnpoints) ; 
						lp = lp + (mavg-lp)*tnpoints/(double)(tnpoints+pnpoints) ;
						rp = (ilev[k+1]*ntmult/nnpoints) ; 
						rp = mavg + (rp-mavg)*tnpoints/(double)(tnpoints+nnpoints) ;
						}
					}
				}
			/* now reset total_val */
			for(i=0;i<cv->ngroup;i++)
				cv->cg[i].total_val = lev->vals[i] ;
			cv->needs_init = 0 ; /* on now */
			}
      }
    cv->wantcum = (wantcum > 0?1:0) ; /* could change */
    cv->fcv = fcv ; /* need the active one - at init might disappear */
   /* record the in at 0 - the net flows will be derived
      from the change in state value */
   cv->inat0 = inat0 * VENGV->time_step ;
   if(ineverywhere) {
      for(i=0;i<cv->ngroup;i++)
         cv->cg[i].ineverywhere = ineverywhere->vals[i]*VENGV->time_step ;
      }


   return cv->cg[0].total_val ;
   }

/* compute steady state number of individuals given in/out rates and progression - not we will actually 
   fill in the full set of subdivisions for the target which must be part of a COHORT SHIFT computation */
double COHORT_SS_PREVALENCE_COMP(VECTOR_ARG *lev,VECTOR_ARG *population,VECTOR_ARG *incidence_rate,VECTOR_ARG *remission_rate,
		VECTOR_ARG *mortality_rate,VECTOR_ARG *grouplen,double elmcount)
{
	COHORT_VAR *cv ;
	int i,j,needs_init ;
	double rval,curval,totval,lossfrac,inflow ;
	double priorstart,priorval,priortot ;
	double incidence,frac ;

   /* find it */
   for(cv=Cohort_var;cv;cv=cv->next) {
      if(cv->lev_vals == lev->vals)
         break ;
      }
	if(cv && cv->needs_init == 1)
		needs_init = 4 ;
	else
		needs_init = 3 ;
	if(!cv || cv->needs_init == 1)
		cv = test_and_allocate_vecs(cv,lev,grouplen,'\0','\0','\0','\0',elmcount,0) ;
	else {
		stopsim_error(lev,(unsigned char *)"COHORT SS PREVALENCE COMP failure1 - check COHORT SHIFT usage") ;
		return NA ;
		}

	if(!cv || cv->needs_init != 2) {
		stopsim_error(lev,(unsigned char *)"COHORT SS PREVALENCE COMP failure2 - check COHORT SHIFT usage") ;
		return NA ;
		}
	/* validate subs on other elements - need to be 2 deep here */
   if(!check_subfamily(lev,population,"on_pop",1)
	|| !check_subfamily(lev,incidence_rate,"incidence_rate",1)
	|| !check_subfamily(lev,remission_rate,"remission_rate",1)
	|| !check_subfamily(lev,mortality_rate,"mortality rate",1)
	 ) 
	 return '\0' ;

	for(i=0,priorstart=0;i<cv->ngroup-1;i++) {
		lossfrac = 1.0 - (remission_rate->vals[i] + mortality_rate->vals[i]) * VENGV->time_step ;
		incidence = incidence_rate->vals[i] ;
		inflow = VENGV->time_step / (double)cv->cg[i].npoints ; /* rate of 1.0 */
		/* the total amount in the group with an inflow of 1 */
		for(j=0,priortot=curval=totval=0.0,priorval=priorstart;j<cv->cg[i].npoints;j++) {
			priortot += priorval ;
			priorval *= lossfrac ;
			totval += curval ;
			curval *= lossfrac ;
			curval += inflow ;
			}
		frac = (priortot/population->vals[i] + incidence * totval) / (1.0 + incidence * totval) ; /* stready state fraction */
		inflow *= (1.0 - frac) * population->vals[i] * incidence ;
		for(j=0,curval=priorstart,totval=0.0;j<cv->cg[i].npoints;j++) {
			cv->cg[i].vals[j] = curval ;
			totval += curval ;
			curval *= lossfrac ;
			curval += inflow ;
			}
		priorstart = curval ; /* in the first slot of the next group */
		cv->cg[i].total_val = totval ;
		}
	/* last group cumulative so different logic */
	lossfrac = 1.0 - (remission_rate->vals[i] + mortality_rate->vals[i]) * VENGV->time_step ;
	incidence = incidence_rate->vals[i] ;
	inflow = VENGV->time_step  ; /* rate of 1.0 */
	priortot = priorstart/(1.0 - lossfrac) ;
	totval = VENGV->time_step/(1.0 - lossfrac) ;
	frac = (priortot/population->vals[i] + incidence * totval) / (1.0 + incidence * totval) ; /* stready state fraction */
	cv->cg[i].vals[0] = cv->cg[i].total_val = population->vals[i] * frac ;

   for(rval = 0,i=0;i<cv->ngroup;i++) {
	   lev->vals[i] = (COMPREAL)cv->cg[i].total_val ;
		rval += cv->cg[i].total_val ;
		}
	cv->needs_init = needs_init ; 

	return rval ;
	}

	/* compute steady state number of individuals given in/out rates and progression - not we will actually 
   fill in the full set of subdivisions for the target which must be part of a COHORT SHIFT computation */
double old_COHORT_SSMC_PREVALENCE_COMP(VECTOR_ARG *lev,VECTOR_ARG *population,VECTOR_ARG *incidence_rate,VECTOR_ARG *remission_rate,
		VECTOR_ARG *progression_rate,VECTOR_ARG *mortality_rate,VECTOR_ARG *grouplen)
{
	COHORT_VAR *cv,*pcv ;
	int i,j,needs_init ;
	double rval,curval,totval,lossfrac,inflow ;
	double priorstart,priorval,priortot ;
	double incidence,frac,mortality ;

   /* find it */
   for(cv=Cohort_var;cv;cv=cv->next) {
      if(cv->lev_vals == lev->vals)
         break ;
      }
	if(cv && cv->needs_init == 1)
		needs_init = 4 ;
	else
		needs_init = 3 ;
	if(!cv || cv->needs_init == 1)
		cv = test_and_allocate_vecs(cv,lev,grouplen,'\0','\0','\0','\0',0,0) ;
	else {
		stopsim_error(lev,(unsigned char *)"COHORT SS PREVALENCE COMP failure1 - check COHORT SHIFT usage") ;
		return NA ;
		}

	if(!cv || cv->needs_init != 2) {
		stopsim_error(lev,(unsigned char *)"COHORT SS PREVALENCE COMP failure2 - check COHORT SHIFT usage") ;
		return NA ;
		}
	/* validate subs on other elements - need to be 2 deep here */
   if(!check_subfamily(lev,population,"on_pop",1)
	|| !check_subfamily(lev,incidence_rate,"incidence_rate",2)
	|| !check_subfamily(lev,remission_rate,"remission_rate",2)
	|| !check_subfamily(lev,progression_rate,"progression_rate",2)
	|| !check_subfamily(lev,mortality_rate,"mortality rate",2)
	 ) 
	 return '\0' ;

	/* for conditions without an incidence we reach back into the previous condition's
	   allocation and recompute that down by the prior progression - note that this
	   means that incidence has to be 0 for all age groups before progression will be
	   used at all so one needs to be careful */
	for(i=0;i<cv->ngroup;i++) {
		if(incidence_rate->vals[i] != 0.0) {
			break ;
			}
		}
	if(i == cv->ngroup) {
		/* find prior for progression  */
		for(pcv=Cohort_var;pcv;pcv=pcv->next) {
			if(pcv->lev_vals == lev->vals-cv->ngroup)
				break ;
			}
		if(!pcv) { /* issue a warning- but continue with 0 incidence */
			char wmsg[250],varname[200] ;
			(*VENGV->error_message)(WARNING,"COHORT SSMC PREVALENCE COMP no prior condition 0 incidence") ;
			(*VENGV->varname_from_offset)(lev->vals-VENGV->LEVEL,varname,200) ;
			sprintf(wmsg,"   computing %s",varname) ;
			(*VENGV->error_message)(WARNING,wmsg) ;
			}
		}
	if(pcv) {
		/* we do this itty bitty group by group  */
		priorval = 0 ;
		for(i=0;i<cv->ngroup;i++) {
			/* amount to decrease old grab */
			lossfrac = 1.0 - (remission_rate->vals[i-cv->ngroup] + mortality_rate->vals[i-cv->ngroup])*VENGV->time_step ;
			frac = progression_rate->vals[i-cv->ngroup] * VENGV->time_step ;
			for(totval = 0.0,j=0;j<cv->cg[i].npoints;j++) {
				priorval *= lossfrac ;
				if(priorval > pcv->cg[i].vals[j])
					priorval = pcv->cg[i].vals[j] ;
				curval = priorval + (pcv->cg[i].vals[j] -priorval) * frac ;
				priorval = curval ;
				totval += curval ;
				pcv->cg[i].vals[j] -= curval ;
				cv->cg[i].vals[j] = curval ;
				}
			pcv->cg[i].total_val -= totval ;
			pcv->lev_vals[i] = (COMPREAL)pcv->cg[i].total_val ;
			cv->cg[i].total_val = totval ;
			}
				
		}
	else {
		for(i=0,priorstart=0;i<cv->ngroup-1;i++) {
			/* check the mortality rate implied by the population groups */
			if(i == cv->ngroup-2) {
				mortality = 0 ;
				}
			else {
			   mortality = (population->vals[i]/grouplen->vals[i] - population->vals[i+1]/grouplen->vals[i+1]) /
					    (population->vals[i]/grouplen->vals[i]) ;
				}
			if(mortality < mortality_rate->vals[i])
				mortality = mortality_rate->vals[i] ;

			lossfrac = 1.0 - (remission_rate->vals[i] + mortality) * VENGV->time_step ;
			incidence = incidence_rate->vals[i] ;
			inflow = VENGV->time_step / (double)cv->cg[i].npoints ; /* rate of 1.0 */
			/* the total amount in the group with an inflow of 1 */
			for(j=0,priortot=curval=totval=0.0,priorval=priorstart;j<cv->cg[i].npoints;j++) {
				priortot += priorval ;
				priorval *= lossfrac ;
				totval += curval ;
				curval *= lossfrac ;
				curval += inflow ;
				}
			if(priortot > population->vals[i]) { /* probably a mismatch in in mortality numbers - compensat */
				priorstart = population->vals[i]/priortot ;
				frac = 1.0 ;
				}
			else
			   frac = (priortot/population->vals[i] + incidence * totval) / (1.0 + incidence * totval) ; /* stready state fraction */
			inflow *= (1.0 - frac) * population->vals[i] * incidence ;
			for(j=0,curval=priorstart,totval=0.0;j<cv->cg[i].npoints;j++) {
				cv->cg[i].vals[j] = curval ;
				totval += curval ;
				curval *= lossfrac ;
				curval += inflow ;
				}
			priorstart = curval ; /* in the first slot of the next group */
			cv->cg[i].total_val = totval ;
			}
		/* last group cumulative so different logic */
		lossfrac = 1.0 - (remission_rate->vals[i] + mortality_rate->vals[i]) * VENGV->time_step ;
		incidence = incidence_rate->vals[i] ;
		inflow = VENGV->time_step  ; /* rate of 1.0 */
		priortot = priorstart/(1.0 - lossfrac) ;
		totval = VENGV->time_step/(1.0 - lossfrac) ;
		if(priortot > population->vals[i])
			frac = 1 ;
		else
		   frac = (priortot/population->vals[i] + incidence * totval) / (1.0 + incidence * totval) ; /* stready state fraction */
		cv->cg[i].vals[0] = cv->cg[i].total_val = population->vals[i] * frac ;
		}
	/* note that at the end of this if the progression rate is positive the first entry
	   holds everybody for itself and the subsequent entries - when the subsequent entries
		are done (recognized by the 0 incidence rate) they will reach back and pull out 
		some of the values from the previous computations */
		
   for(rval = 0,i=0;i<cv->ngroup;i++) {
	   lev->vals[i] = (COMPREAL)cv->cg[i].total_val ;
		rval += cv->cg[i].total_val ;
		}
	cv->needs_init = needs_init ; 

	return rval ;
	}



#define xxxxxVERSION1C
	/* compute steady state number of individuals given in/out rates and progression - not we will actually 
   fill in the full set of subdivisions for the target which must be part of a COHORT SHIFT computation */
double COHORT_SSMC_PREVALENCE_COMP(VECTOR_ARG *lev,VECTOR_ARG *population,VECTOR_ARG *incidence_rate,VECTOR_ARG *remission_rate,
		VECTOR_ARG *progression_rate,VECTOR_ARG *mortality_rate,VECTOR_ARG *grouplen,VECTOR_ARG *cross_incidence_impact,double elmcount)
{
	COHORT_VAR *cv,*pcv,*popcv ;
	int i,j,needs_init ;
	double rval,curval,totval,lossfrac ;
#ifdef VERSION1C
	double priorstart,priortot,popval,poptot,poplossfrac,inflow,popstart ;
#endif
	double incidence,frac,priorval ;
	int deep ;

   /* find it */
   for(cv=Cohort_var;cv;cv=cv->next) {
      if(cv->lev_vals == lev->vals)
         break ;
      }
	if(cv && (cv->needs_init == 1 || cv->needs_init == 4))
		needs_init = 4 ;
	else
		needs_init = 3 ;
	if(!cv || cv->needs_init == 1)
		cv = test_and_allocate_vecs(cv,lev,grouplen,'\0','\0','\0','\0',elmcount,0) ;
	else if(cv->needs_init != 4) { /* 4 happens on a doublecall to this function  - OK */
		stopsim_error(lev,(unsigned char *)"COHORT SS PREVALENCE COMP failure1 - check COHORT SHIFT usage") ;
		return NA ;
		}
	if(!cv || cv->needs_init != 2 && cv->needs_init != 4) {
		stopsim_error(lev,(unsigned char *)"COHORT SS PREVALENCE COMP failure2 - check COHORT SHIFT usage") ;
		return NA ;
		}

	
#ifndef VERSION1C
	/* find popcv */
   for(popcv=Cohort_var;popcv;popcv=popcv->next) {
      if(popcv->lev_vals == population->vals)
         break ;
      }
	if(popcv && popcv->needs_init) {
		}
	if(!popcv || popcv->needs_init) {
		stopsim_error(lev,(unsigned char *)"COHORT SS PREVALENCE COMP can't find population") ;
		return NA ;
		}
#endif

	
	/* validate subs on other elements - need to be 2 deep here */
	if(progression_rate)
		deep = 2 ;
	else 
		deep = 1 ;
   if(!check_subfamily(lev,population,"on_pop",1)
	|| !check_subfamily(lev,incidence_rate,"incidence_rate",deep)
	|| !check_subfamily(lev,remission_rate,"remission_rate",deep)
	|| !check_subfamily(lev,progression_rate,"progression_rate",deep)
	|| !check_subfamily(lev,mortality_rate,"mortality rate",deep)
	 ) 
	 return '\0' ;


	/* not used - this requires managing all subscripts and seems like to over complicatest things
	   as an alternative try two call to function in the model */
	if(cross_incidence_impact) { 
		/* should be two subscripts the same as the second last in incidence_rate */
		if(cross_incidence_impact->dim_info->tot_dim < 2) {
			stopsim_error(lev,"Must have at least 2 subscripts for cross_impact to use this function") ;
			return NA ;
			}
		/* must match the second last subscript for incidence rate */
		if(lev->dim_info->fam[lev->dim_info->tot_dim-2] != 
			cross_incidence_impact->dim_info->fam[cross_incidence_impact->dim_info->tot_dim-1]) {
			stopsim_error(lev,"Last subscript in cross_impact must match second last in level") ;
			return NA ;
			}
		/* must match the second last subscript for incidence rate */
		if(lev->dim_info->fam[lev->dim_info->tot_dim-2] != 
			cross_incidence_impact->dim_info->fam[cross_incidence_impact->dim_info->tot_dim-2]) {
			stopsim_error(lev,"Second last subscript in cross_impact must match second last in level") ;
			return NA ;
			}
		}

	/* for conditions without an incidence we reach back into the previous condition's
	   allocation and recompute that down by the prior progression - note that this
	   means that incidence has to be 0 for all age groups before progression will be
	   used at all so one needs to be careful */
	for(i=0;i<cv->ngroup;i++) {
		if(incidence_rate->vals[i] != 0.0) {
			break ;
			}
		}
	if(i == cv->ngroup && progression_rate) {
		/* find prior for progression  */
		for(pcv=Cohort_var;pcv;pcv=pcv->next) {
			if(pcv->lev_vals == lev->vals-cv->ngroup)
				break ;
			}
		if(!pcv) { /* issue a warning- but continue with 0 incidence */
			char wmsg[250],varname[200] ;
			(*VENGV->error_message)(WARNING,"COHORT SSMC PREVALENCE COMP no prior condition 0 incidence") ;
			(*VENGV->varname_from_offset)(lev->vals-VENGV->LEVEL,varname,200) ;
			sprintf(wmsg,"   computing %s",varname) ;
			(*VENGV->error_message)(WARNING,wmsg) ;
			}
		}
	else
		pcv = '\0' ;
	if(pcv) {
#ifdef VERSION1C
		/* we do this itty bitty group by group  */
		priorval = 0 ;
		for(i=0;i<cv->ngroup;i++) {
			/* amount to decrease old grab */
			lossfrac = 1.0 - (remission_rate->vals[i-cv->ngroup] + mortality_rate->vals[i-cv->ngroup])*VENGV->time_step ;
			frac = progression_rate->vals[i-cv->ngroup] * VENGV->time_step ;
			for(totval = 0.0,j=0;j<cv->cg[i].npoints;j++) {
				priorval *= lossfrac ;
				if(priorval > pcv->cg[i].vals[j])
					priorval = pcv->cg[i].vals[j] ;
				curval = priorval + (pcv->cg[i].vals[j] -priorval) * frac ;
				priorval = curval ;
				totval += curval ;
				pcv->cg[i].vals[j] -= curval ;
				cv->cg[i].vals[j] = curval ;
				}
			pcv->cg[i].total_val -= totval ;
			pcv->lev_vals[i] = (COMPREAL)pcv->cg[i].total_val ;
			cv->cg[i].total_val = totval ;
			}
#else
		/* assume that the predecessor penetration is in steady state for
		   the entire progression sequence (or what is left of it) and then
		   compute the fraction of all people that would have the condition 
		   under those circumstances but check to make sure we don't get more
		   people than the predecessor sequence */
		for(i=0,curval=priorval=0;i<cv->ngroup-1;i++) {
			totval = 0 ;
			lossfrac = 1.0 - (remission_rate->vals[i] + mortality_rate->vals[i]) * VENGV->time_step ;
			frac = progression_rate->vals[i-cv->ngroup] * VENGV->time_step ;
			for(j=0;j<cv->cg[i].npoints;j++) {
				if(popcv->cg[i].vals[j] > 0)
				   priorval = pcv->cg[i].vals[j] / popcv->cg[i].vals[j] ;
				else
					priorval = 1.0 ;
				if(curval > priorval)
					curval = priorval ;
				rval = popcv->cg[i].vals[j] * curval ;
				cv->cg[i].vals[j] = rval ;
				pcv->cg[i].vals[j] -= rval ;
				totval += rval ;
				curval *= lossfrac ;
				curval +=  frac * (priorval-curval) ;
				}
			cv->cg[i].total_val = totval ;
			pcv->cg[i].total_val -= totval ;
			pcv->lev_vals[i] = (COMPREAL)pcv->cg[i].total_val ;
			}
      /* the last group inherits comes closer to running to steady state
		   just do 200 more iteratons a the new prevalence building/dropping
		   it down */
		lossfrac = 1.0 - (remission_rate->vals[i] + mortality_rate->vals[i]) * VENGV->time_step ;
		frac = progression_rate->vals[i-cv->ngroup] * VENGV->time_step ;
		priorval = pcv->cg[i].vals[0] / popcv->cg[i].vals[0] ;
		for(j=0;j<200;j++) {
			if(curval > priorval)
				curval = priorval ;
			curval *= lossfrac ;
			curval +=  frac * (priorval - curval) ;
			}
		if(curval > priorval)
			curval = priorval ;
      rval = cv->cg[i].vals[0] = cv->cg[i].total_val = popcv->cg[i].vals[0] * curval ;
		pcv->cg[i].vals[0] -= rval ;
	   pcv->cg[i].total_val -= rval ;
	   pcv->lev_vals[i] = (COMPREAL)pcv->cg[i].total_val ;
#endif
				
		}
	else {
#ifdef VERSION1C
		for(i=0,popstart=1.0,priorstart=0;i<cv->ngroup-1;i++) {
			lossfrac = 1.0 - (remission_rate->vals[i] + mortality_rate->vals[i]) * VENGV->time_step ;
			poplossfrac = 1.0 - mortality_rate->vals[i] * VENGV->time_step ;
			incidence = incidence_rate->vals[i] ;
			inflow = VENGV->time_step / (double)cv->cg[i].npoints ; /* rate of 1.0 */
			/* the total amount in the group with an inflow of 1 */
			for(j=0,priorval=priorstart,popval=popstart,poptot=priortot=curval=totval=0.0;j<cv->cg[i].npoints;j++) {
				poptot += popval ;
				popval *= poplossfrac ;
				priortot += priorval ;
				priorval *= lossfrac ;
				totval += curval ;
				curval *= lossfrac ;
				curval += inflow ;
				}
			/* compute the steady state fraction on the population implied by the mortality */
   	   frac = (priortot/poptot + incidence * totval) / (1.0 + incidence * totval) ; 
			/* compute the inflow based on the actual population */
			inflow *= (1.0 - frac) * population->vals[i] * incidence ;
			/* adjust priorstart and popstart to reflect the current population group */
			priorstart *= population->vals[i]/poptot ;
			popstart *= population->vals[i]/poptot ;
			// the below seems like it should return about the same thing
			//popstart = popval * population->vals[i]/poptot ;
			/* apply to the subgroups */
			for(j=0,curval=priorstart,totval=0.0;j<cv->cg[i].npoints;j++) {
				cv->cg[i].vals[j] = curval ;
				totval += curval ;
				curval *= lossfrac ;
				curval += inflow ;
				}
			priorstart = curval ; /* in the first slot of the next group */
			cv->cg[i].total_val = totval ;
			}
		/* last group cumulative so different logic */
		lossfrac = 1.0 - (remission_rate->vals[i] + mortality_rate->vals[i]) * VENGV->time_step ;
   	poplossfrac = 1.0 - mortality_rate->vals[i] * VENGV->time_step ;
		incidence = incidence_rate->vals[i] ;
		inflow = VENGV->time_step  ; /* rate of 1.0 */
		priortot = priorstart/(1.0 - lossfrac) ;
		poptot = popstart/(1.0 - poplossfrac) ;
		totval = VENGV->time_step/(1.0 - lossfrac) ;
	   frac = (priortot/poptot + incidence * totval) / (1.0 + incidence * totval) ; /* stready state fraction */
		cv->cg[i].vals[0] = cv->cg[i].total_val = population->vals[i] * frac ;
#else
	/* we just apply the incidence to the micro-groups to get a prevalence within the microgroup
	   and then multiply that by the corresponding population microgroup to get a number of people 
	   we use excess mortality for this since any true survivorship will be reflected in the 
	   population numbers anyway */
		for(i=0,curval=0;i<cv->ngroup-1;i++) {
			totval = 0 ;
			lossfrac = 1.0 - (remission_rate->vals[i] + mortality_rate->vals[i]) * VENGV->time_step ;
			incidence = incidence_rate->vals[i] * VENGV->time_step ;
			for(j=0;j<cv->cg[i].npoints;j++) {
				cv->cg[i].vals[j] = curval * popcv->cg[i].vals[j] ;
				totval += cv->cg[i].vals[j] ;
				curval *= lossfrac ;
				if(curval > 1.0) /* if morgality < 0 */
					curval = 1.0 ;
				curval += incidence  * (1.0 - curval) ;
				}
			cv->cg[i].total_val = totval ;
			}
     /* the last group inherits comes closer to running to steady state
		   just do 200 more iteratons a the new prevalence building/dropping
		   it down */
		lossfrac = 1.0 - (remission_rate->vals[i] + mortality_rate->vals[i]) * VENGV->time_step ;
		incidence = incidence_rate->vals[i] * VENGV->time_step ;
		for(j=0;j<200;j++) {
			curval *= lossfrac ;
			if(curval > 1.0)
				curval = 1.0 ;
			curval += incidence  * (1.0 - curval) ;
			}
      cv->cg[i].vals[0] = cv->cg[i].total_val = curval * popcv->cg[i].vals[0] ;
#endif
		}

	/* note that at the end of this if the progression rate is positive the first entry
	   holds everybody for itself and the subsequent entries - when the subsequent entries
		are done (recognized by the 0 incidence rate) they will reach back and pull out 
		some of the values from the previous computations */
		
   for(rval = 0,i=0;i<cv->ngroup;i++) {
	   lev->vals[i] = (COMPREAL)cv->cg[i].total_val ;
		rval += cv->cg[i].total_val ;
		}
	cv->needs_init = needs_init ; 

	return rval ;
	}


double COHORT_COUNT(VECTOR_ARG *lev,double fromtime,double totime)
{
   COHORT_VAR *cv ;
   int i,j ;
   double length,rval,*vals ;
   
   /* find it */
   for(cv=Cohort_var;cv;cv=cv->next) {
      if(cv->lev_vals == lev->vals)
         break ;
      }
   if(!cv || totime <= fromtime)
      return NA ;
   for(i=0,length=0;i<cv->ngroup;i++) {
      if(length + cv->cg[i].length >= fromtime) {
         j = (int)((fromtime - length)/cv->cg[i].length *(double)cv->cg[i].npoints + 0.5) ;
         vals = cv->cg[i].vals + j ;
         break ;
         }
      length += cv->cg[i].length ;
      }
   if(i == cv->ngroup)
      return NA ;
   for(;i<cv->ngroup;i++) {
      if(length + cv->cg[i].length > totime) {
         j = (int)((totime - length)/cv->cg[i].length *(double)cv->cg[i].npoints + 0.5) ;
         j = cv->cg[i].vals + j - vals ; /* offset */
         for(rval=0,i=0;i<j;i++) 
            rval += vals[i] ;
         return rval ;
         }
      length += cv->cg[i].length ;
      }
   /* final time - return vals to end of vector */
   j = cv->cg[cv->ngroup-1].vals+1-vals ;
   for(rval=0,i=0;i<j;i++)
      rval += vals[i] ;
   return rval ;
   }
double COHORT_CONTROL(VECTOR_ARG *lev,VECTOR_ARG *grouplen,double inat0,double elmcount,double wantcum)
{
   return COHORT_CONTROL_ALL(lev,grouplen,'\0','\0','\0','\0',inat0,elmcount,0,wantcum) ;
   }
double COHORT_CONTROL_INIT(VECTOR_ARG *lev,VECTOR_ARG *grouplen,VECTOR_ARG *init_lev,VECTOR_ARG *init_grouplen,double inat0,double elmcount,double init_elmcount,double wantcum)
{
   return COHORT_CONTROL_ALL(lev,grouplen,init_lev,init_grouplen,'\0','\0',inat0,elmcount,init_elmcount,wantcum) ;
   }

double COHORT_CONTROL_INFLOW(VECTOR_ARG *lev,VECTOR_ARG *grouplen,VECTOR_ARG *ineverywhere,double inat0,double elmcount,double wantcum) 
{
   return COHORT_CONTROL_ALL(lev,grouplen,'\0','\0',ineverywhere,'\0',inat0,elmcount,0,wantcum) ;
   }
double COHORT_CONTROL_TRANSFER(VECTOR_ARG *lev,VECTOR_ARG *grouplen,VECTOR_ARG *ineverywhere,VECTOR_ARG *fromlev,double inat0,double elmcount,double wantcum) 
{
   return COHORT_CONTROL_ALL(lev,grouplen,'\0','\0',ineverywhere,fromlev,inat0,elmcount,0,wantcum) ;
   }

double COHORT_SHIFT(VECTOR_ARG *lev)
{
	COHORT_VAR *cv,*fcv ;
	int i,j ;
   /* find it */
   for(cv=Cohort_var;cv;cv=cv->next) {
      if(cv->lev_vals == lev->vals)
         break ;
      }
	if(!cv) { /* insert it but do nothing else - actual initilization occurs with the real function */
      /* allocate - this assumes TIME STEP is constant - grouplen is used only at initilization */
      cv = (COHORT_VAR *)calloc(1,sizeof(COHORT_VAR)) ;
      if(!cv) {
         (*VENGV->error_message)(VERROR,(unsigned char *)"allocation failure in COHORT SHIFT") ;
         return NA ;
         }
		cv->needs_init = 1 ;
		cv->needs_adjust = 0 ;
		cv->lev_vals = lev->vals ;
      cv->next = Cohort_var ;
		cv->timestamp = VENGV->time ;
      Cohort_var = cv ;
		return lev->vals[0] ;
		}
	else if(cv->needs_init) {
		if(cv->needs_init == 3)
			cv->needs_init = 4 ;
		}
	/* otherwise perhaps execute the shift and fill */
   else if(VENGV->time_minus > cv->timestamp) { 
		if(cv->needs_init) {
         (*VENGV->error_message)(VERROR,(unsigned char *)"COHORT SHIFT without a corresponding control function") ;
         return NA ;
			}
		if(cv->needs_adjust) {
			/* apply the adjustment across the board before recomputing the level 
			   (we also reset the level value so that what follows is consistent
				 with the in-model rate computations) */
			cv->needs_adjust = 0 ;
			for(i=0;i<cv->ngroup;i++) {
				if(cv->cg[i].total_val > 0) { /* preportional adjustment */
					for(j=0;j<cv->cg[i].npoints;j++) 
						cv->cg[i].vals[j] += cv->cg[i].adjust_amount *  cv->cg[i].vals[j]/cv->cg[i].total_val ;
					}
				else { /* same for all */
					for(j=0;j<cv->cg[i].npoints;j++) 
						cv->cg[i].vals[j] += cv->cg[i].adjust_amount / cv->cg[i].npoints  ;
					}
				cv->cg[i].total_val += cv->cg[i].adjust_amount ;
				lev->vals[i] += (COMPREAL)cv->cg[i].adjust_amount ;
				}
			}
      /* have moved forward in time - otherwise just do nothing */
      /* net flows */
      cv->cg[0].netinflow = (lev->vals[0] - cv->cg[0].total_val - cv->inat0- cv->cg[0].ineverywhere) ;
      for(i=1;i<cv->ngroup;i++)
         cv->cg[i].netinflow = (lev->vals[i] - cv->cg[i].total_val - cv->cg[i].ineverywhere) ;
      for(i=0;i<cv->ngroup;i++) {
         for(j=0;j<cv->cg[i].npoints;j++) {
            if(cv->cg[i].total_val > 0 && cv->cg[i].netinflow < 0) /* allocate outflow */
               cv->cg[i].vals[j] += cv->cg[i].netinflow *  cv->cg[i].vals[j]/cv->cg[i].total_val ;
            else
               cv->cg[i].vals[j] += cv->cg[i].netinflow  / cv->cg[i].npoints ; /* inflows are even */
            }
			if((fcv=cv->fcv) && fcv->cg[i].total_val > 0) {
				/* distribute the ineverywhere values based on the source level */
				for(j=0;j<cv->cg[i].npoints;j++) {
					cv->cg[i].vals[j] += cv->cg[i].ineverywhere  * fcv->cg[i].vals[j]/fcv->cg[i].total_val ; /* inflows are even */
					}
				}
			else if(cv->cg[i].ineverywhere) { /* just put them down evenly */
				for(j=0;j<cv->cg[i].npoints;j++) {
					cv->cg[i].vals[j] += cv->cg[i].ineverywhere  / cv->cg[i].npoints ; /* inflows are even */
               }
            }
         }
      if(cv->wantcum)
         cv->vals[cv->npoints-1] += cv->vals[cv->npoints-2] ;
      else {
         /* use average using the implied value from the previous micro cohort 
			   preportional to the length of the current cohort - the added val is just
			   Q(-1)/dt * dt/L(0) which is the average implied by last val time
			   the replacement fraction */
         cv->vals[cv->npoints-1] = (1.0-VENGV->time_step/cv->cg[cv->ngroup-1].length) *  cv->vals[cv->npoints-1] +
				cv->vals[cv->npoints-2] * cv->cg[cv->ngroup-2].length / cv->cg[cv->ngroup-1].length ;
         }
      /* rotate forward */
      for(i=cv->npoints-2;i>0;i--)
         cv->vals[i] = cv->vals[i-1] ;
      /* fill in 0 */
      cv->vals[0] = cv->inat0 ;
      /* assign new level values */
      for(i=0;i<cv->ngroup;i++) {
         for(j=0,cv->cg[i].total_val=0;j<cv->cg[i].npoints;j++) 
            cv->cg[i].total_val += cv->cg[i].vals[j] ;
         lev->vals[i] = (COMPREAL)cv->cg[i].total_val ;
         }
      cv->timestamp = VENGV->time ;
      }
	return lev->vals[0] ;
	}
double COHORT_ADJUST(VECTOR_ARG *lev,VECTOR_ARG *data)
{
	COHORT_VAR *cv ;
	int i ;
	ST_INDEX lfam ;
   /* find it */
   for(cv=Cohort_var;cv;cv=cv->next) {
      if(cv->lev_vals == lev->vals)
         break ;
      }
	if(!cv || cv->needs_init) { /* just validate the subscripts */
      if(!lev->dim_info->tot_dim) {
         (*VENGV->error_message)(VERROR,(unsigned char *)"LHS must be subscripted") ;
         return NA ;
         }
      lfam = lev->dim_info->fam[lev->dim_info->tot_dim-1] ;
      if(!data->dim_info->tot_dim) {
         (*VENGV->error_message)(VERROR,(unsigned char *)"data argument must be subscripted") ;
         return NA ;
         }
      if(data->dim_info->fam[data->dim_info->tot_dim-1] != lfam) {
         (*VENGV->error_message)(VERROR,(unsigned char *)"data and level must have same final subscript") ;
         return NA ;
         }

		return 0.0 ;
		}
	/* check to see if anything in data is not NA - if not do something */
	for(i=0;i<cv->ngroup;i++) {
      if(data->vals[i] != NA)
			break ;
		}
	if(i < cv->ngroup) {
		COHORT_SHIFT(lev) ; /* force this first for consistency across models/var name */
		for(i=0;i<cv->ngroup;i++) {
			if(data->vals[i] != NA)
				cv->cg[i].adjust_amount = data->vals[i] - cv->cg[i].total_val ;
			else
				cv->cg[i].adjust_amount = 0 ;
			}
		cv->needs_adjust = 1 ;
      return 1.0 ;
		}
   return 0.0 ;
	}


double COMPUTE_COPREVALENCE(VECTOR_ARG *prevalence,VECTOR_ARG *condition_relationship,double total_pop,double xat25,double xat75) 
{
   int ifam ;
   int i,j,k,ncond,n,dimvol,smalli ;
   double condpop,tot_comorb,smallpop,min_comorb ;
	double relative_penetration,alpha,beta,frac ;
   ST_INDEX cfam ;

   if(!prevalence->dim_info->tot_dim || !condition_relationship->dim_info->tot_dim) {
      (*VENGV->error_message)(VERROR,(unsigned char *)"COMPUTE_COPREVALENCE prevalence and condition_relationship must be subscritped") ;
      return NA ;
      }
   /* find the family match of the last entry in condition_relationship with prevalence */
   cfam = condition_relationship->dim_info->fam[condition_relationship->dim_info->tot_dim-1] ;
   for(ifam=prevalence->dim_info->tot_dim;ifam-- > 0;) {
      if(prevalence->dim_info->fam[ifam] == cfam)
         break ;
      }
   if(ifam < 0) {
      (*VENGV->error_message)(VERROR,(unsigned char *)"COMPUTE_COPREVALENCE last condition_relationship subscript must be in prevalence") ;
      return NA ;
      }
   dimvol = prevalence->dim_info->dim_vol[ifam] ;
   /* allocate a temp storage spot for prevalence if not available */
   ncond = condition_relationship->dim_info->dim[condition_relationship->dim_info->tot_dim-1] ;
   if(ncond > Scratch_vec_len) {
      if(Scratch_vec)
         free(Scratch_vec) ;
      Scratch_vec_len = ncond ;
      Scratch_vec = (double *)malloc(Scratch_vec_len*sizeof(double)) ;
      if(!Scratch_vec) {
         (*VENGV->error_message)(VERROR,(unsigned char *)"COMPUTE_COPREVALENCE allocation failure") ;
         return NA ;
         }
      }
   /* add up total prevalence */
   memset(Scratch_vec,'\0',ncond*sizeof(double)) ;
	tot_comorb = 0 ;
   for(k=j=i=0;i<ncond;i++,k += dimvol) {
		if(condition_relationship->vals[i] > 0) {
			if(prevalence->vals[k] > 0) {
				Scratch_vec[j] += prevalence->vals[k] ;
				tot_comorb += prevalence->vals[k] ;
				}
         if(condition_relationship->vals[i] == 1 ||  condition_relationship->vals[i] == 4)
            j++ ;
			}
      }
   ncond = j ; /* only useful conditions */
	if(total_pop > 0) {
	   relative_penetration = tot_comorb/total_pop / (double)ncond ;
		min_comorb = tot_comorb/total_pop ;
		if(min_comorb < 1.0)
			min_comorb = 1.0 ;
		}
	else {
		relative_penetration = 0.0 ;
		min_comorb = 1.0 ;
		}

   /* assume complete overlap on all distinct conditions */
   condpop = tot_comorb = 0.0 ;
	n = ncond ;
   while(n > 0) {
      /* find smallest */
      for(smallpop=Scratch_vec[0],smalli=0,i=1;i<n;i++) {
         if(Scratch_vec[i] < smallpop) {
            smallpop = Scratch_vec[i] ;
            smalli = i ;
            }
         }
		if(smallpop > 0) {
			tot_comorb += n * smallpop ;
			condpop += smallpop ;
			for(i=0;i<n;i++)
				Scratch_vec[i] -= smallpop ;
			}
		n-- ;
      for(i=smalli;i<n;i++)
         Scratch_vec[i] = Scratch_vec[i+1] ;
      }
   if(condpop > 0) 
      tot_comorb /= condpop ;
	else
		tot_comorb = 1 ;

	/* that's the max - now use the control parameters to compute
	   how much of that to use */
   beta = -(xat75 + xat25)/2.0 ;
	alpha = log(3)/(xat25+beta) ;
	frac = 1.0/(1.0+exp(alpha*(relative_penetration+beta))) ;
   tot_comorb = (1.0-frac)*min_comorb + frac*tot_comorb ;
   return tot_comorb ;
   }


/* assume prevalence are independent and then do the expected value of the 
   number of conditions based on the different on/off combinations possible
	this can be all conditions (for acute mortality) or conditional on having
	a condition for chronic mortality or conditional on having any condition
	for comparison with penetration based computation */
double COMPUTE_COPREV2(VECTOR_ARG *prevalence,VECTOR_ARG *condition_relationship) 
{
   int ifam ;
   int i,j,k,ncond,ncombo,dimvol ;
	double coprev,prob ;
	int cond ;
   ST_INDEX cfam ;

   if(!prevalence->dim_info->tot_dim || !condition_relationship->dim_info->tot_dim) {
      (*VENGV->error_message)(VERROR,(unsigned char *)"COMPUTE_COPREVALENCE prevalence and condition_relationship must be subscritped") ;
      return NA ;
      }
   /* find the family match of the last entry in condition_relationship with prevalence */
   cfam = condition_relationship->dim_info->fam[condition_relationship->dim_info->tot_dim-1] ;
   for(ifam=prevalence->dim_info->tot_dim;ifam-- > 0;) {
      if(prevalence->dim_info->fam[ifam] == cfam)
         break ;
      }
   if(ifam < 0) {
      (*VENGV->error_message)(VERROR,(unsigned char *)"COMPUTE_COPREVALENCE last condition_relationship subscript must be in prevalence") ;
      return NA ;
      }
   dimvol = prevalence->dim_info->dim_vol[ifam] ;
   /* allocate a temp storage spot for prevalence if not available */
   ncond = condition_relationship->dim_info->dim[condition_relationship->dim_info->tot_dim-1] ;
   if(ncond > Scratch_vec_len) {
      if(Scratch_vec)
         free(Scratch_vec) ;
      Scratch_vec_len = ncond ;
      Scratch_vec = (double *)malloc(Scratch_vec_len*sizeof(double)) ;
      if(!Scratch_vec) {
         (*VENGV->error_message)(VERROR,(unsigned char *)"COMPUTE_COPREVALENCE allocation failure") ;
         return NA ;
         }
      }
   /* add up total prevalence */
   memset(Scratch_vec,'\0',ncond*sizeof(double)) ;
   for(k=j=i=0;i<ncond;i++,k += dimvol) {
		if(condition_relationship->vals[i] > 0) {
			if(prevalence->vals[k] > 0) {
				Scratch_vec[j] += prevalence->vals[k] ;
				}
         if(condition_relationship->vals[i] == 1 ||  condition_relationship->vals[i] == 4)
            j++ ;
			}
      }
   ncond = j ; /* only useful conditions */
   /* validate prevalence all between 0 and 1 */
	for(i=0;i<ncond;i++) {
		if(Scratch_vec[i] < 0)
			Scratch_vec[i] = 0 ;
		else if(Scratch_vec[i] > 1.0)
			Scratch_vec[i] = 1.0 ;
		}
	/* now we do all combinations of on off - just use the bits in a counter
	   to access the correct probabilities */
	ncombo = 1 << ncond ;
	coprev = 0 ;
	for(i=0;i<ncombo;i++) {
		for(prob=1,cond=0,j=0;j<ncond;j++) {
			if((i>>j)&1) {
				cond++ ;
				prob *= Scratch_vec[j] ;
				}
			else
				prob *= (1.0-Scratch_vec[j]) ;
			}
		coprev += prob*cond ;
		}
	/* conditional on at least 1 condition */
	for(prob=1.0,j=0;j<ncond;j++)
		prob *= (1.0-Scratch_vec[j]) ;
	if(prob == 1)
		coprev = 1 ;
	else
		coprev /= (1.0 - prob) ;
	return coprev ;
   }

double LIFE_EXPECTANCY(VECTOR_ARG *mortality_rate,VECTOR_ARG *grouplen,double elmcount)
{
	double ale,baa,aa,f ;
	int i,n ;

	n = (int)(elmcount + 0.5) ;
	for(f=1.0,baa= aa=0.5,ale=0,i=0;i<n-1;i++) {
		while(aa < baa + grouplen->vals[i]) {
         ale += aa*f * mortality_rate->vals[i] ;
			f *= (1.0 - mortality_rate->vals[i]) ;
			aa += 1.0 ;
			}
		baa += grouplen->vals[i] ;
		/* last group done consistently with  exponential decay starting from
		baa */
		}
	if(mortality_rate->vals[i] > 0)
	   ale += (baa-0.5 + 1.0/mortality_rate->vals[i]) * f ;
	else
		ale = NA ;
	return ale ;
	}

/* compute the logit prevalences based incidence by giving the expected value of 
   incidence across differnt prevalence combinations assuming independence */
double LPBASED_INCIDENCE(VECTOR_ARG *mincidence,VECTOR_ARG *mmaxval,VECTOR_ARG *mprevalence,VECTOR_ARG *mintercept,VECTOR_ARG *mage_alpha,
								  VECTOR_ARG *mcondition_alpha,COMPREAL age)
{
	COMPREAL *maxval,*incidence,*prevalence,*intercept,*age_alpha,*condition_alpha ;
	int i,k,ncondition ;
	long condcombo,ncondcombo ;
	double p,ev,bli,li ;
	double psum ;
	ST_INDEX crfam ;

	maxval = mmaxval->vals ;
	incidence = mincidence->vals ;
	prevalence = mprevalence->vals ;
	intercept = mintercept->vals ;
	age_alpha = mage_alpha->vals ;
	condition_alpha = mcondition_alpha->vals ;


	if(mcondition_alpha->dim_info->tot_dim < 2 ||
		(crfam = mcondition_alpha->dim_info->fam[mcondition_alpha->dim_info->tot_dim-1]) != 
		mcondition_alpha->dim_info->fam[mcondition_alpha->dim_info->tot_dim-2]) {
	   /* condition alpha needs to ba a matrix - last two subs same family */
		(*VENGV->error_message)(VERROR,(unsigned char *)"LPBASED INCIDENCE condition alpha must end with subs ccrf,ccrf") ;
		return NA ;
		}
	/* intercept, age alpha and maxval need to match up on last as well */
	if(!mmaxval->dim_info->tot_dim 
		|| !mintercept->dim_info->tot_dim 
		|| !mage_alpha->dim_info->tot_dim 
		|| mmaxval->dim_info->fam[mmaxval->dim_info->tot_dim-1] != crfam
		|| mintercept->dim_info->fam[mintercept->dim_info->tot_dim-1] != crfam
		|| mage_alpha->dim_info->fam[mage_alpha->dim_info->tot_dim-1] != crfam
		) {
		(*VENGV->error_message)(VERROR,(unsigned char *)"LPBASED INCIDENCE maxval, intercept and age alpha must all have ccrf as last sub") ;
		return NA ;
		}
	if(!mincidence->dim_info->tot_dim || 
		 mincidence->dim_info->fam[mincidence->dim_info->tot_dim-1] != crfam) {
		(*VENGV->error_message)(VERROR,(unsigned char *)"LPBASED INCIDENCE left hand side must have ccrf as final subscript") ;
		return NA ;
		}
	if(!mprevalence->dim_info->tot_dim || 
		 mprevalence->dim_info->fam[mprevalence->dim_info->tot_dim-1] != crfam) {
		(*VENGV->error_message)(VERROR,(unsigned char *)"LPBASED INCIDENCE prevalence must have ccrf as final subscript") ;
		return NA ;
		}

   ncondition = mcondition_alpha->dim_info->dim[mcondition_alpha->dim_info->tot_dim-1] ;
   ncondcombo = (1 << ncondition) ;
	for(i=0;i<ncondition;i++) {
		bli = intercept[i] + age_alpha[i] * age ; /* base logit incidence */
		ev = 0 ;  /* expected value */
		psum = 0 ;
		/* we just do all the different condition combos to generate the expected value */
		for(condcombo=0;condcombo<ncondcombo;condcombo++) {
		   li = bli ;
			for(k=0;k<ncondition;k++) {
				if((condcombo >> k) & 1)  /* condition k is on */
					li += condition_alpha[i+k*ncondition] ; /* rows of condition_alpha are the input, cols the output */
				}
		   p = 1.0 ;
			for(k=0;k<ncondition;k++)
				p *= ((condcombo >> k)&1)?prevalence[k]:(1.0-prevalence[k]) ;
			li = exp(li) ; /* antilogit - 2 steps */
			ev += p * maxval[i] * li/(1+li) ;
			psum += p ;
			}
		incidence[i] = (COMPREAL)ev ;
		}
	return incidence[0] ;
	}

