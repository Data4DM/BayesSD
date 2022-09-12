#
# 3 parameter version (c,mu,p)
#

# the log of the sampling function for the 3 parameter version -- computes the likelihood of observing the empirical data vector given the parameters theta and the specified times for the datapoints

logSamplingFn3Parms <- function(theta, empiricalDataVector, timesForDataPoints)
	{
	runSEIRFor3Parameters(theta$c, theta$muMeanLatentPeriod);

	probability <- theta$p
	logAccumulated = 0.0
	
	for (i in 1:length(timesForDataPoints))
		logAccumulated = logAccumulated + log(dbinom(empiricalDataVector[i], round(linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxis(timesForDataPoints[i],"Completing Latent Period", "SEIRMCMC.vdf")), probability));
					
	# return the log of the probability
	return(logAccumulated);
	}

# the next two functions illustration priors

# 3D version of a heavily biased prior, to illustrate robustness under such priors
logPriorBiasedPriorFn3Parms <- function(theta)
{
		if (theta$c < 0 || theta$c > 500 || theta$p < 0 || theta$p > 1 || theta$muMeanLatentPeriod < 0.07142857 || theta$muMeanLatentPeriod > 36)
		{
			return(-Inf);
		}
		else
			return(dlnorm(theta$c, log(350/2), 0.5, log=TRUE)+dnorm(theta$muMeanLatentPeriod, log(6), log(1.5), log=TRUE)+dtriangle(theta$p, 0, 1));
}

# 3D version of a minimally informative 
logPriorUniformFn3Parms <- function(theta)
{
		if (theta$c < 0 || theta$c > 500 || theta$p < 0 || theta$p > 1 || theta$muMeanLatentPeriod < 0.07142857 || theta$muMeanLatentPeriod > 36)
		{
			return(-Inf);
		}
		else
			return(0);
}


# the posterior is computed from a prior (specified by fnlogPrior) and the sampling function (capturing the likelihoods)
logPosterior3Parms <- function(theta, empiricalDataVector, timesForDataPoints, fnlogPrior) 
	{ 
		logPrior = fnlogPrior(theta);
		
		if (logPrior == -Inf)
		{
			return(-Inf);
		}
		else
		{
			return (logSamplingFn3Parms(theta, empiricalDataVector, timesForDataPoints) + logPrior);
		}
	}

# this function takes in the empirical data vector, associated times, and a function specify of the prior to use,
# and returns a function that computes -- from a parameter vector -- the value of the posterior at those parameters
generateFnForMCMCMetrop1R3Parms <- function(empiricalDataVector, timesForDataPoints, fnlogPrior)
	{
	return(function(parameterVector) 
		{ 		
		cParam  <- parameterVector[[1]];
		muMeanLatentPeriodParam <- parameterVector[[2]];
		pParam <- parameterVector[[3]];
		
		return(logPosterior3Parms(list(c=cParam, muMeanLatentPeriod=muMeanLatentPeriodParam, p=pParam),
												empiricalDataVector,
												timesForDataPoints,
												fnlogPrior));
		});
	}

# utility functions
runSEIRFor3Parameters <- function(cParam, muMeanLatentPeriod)
{
#	print(paste("runSEIRForParameters cParam=", cParam));
	setInitialParameterValue("Contacts per Week c", cParam);
	setInitialParameterValue("Mean Latent Period in Weeks", muMeanLatentPeriod);
	runSimulation("SEIRMCMC.vdf")
}
	
runSEIRForParameterVector3Parms <- function(vecParams)
{
	# order of parameters in the vector is 
	#	c
	#	mu (mean Mean Latent Period in Weeks)
	#	p
	return(runSEIRFor3Parameters(vecParams[[1]], vecParams[[2]]));
}
	
#
# 2 parameter version (c, p)
#
# the log of the sampling function for the 2 parameter version -- computes the likelihood of observing the empirical data vector given the parameters theta and the specified times for the datapoints

logSamplingFn2Parms <- function(theta, empiricalDataVector, timesForDataPoints)
	{
	runSEIRFor2Parameters(theta$c);

	probability <- theta$p
	logAccumulated = 0.0
	
	for (i in 1:length(timesForDataPoints))
	{
		modelValue <- linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxis(as.double(timesForDataPoints[i]),"Completing Latent Period", "SEIRMCMC.vdf");
		logAccumulated = logAccumulated + log(dbinom(empiricalDataVector[i], round(modelValue), probability));
#		print("Time: ");
#		print(timesForDataPoints[i]);
#		print("Empirical value");
#		print(empiricalDataVector[i]);
#		print("Model value");
#		print(modelValue);
#		print("Probability: ");
#		print(dbinom(empiricalDataVector[i], round(linearlyInterpolatedValueForVariableInRunAtTimeForStandardTimeAxis(as.double(timesForDataPoints[i]),"Completing Latent Period", "SEIRMCMC.vdf")), probability));
	}
					
	# return the log of the probability
	return(logAccumulated);
	}

# 2D version of a heavily biased prior, to illustrate robustness under such priors
logPriorBiasedPriorFn2Parms <- function(theta)
{
		if (theta$c < 0 || theta$c > 365*10 || theta$p < 0 || theta$p > 1)
		{
			return(-Inf);
		}
		else
			return(dlnorm(theta$c, log(350/2), 0.5, log=TRUE)+dtriangle(theta$p, 0, 1));
}

logPriorBiasedPriorFn2ParmsDeprecated <- function(theta)
{
		if (theta$c < 0 || theta$c > 500 || theta$p < 0 || theta$p > 1)
		{
			return(-Inf);
		}
		else
			return(dlnorm(theta$c, log(350/2), 0.5, log=TRUE)+dtriangle(theta$p, 0, 1));
}

logPriorUniformFn2Parms <- function(theta)
{
		if (theta$c < 0 || theta$c > 500 || theta$p < 0 || theta$p > 1)
		{
			return(-Inf);
		}
		else
			return(0);
}


logPosterior2Parms <- function(theta, empiricalDataVector, timesForDataPoints, fnlogPrior) 
	{ 
		logPrior = fnlogPrior(theta);
		
		if (logPrior == -Inf)
		{
			return(-Inf);
		}
		else
		{
			return (logSamplingFn2Parms(theta, empiricalDataVector, timesForDataPoints) + logPrior);
		}
	}

	
generateFnForMCMCMetrop1R2Parms <- function(empiricalDataVector, timesForDataPoints, fnlogPrior)
	{
	return(function(parameterVector) 
		{ 		
		cParam  <- parameterVector[[1]];
		pParam <- parameterVector[[2]];
		
		return(logPosterior2Parms(list(c=cParam, p=pParam),
												empiricalDataVector,
												timesForDataPoints,
												fnlogPrior));
		});
	}
generateFnForMCMCMetrop1RPriorOnly2Parms <- function(fnLogPrior)
{
	return(function(parameterVector) 
		{ 		
		cParam  <- parameterVector[[1]];
		pParam <- parameterVector[[2]];
		
		return(fnLogPrior(list(c=cParam, p=pParam)));
		});
}

runSEIRFor2Parameters <- function(cParam)
{
#	print(paste("runSEIRForParameters cParam=", cParam));
	setInitialParameterValue("Contacts per Week c", cParam);
	runSimulation("SEIRMCMC.vdf")
}
	
runSEIRForParameterVector2Parms <- function(vecParams)
{
	# order of parameters in the vector is 
	#	c
	#	p
	return(runSEIRFor2Parameters(vecParams[[1]]));
}
	
# function to process samples output by mcmc
generateFnProcessSamples2Parms <- function(fnProcessSamples)
	{
	return(function(mcmcSamples)
		{
		return(apply(mcmcSamples, 1, fnProcessSamples));
		});
	}



#calculateAndEvaluateChain <- function(fnGenerateFnForMCMCMetrop1R, vecEmpiricalData, vecTimesForDataPoints, countParameters, lowerSearchBounds, upperSearchBounds, vecTune,  countChainLength, countBurninLength, vecParameterNames, strFigureSuffix)
#{	
#	fnPosterior <- generateFnForMCMCMetrop1R2Parms(vecEmpiricalData,vecTimesForDataPoints, logPriorUniformFn2Parms)
#	fnPosterior <- generateFnForMCMCMetrop1R2Parms(vecEmpiricalData,vecTimesForDataPoints, logPriorUniformFn2Parms)
#	
#	return(calculateAndEvaluateChainForPosterior(fnPosterior));
#}



compareChainScenarios <- function(mcmcOutput, strFigureSuffix, trajectoryTimepointSpacingInWeeks)
{	
	# ok, for the baseline case, now read the count of Infective and Exposed individuals, and plot their density over the set of samples
	#

	# for flexibility, we can describe this piecewise
	# 
	# first, some preparatory work
	timepointsForTrajectory <- seq(0,31,trajectoryTimepointSpacingInWeeks)   # sample every day over the entire timeframe of the simulation
	fnfnSampleTimepointsForStrVariables <- generateFnTimepointByVariableArrayForSamples(timepointsForTrajectory,runSEIRForParameterVector3Parms);
	fnfnSampleTimepointsForInfectivesAndExposedsInSamples<-fnfnSampleTimepointsForStrVariables(c("Infective", "Exposed"));
	
	# ok, now get information on the baseline run
	
	arrayTimepointByVariableForSamplesBaseline<-fnfnSampleTimepointsForInfectivesAndExposedsInSamples(mcmcOutput);

	# plot baseline infectives
	matrixBaselineInfectiveOverTime <- xyPointsFromSampleByVariableByTimepointArray(1, timepointsForTrajectory, arrayTimepointByVariableForSamplesBaseline) 
	windows(); plot(hexbin(matrixBaselineInfectiveOverTime, xbins=100),main=paste("Baseline Infective Individuals", strFigureSuffix));
	#windows(); hist2d(xyPointsFromSampleByVariableByTimepointArray(1, timepointsForTrajectory, arrayTimepointByVariableForSamplesBaseline), nbins=100,main=paste("Baseline Infective Individuals", strFigureSuffix));

	# plot baseline exposeds
	matrixBaselineExposedOverTime <- xyPointsFromSampleByVariableByTimepointArray(2, timepointsForTrajectory, arrayTimepointByVariableForSamplesBaseline)
	windows(); plot(hexbin(matrixBaselineExposedOverTime, xbins=100),main=paste("Baseline Exposed Individuals", strFigureSuffix));

	
	
	# investigating a hygenic intervention lowering beta by 25%
	
	# first, plot the results of the intervention itself
	mcmcBoundedRunsInitialChainHygenicIntervention <- t(apply(mcmcOutput, 1, function(v) { c(v[1]*0.75,v[2]) }));
	arrayTimepointByVariableForSamplesBaselineHygenicIntervention <- fnfnSampleTimepointsForInfectivesAndExposedsInSamples(mcmcBoundedRunsInitialChainHygenicIntervention );

	# plot intervention infectives
	matrixInterventionInfectiveOverTime <- xyPointsFromSampleByVariableByTimepointArray(1, timepointsForTrajectory, arrayTimepointByVariableForSamplesBaselineHygenicIntervention)
	windows(); plot(hexbin(matrixInterventionInfectiveOverTime, xbins=100),main=paste("Hygenic Intervention Infective Individuals", strFigureSuffix));

	# plot intervention exposeds
	matrixInterventionExposedOverTime <- xyPointsFromSampleByVariableByTimepointArray(2, timepointsForTrajectory, arrayTimepointByVariableForSamplesBaselineHygenicIntervention)
	windows(); plot(hexbin(matrixInterventionExposedOverTime, xbins=100),main=paste("Hygenic Intervention Exposed Individuals", strFigureSuffix));


	
	
	# and now plot the difference of the intervention from the baseline
	
	arrayTimepointByVariableForSamplesBaselineHygenicInterventionReductionFromBaseline <- arrayTimepointByVariableForSamplesBaselineHygenicIntervention-arrayTimepointByVariableForSamplesBaseline;

	# plot difference for infectives
	matrixIncrementalInterventionDiffInInfectiveOverTime <- xyPointsFromSampleByVariableByTimepointArray(1, timepointsForTrajectory, arrayTimepointByVariableForSamplesBaselineHygenicInterventionReductionFromBaseline)
	windows(); plot(hexbin(matrixIncrementalInterventionDiffInInfectiveOverTime, xbins=100),main=paste("Difference of Intervention from Baseline for Infectives", strFigureSuffix));

	# plot difference for exposeds
	matrixIncrementalInterventionDiffInExposedOverTime <- xyPointsFromSampleByVariableByTimepointArray(2, timepointsForTrajectory, arrayTimepointByVariableForSamplesBaselineHygenicInterventionReductionFromBaseline)
	windows(); plot(hexbin(matrixIncrementalInterventionDiffInExposedOverTime, xbins=100),main=paste("Difference of Intervention from Baseline for Exposeds", strFigureSuffix));

#	save.image("Bounded SEIR v2.RData")
#	windows(); hist2d(xyPointsFromSampleByVariableByTimepointArray(1, timepointsForTrajectory, arrayTimepointByVariableForSamplesBaseline), nbins=100,main=paste("Baseline Infective Individuals", strFigureSuffix));
	
	return(list(mcmcSamples=mcmcOutput, arrayTimepointByVariableForSamplesBaseline=arrayTimepointByVariableForSamplesBaseline, arrayTimepointByVariableForSamplesBaselineHygenicIntervention=arrayTimepointByVariableForSamplesBaselineHygenicIntervention, arrayTimepointByVariableForSamplesBaselineHygenicInterventionReductionFromBaseline=arrayTimepointByVariableForSamplesBaselineHygenicInterventionReductionFromBaseline));
}

calculateAndEvaluateChainForInitialPoints3Parms <- function(fnLogPrior, vecAllEmpiricalData, vecTimesForAllDataPoints, countInitialDataPoints, countParameters, lowerSearchBounds, upperSearchBounds, vecTune,  countChainLength, countBurninLength, vecParameterNames)
{
	return(calculateAndEvaluateChainForInitialPoints(generateFnForMCMCMetrop1R3Parms, fnLogPrior, vecAllEmpiricalData, vecTimesForAllDataPoints, countInitialDataPoints, countParameters, lowerSearchBounds, upperSearchBounds, vecTune,  countChainLength, countBurninLength, vecParameterNames));
}
	
calculateAndEvaluateChainForInitialPoints2Parms <- function(fnLogPrior, vecAllEmpiricalData, vecTimesForAllDataPoints, countInitialDataPoints, countParameters, lowerSearchBounds, upperSearchBounds, vecTune,  countChainLength, countBurninLength, vecParameterNames)
{
	return(calculateAndEvaluateChainForInitialPoints(generateFnForMCMCMetrop1R2Parms, fnLogPrior, vecAllEmpiricalData, vecTimesForAllDataPoints, countInitialDataPoints, countParameters, lowerSearchBounds, upperSearchBounds, vecTune,  countChainLength, countBurninLength, vecParameterNames));
}

	
calculateAndEvaluateChainForInitialPoints <- function(fnGenerateFnForMCMCMetrop1R, fnLogPrior, vecAllEmpiricalData, vecTimesForAllDataPoints, countInitialDataPoints, countParameters, lowerSearchBounds, upperSearchBounds, vecTune,  countChainLength, countBurninLength, vecParameterNames)
{
	fnPosterior <- generateFnForMCMCMetrop1R2Parms(vecAllEmpiricalData[1:countInitialDataPoints],vecTimesForAllDataPoints[1:countInitialDataPoints], fnLogPrior)
	
	return(calculateAndEvaluateChainForPosterior(fnPosterior, countParameters, lowerSearchBounds, upperSearchBounds, vecTune,  countChainLength, countBurninLength, vecParameterNames, paste("first ", countInitialDataPoints, " data points") ));
}

#mcmc10Runs <- MCMCmetrop1R(generateFnForMCMCMetrop1R(c(0,2,6,16,34, 76,120,115,95,71, 43),c(0,10,20,30,40,50, 60,70, 80, 90,100)), theta.init=c(0.04,0.8,0.1), thin=1,mcmc=10,burnin=10,logfun=TRUE,verbose=1,tune=c(0.037,0.037,0.037), V=diag(1E-4,3));


#mcmc100kRuns <- MCMCmetrop1R(generateFnForMCMCMetrop1R(c(0,2,6,16,34, 76,120,115,95,71, 43),c(0,10,20,30,40,50, 60,70, 80, 90,100)), theta.init=c(0.04,0.8,0.1), thin=1,mcmc=100000,burnin=20000,logfun=TRUE,verbose=1,tune=c(0.037,0.037,0.037), V=diag(4E-4,3));

#plot.mcmc(mcmc100kRuns);

#save.image("Bounded SIR v1.RData")
