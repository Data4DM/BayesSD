! Generate data

SPECIAL>LOADMODEL|gen_prey_predator.mdl

! LogNormal noise

! single draw
SIMULATE>RUNNAME|Gen1
MENU>RUN|o

! another single draw, different noise
SIMULATE>RUNNAME|Gen2
SIMULATE>SETVAL|NOISE SEED=2
MENU>RUN|o

! sensitivity sample
SIMULATE>RUNNAME|Sensi100
SIMULATE>SENSITIVITY|NoiseSeed.vsc
SIMULATE>SENSSAVELIST|Meas+Act.lst
MENU>RUN_SENSITIVITY|o