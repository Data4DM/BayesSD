testLoadVensimModel <- function () 
	{ .C("testLoadVensimModel"); 	
	}

linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxisLinearSearchDebug	<- function(timeToRetrieve,  strVariableName, strDesiredRunName)
{
	  .C("linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxisLinearSearchDebug", 
		 as.double(timeToRetrieve), 
		 strVariableName, 
		 strDesiredRunName, 
		 result=as.double(-1))$result 
}
	
linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxis <- function(timeToRetrieve,  strVariableName, strDesiredRunName)
{
	  .C("linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxis", 
		 as.double(timeToRetrieve), 
		 strVariableName, 
		 strDesiredRunName, 
		 result=as.double(-1))$result 
}

linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxisLinearSearch <- function(timeToRetrieve,  strVariableName, strDesiredRunName)
{
	  .C("linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxisLinearSearch", 
		 as.double(timeToRetrieve), 
		 strVariableName, 
		 strDesiredRunName, 
		 result=as.double(-1))$result 
}

setIsVensimWorkInProgressWindowToBeShown <- function(isVensimWorkInProgressWindowToBeShown)
	{ 
	  .C("setIsVensimWorkInProgressWindowToBeShown", 
		 isVensimWorkInProgressWindowToBeShown, 
		 result=as.integer(-1))$result 
	}

	
#	returns (via the last argument) the previously active logging threshold (the logging priority threshold up to and including which we print out logging messages)
setLoggingThreshold <- function(iNewLoggingThreshold)
	{ 
	  .C("setLoggingThreshold", 
		 iNewLoggingThreshold, 
		 result=as.integer(-1))$result 
	}

logAtLoggingRank <- function(msg, iLoggingLevel)
	{ .C("logAtLoggingRank", 
		 msg,
		 iLoggingLevel); 	
	}

testLogging <- function(msg, iLoggingLevel)
	{ .C("testLogging", 
		 msg,
		 iLoggingLevel); 	
	}

	
traceR <- function (traceTest) 
	{ .C("traceR", 
		 traceTest); 	
	}

testCModifyArrays <- function (x) 
	{ listResult <- .C("testCModifyArrays", 
		as.double(x),
		x,
		as.double(vector("double",length(x)))); 	
		
	listResult
	}
testCModifyArrays2 <- function (x) 
	{ listResult <- .C("testCModifyArrays", 
		as.double(x),
		x,
		as.double(vector("double",length(x)))); 	
		
	listResult
	}

testCModifyArrays3 <- function (x) 
	{ listResult <- .C("testCModifyArrays", 
		as.double(x),
		x,
		result=as.double(vector("double",length(x)))); 	
		
	listResult[[1]]
	}
	
fakeLoadVensimModel <- function (strModelPathAndFileName, flag)  
	{ 
	   (flag);
	  .C("fakeLoadVensimModel", 
		 strModelPathAndFileName, 
		 as.integer(flag),
		 result=as.integer(-1))$result 
	}

loadVensimModel <- function (strModelPathAndFileName)  
	{ 
	  .C("loadVensimModel", 
		 strModelPathAndFileName, 
		 result=as.integer(-1))$result 
	}

loadVDF <- function (strVDFPathAndFileName)  
	{ 
	.C("loadVDF", 
	   strVDFPathAndFileName, 
	   result=as.integer(-1))$result 
	}

	
valueTimePairsForVariableInRun <- function(strVariableName, strDesiredRunName, strTimeAxisName, countValuesMax) 
	{ 
		arrayValues <- double(countValuesMax) # array with sufficient space for the maximum number of values 
		arrayTimes <- double(countValuesMax)	 # array with sufficient space for the maximum number of time points
#		arrayValues[1] = 3.14159				# test
		listResults <- 
			.C("valueTimePairsForVariableInRun", 
			 strVariableName,
			 arrayValuesOut=arrayValues,	
			 arrayTimesOut=arrayTimes,	
			 strDesiredRunName,
			 strTimeAxisName, 
			 countValuesMax,
			 result=as.integer(-1));
		
		# get the values resulting from the call (required for safe operation because of the copying that R does on the arguments)
		countValuesRead <- listResults$result;
		arrayValuesOut <- listResults$arrayValuesOut
		arrayTimesOut <- listResults$arrayTimesOut
		
		traceR(paste("#1 read count of values of ", countValuesRead))
		traceR(paste("#2: arrayValuesOut[1]=", arrayValuesOut[1]))
		
		if (countValuesMax > countValuesRead)
			{
			subscriptsToDrop = (countValuesRead+1:countValuesMax)
			arrayValuesOutTrimmed <- arrayValuesOut[-subscriptsToDrop] # array with sufficient space for the maximum number of values 
			arrayTimesOutTrimmed <- arrayTimesOut[-subscriptsToDrop]     # array with sufficient space for the maximum number of time points
			return(list(countValuesRead, arrayValuesOutTrimmed , arrayTimesOutTrimmed))
			}
		else
			return(list(countValuesRead, arrayValuesOut, arrayTimesOut))

	}
	
	
		 
valueTimePairsForVariableInRunForStandardTimeAxis <- function(strVariableName, strDesiredRunName, countValuesMax) 
	{ 
		valueTimePairsForVariableInRun(strVariableName, strDesiredRunName, "Time", countValuesMax) 
	}
			
setInitialParameterValue <- function(strFullyQualifiedVariableName, fValue) 
	{ .C("setInitialParameterValue", 
		 strFullyQualifiedVariableName,
		 as.double(fValue),	
		 result=as.integer(-1))$result;
	}

runSimulation <- function(strVDFPathAndFilename) 
	{ .C("runSimulation", 
		 strVDFPathAndFilename,
		 result=as.integer(-1))$result;
	}

runSimulationOutputToTmpVdf <- function() 
	{ .C("runSimulationOutputToTmpVdf", 
		 result=as.integer(-1))$result;
	}
runMenuSimulationOutputToTmpVdf <- function() 
	{ .C("runMenuSimulationOutputToTmpVdf", 
		 result=as.integer(-1))$result;
	}

#****This might have to be called only when the model and run are both loaded?

countRecordedTimePointsForTimeAxis <- function(strDesiredRunName)
{
	.C("countRecordedTimePointsForTimeAxis",
		strDesiredRunName, 
		result = as.integer(-1))$result;
}


valuesForVariableInRunForStandardTimeAxis <- function(strVariableName, strDesiredRunName)
{
	countValuesToRetrieve <- countRecordedTimePointsForTimeAxis(strDesiredRunName);
	
	valuesOfSpecifiedCountForVariableInRunForStandardTimeAxis(strVariableName, strDesiredRunName, countValuesToRetrieve)
}

valuesOfSpecifiedCountForVariableInRunForStandardTimeAxis <- function(strVariableName, strDesiredRunName, countValuesToRetrieve)
{
	arrayValuesOut <- double(countValuesToRetrieve);
	
	.C("valuesForVariableInRunForStandardTimeAxis",
		strVariableName,
		result = arrayValuesOut,
		strDesiredRunName,
		countValuesToRetrieve,
		as.integer(-1))$result;
}

linearlyInterpolatedValuesForVariableInRunAtMultipleTimesForStandardTimeAxis <- function(vecMultipleTimesToRetrieve, strVariableName, strDesiredRunName)
{
	countTimesToRetrieve <- length(vecMultipleTimesToRetrieve);
	arrayValuesOut <- double(countTimesToRetrieve);
	
	.C("linearlyInterpolatedValuesForVariableInRunAtMultipleTimesForStandardTimeAxis",
		vecMultipleTimesToRetrieve,
		countTimesToRetrieve,
		strVariableName,
		strDesiredRunName,
		result=arrayValuesOut)$result;
}

# some supporting functions are below
# these enjoy use across models, and are thus included here

# function to process samples output by mcmc
generateFnProcessSamples <- function(fnProcessSamples)
	{
	return(function(mcmcSamples)
		{
		return(apply(mcmcSamples, 1, fnProcessSamples));
		});
	}

# call this with a vector of times and to get back a function that allow us to read different variables 
# at those times froma set of samples. Specifically, after passing a vector of times, we get back a 
# function that takes a fully qualified variable name (i.e. including subscript notation) to get back a 
# function f that can take a parameter vector, and then runs the model on that parameter vector, and return 
# the values of the specified variables at that vector.
#
# this function f can then be passed to generateFnAccumulateOutputForUntransformedSamples to get a function
# that can be applied to mcmc output
generateFnTimepointByVariableArrayForSamples <- function(vecTimes, fnRunModelForParameters, strVensimRunName)
{
	countTimes <- length(vecTimes);
	return(function (vecFullyQualifiedVariableName)
	{	
		return(function(mcmcUntransformedSamples)
			{
			# because of the 3d structure of the resulting array, this operation does not appear easy to do with apply
			countSamples <- dim(mcmcUntransformedSamples)[1];		# count the number of rows in the sample listing
			# ok, create an empty array that has for each parameter sample in mcmcUntransformedSamples an array of data (one for each timepoint and variable) 
			arrayTimepointByVariableForSamples <- array(0,c(countSamples,length(vecFullyQualifiedVariableName), countTimes));
			
			iIteration <- 0;
			# define a utility function that will take a sample index and write the variable by time point 
			# array for the sample at that index 
			fnPopulateVariableByTimePointArrayForISample <- function(iSample) 
				{ 
				# first, run the model for the parameters specified by this sample!
				vecParametersForSample <- mcmcUntransformedSamples[iSample,];

				if (iIteration %% 100 == 0)
				{
					print(iIteration);
				}
				iIteration <<- iIteration + 1;
#				print("Running model on parameters: ");
#				print(vecParametersForSample);
					
				fnRunModelForParameters(vecParametersForSample);
				
				# now, for each variable,
				#	retrieve the values for each timepoint
				#	populate the associated array
				
				sapply(1:length(vecFullyQualifiedVariableName),  
						function(iFullyQualifiedVariableName) 
							{ 
							# ok, get the name of the variable
							strFullyQualifiedVariableName <- vecFullyQualifiedVariableName[iFullyQualifiedVariableName] ; 
							# retrieve the data for each variable in a (linear) array
							valuesAtSpecifiedTimes <- linearlyInterpolatedValuesForVariableInRunAtMultipleTimesForStandardTimeAxis(vecTimes, strFullyQualifiedVariableName, strVensimRunName); 
							# ok, now go through each time, and record the value for the current variable at 
							# that time into the appropriate slot of the 3d structure
							sapply(1:countTimes, 
								function(iTime) 
									{ 
									# update the array
									arrayTimepointByVariableForSamples[iSample, iFullyQualifiedVariableName, iTime] <<- valuesAtSpecifiedTimes[iTime];
									} );
							}); 
				}
			
			# for each sample, now populate the variable by time point array 
			sapply(1:countSamples, fnPopulateVariableByTimePointArrayForISample);
			
			return(arrayTimepointByVariableForSamples);
			});
	});
}

# the function below can be applied to the output of generateFnTimepointByVariableArrayForSamples to e.g. prepare data
# for a hexbin plot
# example use
# plot(hexbin(xyPointsFromSampleByVariableByTimepointArray(1, c(0,10,20,30,40,50, 60,70, 80, 90,100), arrayTimepointByVariableForSamples)))

xyPointsFromSampleByVariableByTimepointArray <- function(iVariable, vecTimes, arraySampleByVariableByTimepointArray)
{
	vecArrayDims <- dim(arraySampleByVariableByTimepointArray);
	countTimepoints <- vecArrayDims[3];
	countSamples <-  vecArrayDims[1];
	# for efficiency, we preallocate the array
	vecTimesAndValues <- array(NA, dim=c(countSamples*countTimepoints,2));
	
	# we do this with a loop, as it seems that there isn't a truly general Reduce that would allow us to combine sucessive columns using rbind
	for(iTimepoint in 1:countTimepoints)
		{
		arrayIndexBeginning <- countSamples*(iTimepoint-1) + 1;	# if we're at tfirst timepoint, we start at index 1
		arrayIndexEnd <- arrayIndexBeginning+countSamples-1;	# if we have just 1 sample per time,point, the end is at the same index as the beginning
		
		vecTimesAndValues[arrayIndexBeginning:arrayIndexEnd,1] <- rep(vecTimes[iTimepoint], countSamples);
		vecTimesAndValues[arrayIndexBeginning:arrayIndexEnd,2] <- arraySampleByVariableByTimepointArray[,iVariable,iTimepoint];
		}
			
	return(vecTimesAndValues);
}


xyPointsFromSampleByVariableByTimepointArrayDeprecated <- function(iVariable, vecTimes, arraySampleByVariableByTimepointArray)
{
	vecArrayDims<-dim(arraySampleByVariableByTimepointArray);
	countTimepoints <- vecArrayDims[3];
	countSamples <-  vecArrayDims[1];
	
	# we do this with a loop, as it seems that there isn't a truly general Reduce that would allow us to combine sucessive columns using rbind
	for(iTimepoint in 1:countTimepoints)
		{
		vecTimepointsAcrossSamples <- rep(vecTimes[iTimepoint], countSamples);
		vecDataPointsAcrossSamples <- arraySampleByVariableByTimepointArray[,iVariable,iTimepoint];
		
		# the "c" operator can appends vectors
		vecTimesAccumulatedFromArray <<- c(vecTimesAccumulatedFromArray, vecTimepointsAcrossSamples);
		vecValuesAccumulatedFromArray <<- c(vecValuesAccumulatedFromArray, vecDataPointsAcrossSamples);
		}
			
	return(cbind(vecTimesAccumulatedFromArray, vecValuesAccumulatedFromArray));
}
plotTimepointsForVariablesInRun(seq(0,300,12), "CtMCMC.vdf", c("Infectives"), "Estimated Infective Individuals");

plotTimepointsForVariablesInRunWithTitle <- function(timepointsForTrajectory, vecStrVariables, strRun, strTitle, fnRunModel)
{
	fnfnSampleTimepointsForStrVariables <- generateFnTimepointByVariableArrayForSamples(timepointsForTrajectory,fnRunModel,strRun);
	fnfnSampleTimepointsForInfectivesInSamples<-fnfnSampleTimepointsForStrVariables(c("Infectives"));
	arrayTimepointByVariableForSamplesRuns<-fnfnSampleTimepointsForInfectivesInSamples(mcmcOutputAllDataRealWorldEmpiricalDataVectorParmSetB1MV1);
	# plot baseline infectives
	xyPoints <- xyPointsFromSampleByVariableByTimepointArray(1, timepointsForTrajectory, arrayTimepointByVariableForSamplesRuns);
	windows(); plot(hexbin(xyPoints),main=strTitle);
	
	return(xyPoints);
}



# functions to find the initial point for MCMC itereations
identifyRandomNonZeroPosteriorTheta <- function(thetaMinimumBounds, thetaMaximumBounds, fnLogPosterior)
{
	stopifnot(length(thetaMinimumBounds) == length(thetaMaximumBounds));
	spaceWidth <- thetaMaximumBounds - thetaMinimumBounds;
	
	while (1)
	{
		# ok, draw a vector whose element at index i is drawn uniformly between thetaMinimumBounds[i] and thetaMaximumBounds[i]
		vecDraw = thetaMinimumBounds+sapply(1:length(thetaMinimumBounds), function(i) { return(runif(1,0,spaceWidth[i])); });
		if (fnLogPosterior(vecDraw) > -Inf)
			return(vecDraw);
	}
}
	
identifyInitialTheta <- function(thetaMinimumBounds, thetaMaximumBounds, fnLogPosterior, isOptimizeInitialPoint)
{
	thetaNaiveNonZeroPosterior <- identifyRandomNonZeroPosteriorTheta(thetaMinimumBounds, thetaMaximumBounds, fnLogPosterior);
	if (isOptimizeInitialPoint)
		{
		# if we are to optimize around the point, do so (with fnscale) trying to find the MAXIMUM 
		# (not the minimum, which is the default interpretation) value of the logPosterior
		return(optim(thetaNaiveNonZeroPosterior, fnLogPosterior, control=list(fnscale=-1))$par)
		}
	else
		{
		return(thetaNaiveNonZeroPosterior)
		}
}

identifyOneWaySensitivityOfLogPosteriorAroundPoint <- function(thetaAroundWhichToFindSensitivity, fnLogPosterior, sensitivityCoefficient=0.01)
{
	countParameters <- length(thetaAroundWhichToFindSensitivity);
	sensitivityResults <- rep(-Inf,countParameters);
	
	# get the posterior value at the specified point
	logPosteriorValueAtTheta <- fnLogPosterior(thetaAroundWhichToFindSensitivity);
	stopifnot(abs(logPosteriorValueAtTheta) != Inf);
	
	# ok, for each parameter, conduct a sensitivity analysis focusing on change in that specific parameter
	for (iParam in 1:countParameters)
	{
		baselineValueForSpecificParam <- thetaAroundWhichToFindSensitivity[iParam];
		thetaPerturbed <- substituteValueAtIndexInVector(baselineValueForSpecificParam*(1+sensitivityCoefficient), 	
												iParam, 
												thetaAroundWhichToFindSensitivity);
		logPosteriorValueAtThetaPerturbed <-  fnLogPosterior(thetaPerturbed);
#		print("#1");
#		print(thetaPerturbed);
#		print(logPosteriorValueAtThetaPerturbed);
		stopifnot(abs(logPosteriorValueAtThetaPerturbed) != Inf);
		deltaLogPosterior = logPosteriorValueAtThetaPerturbed - logPosteriorValueAtTheta;
		
		sensitivityResults[iParam] <- deltaLogPosterior;
	}	
	
	return(sensitivityResults);

}

identifyOneWayElasticityAroundPoint <- function(thetaAroundWhichToFindSensitivity, fnLogPosterior, sensitivityCoefficient=0.01)
{
	countParameters <- length(thetaAroundWhichToFindSensitivity);
	elasticityResults <- rep(-Inf,countParameters);
	
	# get the posterior value at the specified point
	logPosteriorValueAtTheta <- fnLogPosterior(thetaAroundWhichToFindSensitivity);
	stopifnot(abs(logPosteriorValueAtTheta) != Inf);
	
	# ok, for each parameter, conduct a sensitivity analysis focusing on change in that specific parameter
	for (iParam in 1:countParameters)
	{
		baselineValueForSpecificParam <- thetaAroundWhichToFindSensitivity[iParam];
		thetaPerturbed <- substituteValueAtIndexInVector(baselineValueForSpecificParam*(1+sensitivityCoefficient), 	
												iParam, 
												thetaAroundWhichToFindSensitivity);
		logPosteriorValueAtThetaPerturbed <-  fnLogPosterior(thetaPerturbed);
#		print(logPosteriorValueAtTheta);
#		print(logPosteriorValueAtThetaPerturbed);
		stopifnot(abs(logPosteriorValueAtThetaPerturbed) != Inf);
		deltaLogPosterior = logPosteriorValueAtThetaPerturbed - logPosteriorValueAtTheta;
		# elasticity is PROPORTIONAL CHANGE in posterior divided by PROPORTIONAL CHANGE in parameters
		# the parameter is changing by a PROPORTIONAL factor of 1+sensitivityCoefficient
		# thus log elasticity is 			
		#  (logPosteriorPerturbed-logPosteriorOriginal) - log(1+sensitivityCoefficient)
		
		elasticityResults[iParam] <- exp(deltaLogPosterior - log(1+sensitivityCoefficient));
	}	
	
	return(elasticityResults);

}

substituteValueAtIndexInVector <- function(valueToSubstitute, indexAtWhichToSubstitute, vectorInWhichToSubstitute)
{
	stopifnot(indexAtWhichToSubstitute >= 1);
	stopifnot(indexAtWhichToSubstitute <= length(vectorInWhichToSubstitute));

	# R is pass by reference -- this does not modify variables outside of this function
	vectorInWhichToSubstitute[indexAtWhichToSubstitute] <- valueToSubstitute;
	
	return(vectorInWhichToSubstitute);
}
