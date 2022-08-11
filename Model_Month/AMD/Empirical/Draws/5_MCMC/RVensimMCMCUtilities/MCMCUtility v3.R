calculateAndEvaluateChainForFnGeneratePosteriorFromBounds <- function(fnBoundsToFnPosterior, countParameters, lowerSearchBounds, upperSearchBounds, vecTune,  countChainLength, countBurninLength, vecParameterNames, strFigureSuffix)
{
	return(calculateAndEvaluateChainForPosterior(fnBoundsToFnPosterior(lowerSearchBounds, upperSearchBounds), countParameters, lowerSearchBounds, upperSearchBounds, vecTune,  countChainLength, countBurninLength, vecParameterNames, strFigureSuffix));
}		

calculateAndEvaluateChainForPosterior <- function(fnPosterior, countParameters, lowerSearchBounds, upperSearchBounds, vecTune,  countChainLength, countBurninLength, vecParameterNames, strFigureSuffix, isOptimizeInitialPoint)
{
	strFigurePrefix <- vecToCommaSeparatedString(vecParameterNames)
	
	# now, compute a smaller chain
	initialPointWithNonZeroPosteriorDensity <- identifyInitialTheta(lowerSearchBounds,upperSearchBounds,fnPosterior, isOptimizeInitialPoint)
	mcmcResults <- MCMCmetrop1R(fnPosterior,initialPointWithNonZeroPosteriorDensity, thin=1,mcmc=countChainLength,burnin=countBurninLength,logfun=TRUE,verbose=1,tune=vecTune, V=diag(1,countParameters))

	try(summarizeMCMC(mcmcResults, strFigurePrefix, strFigureSuffix));		# this can throw errors due to inability to allow large enough arrays
	
	# ok, now generate pairwise scatterplots
	generatePairwiseScatterplots(vecParameterNames, mcmcResults, strFigurePrefix, strFigureSuffix);

	return(mcmcResults);
}

summarizeMCMC <- function(mcmcResults, strFigurePrefix, strFigureSuffix)
{
	windows(); plot(mcmcResults,main=paste(strFigurePrefix, " Parameter Traceplot ", strFigureSuffix))
	print(heidel.diag(mcmcResults))
	print(summary(mcmcResults));
	print(effectiveSize(mcmcResults));
	# effective size for the second parameter (p) is awfully small (88.5). This again hints that it may not be moving around enough. 

}

generatePairwiseScatterplots <- function(vecParameterNames, mcmcResults, strFigurePrefix, strSuffix, hexplotBinCount=50)
{
	for (i in 1:(length(vecParameterNames)-1))			# the last element need not be compared as a first element with anything			
		for (j in (i+1):length(vecParameterNames))
			{
			print(paste("Generating plot for i=", i, " vecParameterNames[i]=" , vecParameterNames[i], " and ", vecParameterNames[j], " with prefix ", strFigurePrefix, " and suffix ", strSuffix));
			windows(); plot(hexbin(mcmcResults[,i], mcmcResults[,j], xbins=hexplotBinCount),main=paste(strFigurePrefix, " (", vecParameterNames[i], ",", vecParameterNames[j], ") Parameter Scatterplot, ", strSuffix));
			}
}

vecToCommaSeparatedString <- function(vecParameterNames)	
{
	return(paste(vecParameterNames, collapse=","));
}

