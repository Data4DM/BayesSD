# This can be invoked via source("C:\\Papers\\HazhirOlivaHandbook\\MCMC\\SEIR Chapter Commands v12.R")

dyn.load("..\\RVensimInterface\\RVensimInterface8.dll")
source("..\\RVensimInterface\\RVensimInterface4.R")
# this code includes support for a 3rd parameter (mu -- recovery time in days)
source("..\\RVensimMCMCUtilities\\MCMCUtility v1.R")
source("..\\SEIRProbabilisticModel\\Bounded SEIR MCMC v11.R")
setLoggingThreshold(as.integer(-1))
setIsVensimWorkInProgressWindowToBeShown(as.integer(0))
library(MCMCpack)
library(hexbin)
library(coda)
library(gplots)
library(triangle)
loadVensimModel("VensimSEIRModel\\SEIR Model v7.vpm")

countBurninLength <- 20000
trajectoryTimepointSpacingInWeeks <- 1
vecEmpiricalData <- c(1,1,2,2,4,7,7,12,22,28,41,49,59,57,60,51,45,27,19,19,8,5,6,2,3,1,1,0,0,0,0,0);
vecTimesForDataPoints <- 0:31;  # 0 is also a legitimate time

#
# 2 parameter version (c,p)
#

chainLength2Parms <- 300000
vecTune2Parms <- c(1,0.05)
lowerSearchBounds2Parms <- c(0,0)
upperSearchBounds2Parms <- c(500,1)
vecParameterNames2Parms <- c("c", "p")

mcmcOutputAllData2Parms <- calculateAndEvaluateChainForInitialPoints2Parms(logPriorUniformFn2Parms, vecEmpiricalData, vecTimesForDataPoints, length(vecEmpiricalData), 2, lowerSearchBounds2Parms, upperSearchBounds2Parms, vecTune2Parms,  chainLength2Parms, countBurninLength, vecParameterNames2Parms)
compareChainScenarios(mcmcOutputAllData2Parms, " all data points", trajectoryTimepointSpacingInWeeks)

# demonstrate robustness in the face of an alternative, heavily biased prior
mcmcOutputAllDataBiasedPrior2Parms <- calculateAndEvaluateChainForInitialPoints2Parms(logPriorBiasedPriorFn2Parms, vecEmpiricalData, vecTimesForDataPoints, length(vecEmpiricalData), 2, lowerSearchBounds2Parms, upperSearchBounds2Parms, vecTune2Parms,  chainLength2Parms, countBurninLength, vecParameterNames2Parms)
compareChainScenarios(mcmcOutputAllDataBiasedPrior2Parms, " all data points, biased prior", trajectoryTimepointSpacingInWeeks)

# depict prior by sampling it
fnPriorOnly2Parms <- generateFnForMCMCMetrop1RPriorOnly2Parms(logPriorBiasedPriorFn2Parms)
mcmcResultsPriorOnly2Parms <- calculateAndEvaluateChainForPosterior(fnPriorOnly2Parms, 2, lowerSearchBounds2Parms, c(2000,1), vecTune2Parms,  2000000, countBurninLength, vecParameterNames2Parms, " highly biased prior")

#
# the below consider the 2-parameter chain in the context of successively fewer data points
#

# 16 data points
mcmcOutputFirst16DataPoints2Parms <- calculateAndEvaluateChainForInitialPoints2Parms(logPriorUniformFn2Parms, vecEmpiricalData, vecTimesForDataPoints, 16, 2, lowerSearchBounds2Parms, upperSearchBounds2Parms, vecTune2Parms,  chainLength2Parms, countBurninLength, vecParameterNames2Parms)
compareChainScenarios(mcmcOutputFirst16DataPoints2Parms, " first 16 data points", trajectoryTimepointSpacingInWeeks)

# 8 data points
mcmcOutputFirst8DataPoints2Parms <- calculateAndEvaluateChainForInitialPoints2Parms(logPriorUniformFn2Parms, vecEmpiricalData, vecTimesForDataPoints, 8, 2, lowerSearchBounds2Parms, upperSearchBounds2Parms, vecTune2Parms,  chainLength2Parms, countBurninLength, vecParameterNames2Parms)
compareChainScenarios(mcmcOutputFirst8DataPoints2Parms, " first 8 data points", trajectoryTimepointSpacingInWeeks)


# Exercise 2
# Displaying the 2 parameter version of the model considering just the first 4 data points

mcmcOutputFirst4DataPoints2Parms <- calculateAndEvaluateChainForInitialPoints2Parms(logPriorUniformFn2Parms, vecEmpiricalData, vecTimesForDataPoints, 4, 2, lowerSearchBounds2Parms, upperSearchBounds2Parms, vecTune2Parms,  chainLength2Parms, countBurninLength, vecParameterNames2Parms)
compareChainScenarios(mcmcOutputFirst4DataPoints2Parms, " first 4 data points", trajectoryTimepointSpacingInWeeks)


# Exercise 1
#
# 3 parameter version (c,mu,p)
#

chainLength3Parms <- 750000
vecTune3Parms <- c(1,0.01,0.01)
vecParameterNames3Parms <- c("c", "mu", "p")
lowerSearchBounds3Parms <- c(0,0,0)
upperSearchBounds3Parms <- c(500,3,1)

mcmcOutputAllData3Parms <- calculateAndEvaluateChainForInitialPoints3Parms(logPriorUniformFn3Parms, vecEmpiricalData, vecTimesForDataPoints, length(vecEmpiricalData), 3, lowerSearchBounds3Parms, upperSearchBounds3Parms, vecTune3Parms,  chainLength3Parms, countBurninLength, vecParameterNames3Parms)
compareChainScenarios(mcmcOutputAllData3Parms, " all data points", trajectoryTimepointSpacingInWeeks)

