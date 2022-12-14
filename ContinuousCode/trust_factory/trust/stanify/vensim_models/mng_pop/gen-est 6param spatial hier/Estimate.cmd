! Various estimates/approximates from data

SPECIAL>LOADMODEL|est_prey_predator.mdl

! It's now possible to mix & match noise models in the estimator & generator,
! but this script doesn't yet implement that

! first using ordinary Powell for the MLE with priors

! first single draw
SIMULATE>RUNNAME|Est1
SIMULATE>DATA|Gen1
SIMULATE>PAYOFF|Est-prop.vpd
SIMULATE>OPTPARM|Est.voc
MENU>RUN_OPTIMIZE|o

! second single draw
SIMULATE>RUNNAME|Est2
SIMULATE>DATA|Gen2
SIMULATE>PAYOFF|Est-prop.vpd
SIMULATE>OPTPARM|Est.voc
MENU>RUN_OPTIMIZE|o

! MCMC

! first single draw
SIMULATE>RUNNAME|MCMC1
SIMULATE>DATA|Gen1
SIMULATE>PAYOFF|Est-prop.vpd
SIMULATE>OPTPARM|EstMCMC.voc
MENU>RUN_OPTIMIZE|o

! second single draw
SIMULATE>RUNNAME|MCMC2
SIMULATE>DATA|Gen2
SIMULATE>PAYOFF|Est-prop.vpd
SIMULATE>OPTPARM|EstMCMC.voc
MENU>RUN_OPTIMIZE|o

! base run
SIMULATE>RUNNAME|NoEst
SIMULATE>DATA|Gen1
MENU>RUN|o