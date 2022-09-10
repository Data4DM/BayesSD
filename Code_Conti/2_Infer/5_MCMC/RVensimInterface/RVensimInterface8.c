#include <R.h>
#define HWND  void *
#include "../vendll.h"

// To compile this file
// 	C:\Usask\Research\VensimMCMC\VensimRCompatibleDLL>"c:\Program Files\r\R-2.14.1\bin\R.exe" --arch i386 CMD SHLIB -L./ -lVenDLL32 RVensimInterface6.c


/*
void testLoadVensimModel();

void useC(int *i) 
{
	Rprintf("in useC\n");
	testLoadVensimModel();di
	
    i[0] = 11;
	
}
*/


#define	FALSE	(0)
#define TRUE	(1)
#define BOOL	short int
#define DEFAULT_TIME_AXIS_NAME "Time"

static int currentMaximumTierToLog = 3;

void linearlyInterpolatedValuesForVariableInRunAtMultipleTimesForStandardTimeAxis(double *rgDMultipleTimestoRetrieve, int *pCountTimesToRetrieve, char **pSzVariableName, char **pSzDesiredRunName, double *rgValuesOut);
void valueTimePairsForVariableInRunForFloatArrays(char **pSzVariableName, double *arrayFinalDoubleValuesOut, double *arrayFinalDoubleTimesOut, float *arrayTmpFloatValuesOut, float *arrayTmpFloatTimesOut, char **pSzDesiredRunName, char **pSzTimeAxisName, int countValuesMax, int *pResult);
void copyDoubleArrayFromFloatArray(double *arrayValuesOut, float *arrayFloatValuesOutTmp, int countValuesObtained);
void 	demobilizeFloatArrays(float *arrayFloatValuesOutTmp, float *arrayFloatTimesOutTmp, BOOL isDynamicallyAllocated);
BOOL procureTmpFloatArraysAndReturnIsDynamicallyAllocated(float **ppArrayFloatValuesOutTmp, float **ppArrayFloatTimesOutTmp, int countValuesMax);
void logAtLoggingRank(char *, int *pILoggingTier);
void loadVensimModel(char **pSzModelPathAndFileName, int *pResult) ;
void loadVDF(char **pSzVDFPathAndFileName, int *pResult) ;
void valueTimePairsForVariableInRun(char **pSzVariableName, double *arrayValuesOut, double *arrayTimeOut, char **pSzDesiredRunName, char **pSzTimeAxisName, int countValuesMax, int *pResult);
void valueTimePairsForVariableInRunForStandardTimeAxis(char **szVariableName, double *arrayValuesOut, double *arrayTimeOut, char **pSzDesiredRunName, int countValuesMax, int *pResult);
void setInitialParameterValue(char **pSzFullyQualifiedVarName, double *value, int *pResult);   /* set at initial time */
void runSimulation(char **pSzVFDOutputName, int *pResult);
char *safeConcat(char *szDest, char *szSrc, int countExtraSuffixCharacters);  // allocates memory that must be freed later
void assembleAndIssueVensimCommand(char *szCommandPrefix, char *szSuffix, int *pResult) ;
void 	demobilizeDoubleArray(double *arrayDoubleValues, BOOL isDynamicallyAllocated);
BOOL procureTmpDoubleArrayAndReturnIsDynamicallyAllocated(double **ppArrayDoubleOutTmp, int countValues);
void setLoggingThreshold(int *pILoggingLevel, int *pResult);
void setIsVensimWorkInProgressWindowToBeShown(int *pisVensimWIPWindowShown, int *pResult);
float FInterpolateValueForTimepointBinarySearch(float timeToRetrieve, float *arrayFloatValuesForTimepoints, float *arrayFloatTimepoints, int countSamples);
void linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxisLinearSearchDebug(double *pDTimetoRetrieve, char **pSzVariableName, char **pSzDesiredRunName, double *pResult);

// Utility functions below 

float FInterpolateValueForTimepointBinarySearchBetweenIndices(float timeToRetrieve, float *arrayFloatValuesForTimepoints, float *arrayFloatTimepoints, int iMin, int iMax);
float FInterpolateValueForTimepointLinearSearch(float timeToRetrieve, float *arrayFloatValuesOutTmp, float *arrayFloatTimesOutTmp, int countSamples);
void testLogging(char **pSzMessage, int iLoggingLevel);
void fakeLoadVensimModel(char **pSzModelPathAndFileName, int *pFlag, int *pResult) ;


#define logMacro(loggingExpression, loggingLevel) ((loggingLevel <= currentMaximumTierToLog) ? loggingExpression : 0);
#define logTierNeverLog 			(-1)
#define logHighestPriorityTier	 	(0)
#define logHighPriorityTier		 	(1)
#define logMediumPriorityTier		(2)
#define logDebuggingTier 			(4)
#define logTierAlwaysLog 			(5)



/* #define MAX_PATH_AND_FILENAME_LENGTH 256 */

#define MAX_PATH_LENGTH		(1024)
#define BLANKS_LENGTH_128 "                                                                                                                                "
#define VENSIM_MODEL_LOAD_COMMAND_PREFIX "SPECIAL>LOADMODEL|" 

#define BLANK_BUFFER_SUFFIX_LENGTH_1024 BLANKS_LENGTH_128 BLANKS_LENGTH_128 BLANKS_LENGTH_128 BLANKS_LENGTH_128 BLANKS_LENGTH_128 BLANKS_LENGTH_128 BLANKS_LENGTH_128 BLANKS_LENGTH_128   /* define a buffer of length 1024 */
#define BLANK_BUFFER_SUFFIX_LENGTH_1024_LENGTH 1024

/* for safety, we have a logging buffer twice as long as the suffix buffer for issuing commands */
#define LOGGING_BUFFER BLANK_BUFFER_SUFFIX_LENGTH_1024 BLANK_BUFFER_SUFFIX_LENGTH_1024

#define VENSIM_MODEL_LOAD_COMMAND_AND_1024_CHAR_BUFFER_SUFFIX VENSIM_MODEL_LOAD_COMMAND_PREFIX BLANK_BUFFER_SUFFIX_LENGTH_1024

void traceR(char **traceTest)
{
	Rprintf(*traceTest);
}

void testLogging(char **pSzMessage, int iLoggingLevel)
{
	logMacro(Rprintf("Testing logging with message [%s]\n",*pSzMessage), iLoggingLevel);
}


void fakeLoadVensimModel(char **pSzModelPathAndFileName, int *pFlag, int *pResult) 
{
	int flag = *pFlag;
	logMacro(Rprintf("sizeof a single character: %d\n",sizeof(" ")), logMediumPriorityTier);
	
	
	logMacro(Rprintf("At start of fakeLoadVensimModel(%s, %d)\n",*pSzModelPathAndFileName, flag), logMediumPriorityTier);
	if (flag == 1)
		{
//		char strBuffer[ sizeof(VENSIM_MODEL_LOAD_COMMAND_PREFIX)+BLANK_BUFFER_SUFFIX_LENGTH_1024_LENGTH + 1 ];

		logMacro(Rprintf("About to attempt to loadVensimModel(%s)\n",*pSzModelPathAndFileName), logMediumPriorityTier);

		//strcpy(strBuffer, VENSIM_MODEL_LOAD_COMMAND_PREFIX);

		//strncat(strBuffer,*pSzModelPathAndFileName,BLANK_BUFFER_SUFFIX_LENGTH_1024_LENGTH);		

		assembleAndIssueVensimCommand("SPECIAL>LOADMODEL|", *pSzModelPathAndFileName, pResult);  /* probably sizeof is static and faster, but need to check semantics [byte vs. character] */
		}
	
	*pResult = 1;
}

void assembleAndIssueVensimCommand(char *szCommandPrefix, char *szSuffix, int *pResult) 
{
	// allocate and retrieve a concatenated string -- for simplicity, we dynamically allocate this.  Because the issuing
	// of a vensim command is a fairly heavyweight activity, it doesn't seem worth it to avoid such small overhead.
	
	char *szLoadModelCommand = safeConcat(szCommandPrefix, szSuffix, 0);
	
//	logMacro(Rprintf("About to attempt to loadVensimModel(%s)\n",*pSzBuffer), logMediumPriorityTier);
	
	logMacro(Rprintf("About to issue vensim COMMAND %s\n",szLoadModelCommand), logMediumPriorityTier);

	*pResult = vensim_command(szLoadModelCommand);

	logMacro(Rprintf("vensim_command %s returned %d\n",szLoadModelCommand,*pResult), logHighPriorityTier);

	free(szLoadModelCommand);		// clean up newly allocated memory
/*	Rprintf("vensim_command %s returned %d\n",szLoadModelCommand,*pResult); */
}


/* requires: pSzModelPathAndFileName is non-null */
void loadVensimModel(char **pSzModelPathAndFileName, int *pResult) 
{
	logMacro(Rprintf("About to attempt to loadVensimModel(%s)\n",*pSzModelPathAndFileName), logMediumPriorityTier);
	assembleAndIssueVensimCommand(VENSIM_MODEL_LOAD_COMMAND_AND_1024_CHAR_BUFFER_SUFFIX, *pSzModelPathAndFileName, pResult);  /* probably sizeof is static and faster, but need to check semantics [byte vs. character] */
}



/* requires: pSzVDFPathAndFileName is non-null */
void loadVDF(char **pSzVDFPathAndFileName, int *pResult) 
{
	assembleAndIssueVensimCommand("SPECIAL>LOADRUN|" , *pSzVDFPathAndFileName, pResult);  /* probably sizeof is static and faster, but need to check semantics [byte vs. character] */
}

void testCModifyArrays(double *arrayValuesOut1, double *arrayValuesOut2, double *arrayValuesOut3)
{
	arrayValuesOut1[0]=-1;
	arrayValuesOut2[0]=-2;
	arrayValuesOut3[0]=-3;
}

void valueTimePairsForVariableInRun(char **pSzVariableName, double *arrayValuesOut, double *arrayTimesOut, char **pSzDesiredRunName, char **pSzTimeAxisName, int countValuesMax, int *pResult)
{
	// ok, allocate arrays of floats to hold the values temporarily 
	//  -- before we put them in the user-specified DOUBLE array values values
	float *arrayFloatValuesOutTmp;
	float *arrayFloatTimesOutTmp;

	logMacro(Rprintf("At beginning of valueTimePairsForVariableInRun; arrayValuesOut[0] = %f\n",((float) (arrayValuesOut[0]))), logMediumPriorityTier);
	
	int isDynamicallyAllocated = procureTmpFloatArraysAndReturnIsDynamicallyAllocated(&arrayFloatValuesOutTmp, &arrayFloatTimesOutTmp, countValuesMax);

	logMacro(Rprintf("isDynamicallyAllocated = %d\n",isDynamicallyAllocated), logMediumPriorityTier);
	
	valueTimePairsForVariableInRunForFloatArrays(pSzVariableName, arrayValuesOut, arrayTimesOut, arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, pSzDesiredRunName, pSzTimeAxisName, countValuesMax, pResult);

	logMacro(Rprintf("At end of valueTimePairsForVariableInRun; arrayValuesOut[0] = %f\n",((float) (arrayValuesOut[0]))), logMediumPriorityTier);
		
	demobilizeFloatArrays(arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, isDynamicallyAllocated);

	logMacro(Rprintf("demobilized arrays\n"), logMediumPriorityTier);
}
/*****under construction *****/
/********************************************************************************************

	A special function to read out several values for a given variable at once.
	This takes advantage of the fact that ALL of the values for a given variable need to be retrieved at once to get any value.  
	Note that this routine does NOT impose teh constraint that the values to retrieve must be in sorted order
	(which could speed up the interpolation routine).

********************************************************************************************/
void linearlyInterpolatedValuesForVariableInRunAtMultipleTimesForStandardTimeAxis(double *rgDMultipleTimestoRetrieve, int *pCountTimesToRetrieve, char **pSzVariableName, char **pSzDesiredRunName, double *rgValuesOut)
{
	// ok, allocate arrays of floats to hold the values temporarily -- before we put them in the user-specified values.
	float *arrayFloatValuesOutTmp;
	float *arrayFloatTimesOutTmp;
	int countValuesMax = 16384;		// vensim imposes some upper limit -- not sure what it is;
	
	int isDynamicallyAllocated = procureTmpFloatArraysAndReturnIsDynamicallyAllocated(&arrayFloatValuesOutTmp, &arrayFloatTimesOutTmp, countValuesMax);

	char *szDefaultTimeAxisName = DEFAULT_TIME_AXIS_NAME;
	// ok, get ahold of the values for all time points.  
	int countSamples = -1;
	valueTimePairsForVariableInRunForFloatArrays(pSzVariableName, /* no final array for values */ (double *) 0,   /* no final array for time points */  (double *) 0, arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, pSzDesiredRunName, &szDefaultTimeAxisName, countValuesMax, &countSamples);

	int countTimesToRetrieve = *pCountTimesToRetrieve;
	for (int i = 0; i < countTimesToRetrieve; i++)
		{
		rgValuesOut[i] = (double) FInterpolateValueForTimepointBinarySearch((float) rgDMultipleTimestoRetrieve[i], arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, countSamples);			// write to the result with the result of the interpolation
		// ok, now we can discard the arrays used to retrieve the values.
		}
		
	demobilizeFloatArrays(arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, isDynamicallyAllocated);
}

void linearlyInterpolatedValuesForVariableInRunAtMultipleTimesForStandardTimeAxisDebug(double *rgDMultipleTimestoRetrieve, int *pCountTimesToRetrieve, char **pSzVariableName, char **pSzDesiredRunName, double *rgValuesOut)
{
	int countTimesToRetrieve = *pCountTimesToRetrieve;
	Rprintf("countTimesToRetrieve: %d\n",countTimesToRetrieve);

	// ok, allocate arrays of floats to hold the values temporarily -- before we put them in the user-specified values.
	float *arrayFloatValuesOutTmp;
	float *arrayFloatTimesOutTmp;
	int countValuesMax = 16384;		// vensim imposes some upper limit -- not sure what it is;
	
	int isDynamicallyAllocated = procureTmpFloatArraysAndReturnIsDynamicallyAllocated(&arrayFloatValuesOutTmp, &arrayFloatTimesOutTmp, countValuesMax);

	char *szDefaultTimeAxisName = DEFAULT_TIME_AXIS_NAME;
	// ok, get ahold of the values for all time points.  
	int countSamples = -1;
	valueTimePairsForVariableInRunForFloatArrays(pSzVariableName, /* no final array for values */ (double *) 0,   /* no final array for time points */  (double *) 0, arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, pSzDesiredRunName, &szDefaultTimeAxisName, countValuesMax, &countSamples);

	for (int i = 0; i < countTimesToRetrieve; i++)
		{
		double d =  (double) FInterpolateValueForTimepointBinarySearch((float) rgDMultipleTimestoRetrieve[i], arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, countSamples);			// write to the result with the result of the interpolation
		// ok, now we can discard the arrays used to retrieve the values.

		Rprintf("d: %lf\n",d);
		rgValuesOut[i] = d;
		}
		
	demobilizeFloatArrays(arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, isDynamicallyAllocated);
}


void linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxis(double *pDTimetoRetrieve, char **pSzVariableName, char **pSzDesiredRunName, double *pResult)
{
	// ok, allocate arrays of floats to hold the values temporarily -- before we put them in the user-specified values.
	float *arrayFloatValuesOutTmp;
	float *arrayFloatTimesOutTmp;
	int countValuesMax = 16384;		// vensim imposes some upper limit -- not sure what it is;
	
	int isDynamicallyAllocated = procureTmpFloatArraysAndReturnIsDynamicallyAllocated(&arrayFloatValuesOutTmp, &arrayFloatTimesOutTmp, countValuesMax);

	char *szDefaultTimeAxisName = DEFAULT_TIME_AXIS_NAME;
	// ok, get ahold of the values for all time points.  
	int countSamples = -1;
	valueTimePairsForVariableInRunForFloatArrays(pSzVariableName, /* no final array for values */ (double *) 0,   /* no final array for time points */  (double *) 0, arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, pSzDesiredRunName, &szDefaultTimeAxisName, countValuesMax, &countSamples);
	
	*pResult = (double) FInterpolateValueForTimepointBinarySearch((float) *pDTimetoRetrieve, arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, countSamples);			// write to the result with the result of the interpolation
	// ok, now we can discard the arrays used to retrieve the values.
	demobilizeFloatArrays(arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, isDynamicallyAllocated);
}

void linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxisLinearSearchDebug(double *pDTimetoRetrieve, char **pSzVariableName, char **pSzDesiredRunName, double *pResult)
{
	// ok, allocate arrays of floats to hold the values temporarily -- before we put them in the user-specified values.
	float *arrayFloatValuesOutTmp;
	float *arrayFloatTimesOutTmp;
	int countValuesMax = 16384;		// vensim imposes some upper limit -- not sure what it is;
	
	int isDynamicallyAllocated = procureTmpFloatArraysAndReturnIsDynamicallyAllocated(&arrayFloatValuesOutTmp, &arrayFloatTimesOutTmp, countValuesMax);

//	*pResult = 3.14159;

	char *szDefaultTimeAxisName = DEFAULT_TIME_AXIS_NAME;
	// ok, get ahold of the values for all time points.  
	int countSamples = -1;
	valueTimePairsForVariableInRunForFloatArrays(pSzVariableName,(double *) 0,     (double *) 0, arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, pSzDesiredRunName, &szDefaultTimeAxisName, countValuesMax, &countSamples);

	logMacro(Rprintf("Retrieved %d samples for arrayFloatValuesOutTmp; arrayFloatValuesOutTmp[0]=%f\n", countSamples, (float) arrayFloatValuesOutTmp[0]), logMediumPriorityTier);

	*pResult = (double) arrayFloatValuesOutTmp[0];

	logMacro(Rprintf("Would attempt to interpolate a value at time %f\n", (float) *pDTimetoRetrieve), logMediumPriorityTier);

	*pResult = (double) FInterpolateValueForTimepointLinearSearch((float) *pDTimetoRetrieve, arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, countSamples);			// write to the result with the result of the interpolation
	
	// ok, now we can discard the arrays used to retrieve the values.
	demobilizeFloatArrays(arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, isDynamicallyAllocated);

	}
void linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxisLinearSearch(double *pDTimetoRetrieve, char **pSzVariableName, char **pSzDesiredRunName, double *pResult)
{
	// ok, allocate arrays of floats to hold the values temporarily -- before we put them in the user-specified values.
	float *arrayFloatValuesOutTmp;
	float *arrayFloatTimesOutTmp;
	int countValuesMax = 16384;		// vensim imposes some upper limit -- not sure what it is;
	
	int isDynamicallyAllocated = procureTmpFloatArraysAndReturnIsDynamicallyAllocated(&arrayFloatValuesOutTmp, &arrayFloatTimesOutTmp, countValuesMax);

	char *szDefaultTimeAxisName = DEFAULT_TIME_AXIS_NAME;
	// ok, get ahold of the values for all time points.  
	int countSamples = -1;
	valueTimePairsForVariableInRunForFloatArrays(pSzVariableName, /* no final array for values */ (double *) 0,   /* no final array for time points */  (double *) 0, arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, pSzDesiredRunName, &szDefaultTimeAxisName, countValuesMax, &countSamples);

	logMacro(Rprintf("Retrieved arrayFloatValuesOutTmp; arrayFloatValuesOutTmp[0]=%f\n", (float) arrayFloatValuesOutTmp[0]), logMediumPriorityTier);

	
	*pResult = (double) FInterpolateValueForTimepointLinearSearch((float) *pDTimetoRetrieve, arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, countSamples);			// write to the result with the result of the interpolation
	// ok, now we can discard the arrays used to retrieve the values.
	demobilizeFloatArrays(arrayFloatValuesOutTmp, arrayFloatTimesOutTmp, isDynamicallyAllocated);
}

void valueTimePairsForVariableInRunForStandardTimeAxis(char **szVariableName, double *arrayValuesOut, double *arrayTimeOut, char **pSzDesiredRunName, int countValuesMax, int *pResult)
{
	char *pSzTime = DEFAULT_TIME_AXIS_NAME;
	valueTimePairsForVariableInRun(szVariableName, arrayValuesOut, arrayTimeOut, pSzDesiredRunName, &pSzTime, countValuesMax, pResult);
}

void valuesForVariableInRunForStandardTimeAxis(char **szVariableName, double *arrayValuesOut, char **pSzDesiredRunName, int countValuesMax, int *pResult)
{
	double *arrayDoubleTossAway;  /* to be thrown away */
	
	int isDynamicallyAllocated = procureTmpDoubleArrayAndReturnIsDynamicallyAllocated(&arrayDoubleTossAway, countValuesMax);

	valueTimePairsForVariableInRunForStandardTimeAxis(szVariableName, arrayValuesOut, arrayDoubleTossAway, pSzDesiredRunName,  countValuesMax, pResult);

	demobilizeDoubleArray(arrayDoubleTossAway, isDynamicallyAllocated);
}

void countRecordedTimePointsForTimeAxis(char **pSzDesiredRunName, int *pResult)
{
	logMacro(Rprintf("About to calculate the number of data points available with vensim_get_data(%s, NULL, NULL, NULL, NULL, 0)\n"
,*pSzDesiredRunName), logMediumPriorityTier);

	/* now retrieve the values into those arrays */
	
	int countValuesObtained = vensim_get_data(*pSzDesiredRunName,NULL,NULL,NULL,NULL,0) ;  
	*pResult = countValuesObtained;
	
	logMacro(Rprintf("vensim_get_data incated that there are %d time points of data available\n",countValuesObtained), logHighPriorityTier);
}

#define VENSIM_SETVAL_COMMAND_PREFIX "SIMULATE>SETVAL|\"" 
//#define VENSIM_SETVAL_RUNNAME_COMMAND_AND_1024_CHAR_BUFFER_SUFFIX   VENSIM_SETVAL_COMMAND_PREFIX VENSIM_MODEL_LOAD_COMMAND_AND_1024_CHAR_BUFFER_SUFFIX
#define MAX_FLOATING_POINT_STRING_REPRESENTATION_LENGTH 	256

void setInitialParameterValue(char **pSzFullyQualifiedVarName, double *pValue, int *pResult)   /* set at initial time */
{
	/* we want something of this form:  "SIMULATE>SETVAL|\"" + varName + "\" = " + value */
	
	/* first, concat the variable name */
	char *szVariableName = *pSzFullyQualifiedVarName;
	// allocate and retrieve a concatenated string -- for simplicity, we dynamically allocate this.  Because the issuing
	// of a vensim command is a fairly heavyweight activity, it doesn't seem worth it to avoid such small overhead.

	char *szCommand = safeConcat(VENSIM_SETVAL_COMMAND_PREFIX, szVariableName, MAX_FLOATING_POINT_STRING_REPRESENTATION_LENGTH);
	char *szAfterVariableName = szCommand + strlen(VENSIM_SETVAL_COMMAND_PREFIX) + strlen(szVariableName); // if both were 0, it would be right at the beginning
	
	/**** note that we are ignoring the length of value in performing this concat -- potentially dangerous.  we should see if we can guarantee the length */
	sprintf(szAfterVariableName, "\" = %f", (float) *pValue);

	logMacro(Rprintf("About to issue vensim COMMAND %s\n",szCommand), logMediumPriorityTier);
	*pResult = vensim_command(szCommand);
	logMacro(Rprintf("vensim_command %s returned %d\n",szCommand,*pResult), logHighPriorityTier);

	free(szCommand);
}

/* ALSO REQUIRES A MODE? */

void runSimulation(char **pSzVFDOutputName, int *pResult)
{
	assembleAndIssueVensimCommand("SIMULATE>RUNNAME|", *pSzVFDOutputName, pResult);
	logMacro(Rprintf("About to issue vensim_start_simulation\n"), logMediumPriorityTier);

	logMacro(Rprintf("About to issue vensim_command2\n"), logMediumPriorityTier);
	int resultOfCommand2 = vensim_command("MENU>RUN|o");
	logMacro(Rprintf("vensim_command2 returned %d\n",resultOfCommand2), logHighPriorityTier);

	*pResult = *pResult && resultOfCommand2;
}


void runSimulationOutputToTmpVdf(int *pResult)
{
	logMacro(Rprintf("About to issue vensim_command\n"), logMediumPriorityTier);
	int resultOfCommand = vensim_command("SIMULATE>RUNNAME|tmp.vdf");
	logMacro(Rprintf("vensim_command returned %d\n",resultOfCommand), logHighPriorityTier);
	
	logMacro(Rprintf("About to issue vensim_start_simulation\n"), logMediumPriorityTier);
	int resultOfSimulation = vensim_start_simulation(1,0,1);  	

	logMacro(Rprintf("vensim_start_simulation returned %d\n",resultOfSimulation), logHighPriorityTier);
	*pResult = resultOfSimulation && resultOfCommand;  // both results need to be 1 to be considered a success
}

void runMenuSimulationOutputToTmpVdf(int *pResult)
{
	logMacro(Rprintf("About to issue vensim_command1\n"), logMediumPriorityTier);
	int resultOfCommand1 = vensim_command("SIMULATE>RUNNAME|tmp.vdf");
	logMacro(Rprintf("vensim_command1 returned %d\n",resultOfCommand1), logHighPriorityTier);
	
	logMacro(Rprintf("About to issue vensim_command2\n"), logMediumPriorityTier);
	int resultOfCommand2 = vensim_command("MENU>RUN|o");
	logMacro(Rprintf("vensim_command2 returned %d\n",resultOfCommand2), logHighPriorityTier);

	*pResult = resultOfCommand2 && resultOfCommand1;  // both results need to be 1 to be considered a success
}
	


// returns (via the last argument) the previously active logging threshold (the logging priority threshold up to and including which we print out logging messages)
void setLoggingThreshold(int *pINewLoggingTreshold, int *pResult)
{
	*pResult = currentMaximumTierToLog; 		// return the previously active logging level
	currentMaximumTierToLog = *pINewLoggingTreshold;
}

void setIsVensimWorkInProgressWindowToBeShown(int *pisVensimWIPWindowShown, int *pResult)
{
	// vensim_be_quiet uses "1" to mean that it should be quiet (i.e. that the WIP window should not be show)
	// our argument uses "1" to mean that the WIP window SHOULD be shown
	// the meaning of the argument -- and return value -- is just the logical negation of that used by vensim_be_quiet
	*pResult = !vensim_be_quiet(!*pisVensimWIPWindowShown); 		
}



void logAtLoggingRank(char *szLogMsg, int *pILoggingTier)
{
	if (*pILoggingTier <= currentMaximumTierToLog) 
		Rprintf(szLogMsg);
}

/*****************************
 utility functions below
	NOT FOR EXTERNAL USE
******************************/

// #define MAX_STATIC_FLOAT_ALLOCATION_COUNT		65536
// for now, disable static allocation -- want to get essential functionality running before working on any pointer bugs
// a reasonable size array for allocation
//float arrayStaticFloatValuesBufferTmp[MAX_STATIC_FLOAT_ALLOCATION_COUNT];
//float arrayStaticFloatTimesBufferTmp[MAX_STATIC_FLOAT_ALLOCATION_COUNT];

// countSamples must be > 0
float FInterpolateValueForTimepointBinarySearch(float timeToRetrieve, float *arrayFloatValuesForTimepoints, float *arrayFloatTimepoints, int countSamples)
{
	// ok, first we test the extreme cases -- if we are looking for a time outside of the boundaries of the timepoints
	
	if (timeToRetrieve <= arrayFloatTimepoints[0])	// are we looking for something before or at the first time?
		return arrayFloatValuesForTimepoints[0];	// 		if so, just return the first value
	else if  (timeToRetrieve >= arrayFloatTimepoints[countSamples - 1]) // are we looking for something after or at the final time? (NB: assumes countSamples > 0)
		return arrayFloatValuesForTimepoints[countSamples - 1];			// if so, just return the final time
	else		// otherwise, do a binary search btween these two extremes
		return FInterpolateValueForTimepointBinarySearchBetweenIndices(timeToRetrieve, arrayFloatValuesForTimepoints, arrayFloatTimepoints, 0, countSamples - 1);
}

float FInterpolateValueForTimepointBinarySearchBetweenIndices(float timeToRetrieve, float *arrayFloatValuesForTimepoints, float *arrayFloatTimepoints, int iMin, int iMax)
{
	if (iMin == iMax)	// BASE CASE:  we've found the first index GREATER THAN or EQUAL to the requisite index
		{
		int i = iMin;		// shorter name, since both indices are the same
		// let's preload these values 
		float currentValue = arrayFloatValuesForTimepoints[i];
		
		if (i == 0)
			return currentValue ; 		// if the first timepoint exceeds the time we want to retrieve, just return the value at that first timepoint.  I don't believe that this should ever be the case, but put the condition in just in case.
		else
			{
			
			// ok, we have a value here, and another one at the previous timestep.
			// We linearly interpolate between them
						
			float currentTime = arrayFloatTimepoints[i];		// get the current time
			float previousTime = arrayFloatTimepoints[i-1];				// get the previous time (we already ensured i>0)
			float previousValue = arrayFloatValuesForTimepoints[i-1];   // get the previous value (we already ensured i>0)

			// now just linearly interpolate
			return previousValue + (currentValue - previousValue) * ((timeToRetrieve - previousTime) / (currentTime - previousTime));
			}
		}
	else		// RECURSIVE CASE
		{
		int iMean = (iMin + iMax) / 2;					// integer arithmetic -- rounding down
														// NB:  This because of rounding, could yield a value where iMean == iMin.
		
		float timeAtMeanIndex = arrayFloatTimepoints[iMean];  	// get the time midway between the edges
		if (timeAtMeanIndex == timeToRetrieve)					// if we want exactly that time
			return arrayFloatValuesForTimepoints[iMean];		//		then give it!
		else if (timeAtMeanIndex < timeToRetrieve)		// ok, we are searching for a value that must be in the right half of the array (i.e. between iMean and iMax).  (Note that we don't need <=, as we already handled the case of ==)
			return FInterpolateValueForTimepointBinarySearchBetweenIndices(timeToRetrieve, arrayFloatValuesForTimepoints, arrayFloatTimepoints, iMean+1, iMax);		// ok, we know that the timeToRetrieve is greater than the time at iMean, and we are looking for the first index whose time is >= time to retrieve, so we need to search from iMean+1 on the left as the minimum point at which such a timepoint could lie.  NB: This is important to continue to make progress if iMean == iMin
		else // ok, timeAtMeanIndex > timeToRetrieve.   we are searching for a timepoint whose first occurence greater timeToRetrieve must occur  in the left half of the array (i.e. between iMin and iMean).  Note that this includes iMean as a possibility of the first index where the value is > timeToRetrieve. Note also that because of integer roundoff, even if iMax = iMin+1, we'll never have iMean == iMax (it will always be iMean == iMin), and thus we can continue to make progress
			return FInterpolateValueForTimepointBinarySearchBetweenIndices(timeToRetrieve, arrayFloatValuesForTimepoints, arrayFloatTimepoints, iMin, iMean);
		}
}

// linear search for testing binyar search
float FInterpolateValueForTimepointLinearSearch(float timeToRetrieve, float *arrayFloatValuesOutTmp, float *arrayFloatTimesOutTmp, int countSamples)
{
	int i = 0;	
	float previousTime = 0;	// value is irrelevant -- this will be automatically set at the end of the first iteration, and not used if we exit during the first iteration
	

	for (i = 0; i < countSamples; i++)
		{
		float currentTime = arrayFloatTimesOutTmp[i] ;
			
		if (currentTime == timeToRetrieve)
			return arrayFloatValuesOutTmp[i];
		else if (currentTime > timeToRetrieve)
			{
			float currentValue = arrayFloatValuesOutTmp[i];
			if (i == 0)
				return currentValue ; 		// if the first timepoint exceeds the time we want to retrieve, just return the value at that first timepoint
			else
				{
				// ok, we have a value here, and another one at the previous timestep.  
				// We linearly interpolate between them
				float previousValue = arrayFloatValuesOutTmp[i-1];
				return previousValue + (currentValue - previousValue) * ((timeToRetrieve - previousTime) / (currentTime - previousTime));
				}
			}
		// otherewise just continue on
		previousTime = currentTime;   // we use this if we get to the point where we need to interpolate.
		}
		
	// ok, if we've reached the end of the samples without finding a value, return the value at the final sample
	// (NB: this assumes that countSamples > 0)
	
//	return 2.71;
	return arrayFloatValuesOutTmp[countSamples - 1];

}


void 	demobilizeFloatArrays(float *arrayFloatValuesOutTmp, float *arrayFloatTimesOutTmp, BOOL isDynamicallyAllocated)
{
	if (isDynamicallyAllocated)
		{
		free(arrayFloatValuesOutTmp);
		free(arrayFloatTimesOutTmp);
		}
	
}

BOOL procureTmpFloatArraysAndReturnIsDynamicallyAllocated(float **ppArrayFloatValuesOutTmp, float **ppArrayFloatTimesOutTmp, int countValues)
{
/*
	if (countValues <= MAX_STATIC_FLOAT_ALLOCATION_COUNT)
		{
		// statically allocated
		// ok, allocate arrays of floats to hold the values
		*ppArrayFloatValuesOutTmp = arrayStaticFloatValuesBufferTmp;
		*ppArrayFloatTimesOutTmp = arrayStaticFloatTimesBufferTmp;
		return FALSE; 			
		}
	else
*/
		{
		// dynamically allocated
		// ok, allocate arrays of floats to hold the values
		*ppArrayFloatValuesOutTmp = calloc(countValues, sizeof(float));
		*ppArrayFloatTimesOutTmp = calloc(countValues, sizeof(float));
		return TRUE;
		}
}


// a reasonable size array for allocation
//#define MAX_DOUBLE_ALLOCATION_COUNT		MAX_STATIC_FLOAT_ALLOCATION_COUNT

//double arrayStaticValuesBufferTmp[MAX_DOUBLE_ALLOCATION_COUNT];

void 	demobilizeDoubleArray(double *arrayDoubleValues, BOOL isDynamicallyAllocated)
{
//	if (isDynamicallyAllocated)
		{
		free(arrayDoubleValues);
		}
	
}

BOOL procureTmpDoubleArrayAndReturnIsDynamicallyAllocated(double **ppArrayDoubleOutTmp, int countValues)
{
/*	if (countValues <= MAX_DOUBLE_ALLOCATION_COUNT)
		{
		// statically allocated
		// ok, allocate arrays of floats to hold the values
		*ppArrayDoubleOutTmp = arrayStaticValuesBufferTmp;
		return FALSE; 			
		}
	else
*/
		{
		// dynamically allocated
		// ok, allocate arrays of floats to hold the values
		*ppArrayDoubleOutTmp = calloc(countValues, sizeof(double));
		return TRUE;
		}
}


// note that arrayFinalDoubleTimesOut and arrayFinalDoubleValuesOut can be null, if no values are required
void valueTimePairsForVariableInRunForFloatArrays(char **pSzVariableName, double *arrayFinalDoubleValuesOut, double *arrayFinalDoubleTimesOut, float *arrayTmpFloatValuesOut, float *arrayTmpFloatTimesOut, char **pSzDesiredRunName, char **pSzTimeAxisName, int countValuesMax, int *pResult)
{
	/* vensim_get_data(const char *filename,const char *varname,const char *tname,float *vval,float *tval,int maxn) ;  */
	logMacro(Rprintf("About to perform vensim_get_data(%s, %s, %s, array in which to place values, array in which to place times, %d)\n"
,*pSzDesiredRunName,*pSzVariableName,*pSzTimeAxisName,countValuesMax), logMediumPriorityTier);

	/* now retrieve the values into those arrays */
	
	int countValuesObtained = vensim_get_data(*pSzDesiredRunName,*pSzVariableName,*pSzTimeAxisName,arrayTmpFloatValuesOut,arrayTmpFloatTimesOut,countValuesMax) ;  

	if (countValuesObtained > 0)
		logMacro(Rprintf("vensim_command vensim_get_data returned an array of %d value-time pairs; first element in the values array is %f\n",countValuesObtained, arrayTmpFloatValuesOut[0]), logHighPriorityTier);

	/* ok, now copy from the float arrays into any specified double arrays */
	if (arrayFinalDoubleValuesOut != (double *) 0)
	{
		copyDoubleArrayFromFloatArray(arrayFinalDoubleValuesOut, arrayTmpFloatValuesOut, countValuesObtained);
	}
	if (arrayFinalDoubleTimesOut != (double *) 0)
		copyDoubleArrayFromFloatArray(arrayFinalDoubleTimesOut, arrayTmpFloatTimesOut, countValuesObtained);

		
	if (countValuesObtained > 0)
		logMacro(Rprintf("First value in double array is %f\n", ((float) (arrayTmpFloatValuesOut[0]))), logHighPriorityTier);
		
	logMacro(Rprintf("valueTimePairsForVariableInRunForFloatArrays is completing.\n"), logHighPriorityTier);
	
	*pResult = countValuesObtained;
}


void copyDoubleArrayFromFloatArray(double *arrayValuesOut, float *arrayFloatValuesOutTmp, int countValuesObtained)
{
	for (int i = 0; i < countValuesObtained; i++)
		arrayValuesOut[i] = arrayFloatValuesOutTmp[i];
}

char *safeConcat(char *szPrefix, char *szSuffix, int countExtraSuffixCharacters)
{
	int countCharactersAllocated = strlen(szPrefix) + strlen(szSuffix) + countExtraSuffixCharacters;
	int countBytesAllocated = (sizeof(" ") * countCharactersAllocated) + 1;
	char *szComposite = malloc(countBytesAllocated);
	strcpy(szComposite , szPrefix);	// in the malloc, we allocated enough space for this.
	strcat(szComposite , szSuffix);
	
	return szComposite ;
}




// vensim_get_data("CMD.vdf", VVAR, "Time", Rval(1), Tval(1), maxpoints
