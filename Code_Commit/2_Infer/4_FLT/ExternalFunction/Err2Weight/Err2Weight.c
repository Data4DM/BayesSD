/*****************************
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
*******************************/
#include <stddef.h>
#include <stdio.h>
#include <sys/types.h>
#include <string.h>
#include <math.h>

#define MAX_SERIES 800
#define MAX_NAME_LEN 256
typedef struct _tag_series_struct {
	char name[MAX_NAME_LEN] ;
	double total ;
	double total_squared ;
	int n ;
	} SERIES_STRUCT ;

static SERIES_STRUCT Series[MAX_SERIES] ;
static int Nseries ;


/* binary search to find the series */
SERIES_STRUCT *find_series(const char *seriesname)
{
	int low,high,mid,comp ;

	low = 0 ;
	high = Nseries - 1 ;
	while(low <= high) {
		mid = (low + high)/2 ;
		comp = strcmp(seriesname,Series[mid].name) ;
		if(comp < 0)
			high = mid-1 ;
		else if(comp > 0)
			low = mid+1 ;
		else
			return Series+mid ;
		}
	/* new entry */
   Nseries++ ;
	if(Nseries > MAX_SERIES) {
		printf("Increase MAX_SERIES\n") ;
		return '\0' ;
		}
	if(strlen(seriesname) >= MAX_NAME_LEN) {
		printf("Increase MAX_NAME_LEN\n") ;
		return '\0' ;
		}
	for(high=Nseries-1;high>low;high--)
		Series[high] = Series[high-1] ;
	strcpy(Series[low].name,seriesname) ;
	Series[low].total = Series[low].total_squared = 0 ;
	Series[low].n = 0 ;
	return Series + low ;
	}

main(int argc,char **argv)
{
	FILE *errfile,*cinfile ;
	char buf[512],*tv ;
	SERIES_STRUCT *series ;
	int lineno,i ;
	double time,val ;

	if(argc != 3) {
		printf("Usage: Err2Weight errorfile.err weightfile.cin\n") ;
		return -1 ;
		}
	errfile = fopen(argv[1],"r") ;
	if(!errfile) {
		printf("Failed to open %s\n",argv[1]) ;
		return -1 ;
		}
	cinfile = fopen(argv[2],"w") ;
	if(!cinfile) {
		printf("Failed to open %s to write changes\n",argv[2]) ;
		fclose(errfile) ;
		return -1 ;
		}
	series = '\0' ;
	lineno = 0 ;
	while(fgets(buf,512,errfile)) {
		lineno++ ;
		if(*buf && *buf != '\n') { /* ignore empty lines */
			if(*buf >= '0' && *buf <= '9') {
				if(!series) {
					printf("Processing error unknown series after line %d\n",lineno) ;
					break ;
					}
				/* should be #\t# */
				time = -1 ;
				sscanf(buf,"%lg\t%lg",&time,&val) ;
				if(time >= 0) {
					series->total += val ;
					series->total_squared += val*val ;
					series->n++ ;
					}
				else
					printf("Bad numbers at line %d\n",lineno) ;

				}
			else
				series = find_series(buf) ;
			}
		}
	fclose(errfile) ;
	/* now output */
	for(i=0;i<Nseries;i++) {
		/* strip \n */
		tv = Series[i].name ;
		tv += strlen(tv) ;
		while(tv[-1] == '\n')
			tv-- ;
		*tv = '\0' ;
		if(Series[i].n) { /* just skip otherwise */
			if(Series[i].n == 1) { /* assume stdev is same as value and at least 0.1 */
				val = fabs(Series[i].total) ;
				if(val < 0.1)
					val = 0.1 ;
				}
			else {
				val = Series[i].total_squared/(double)Series[i].n -  Series[i].total * Series[i].total / ((double)Series[i].n * (double)Series[i].n) ;
				if(val < 1.0E-12 || (val < 1.0e-6 && Series[i].n < 4))
					val = 1.0 ;
				val = sqrt(val) ;
				}
			val = 1.0/val ;
			tv = strchr(Series[i].name,'|') ;
			if(tv)
				*tv = '\0' ;
			fprintf(cinfile,"Weight for %s = %lg\n",Series[i].name,val) ;
			}
		}
	fclose(cinfile) ;
	return 0 ;
	}
