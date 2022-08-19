Compared to [[Flow1 (Method 1)]]
- Macro models with greater than 7 (around 30 for world3 model) stocks with many `est_param` (have seen around 100 (30 for local and 40 for global))
- Key: Optimization algorithm design which may take weeks (two weeks for Covid epidemiological model for inference)


## Iterative Calibration 
(Vengine version written with with Jason)
WARNING: THIS VERSION REQUIRES VENGINE TO RUN!

1) Save the .py file in the same folder as your model and relevant modelling files (.voc, .vpd, .vsc, .vdfx inputs, etc.). The program will copy all relevant files to a new subfolder and work there, as it will usually generate a lot of new files.

2) You need a single 'Control File' as input. This is a JSON-format .txt file which acts as a Python dictionary to control the calibration. Ensure that all fields are appropriately updated before running the .py file. Note that all strings will need to be "double-quoted". The order of fields does not matter.
	a) baserunname - the base name you want to use for the Vensim runs; also the name of the subfolder that will be created
	b) simsettings - a Python-format dictionary containing some or all of the following keys:
		i) model - the base .mdl file
		ii) data - a Python-format list of .vdf/.vdfx data files to load
		iii) payoff, sensitivity, optparm, savelist, senssavelist - the relevant Vensim control files (.vpd, .vsc, .voc, .lst, and .lst respectively)
		iv) changes - a Python-format list of changes files to load (e.g. .cin, .out)
	c) vensimpath - filepath to your Vensim .exe - MAKE SURE TO UPDATE THIS
	d) countrylist - a Python-format list of subscript elements (countries) for the [Rgn] subscript
	e) droplist - a Python-format dictionary of subsets of [Rgn] elements (countries) to remove from the main countrylist for sub-sample analysis, with each key being the name of a subset and value being a Python-format list of [Rgn] elements (the sub-sample analysis is run on remaining countries, i.e. these should be lists of countries to remove)
	f) genparams - a Python-format list of strings, used to identify lines in the first changes .out file to keep for initial country calibrations; typically this should be (as the name implies) the names of the general parameters
	g) scenariolist - a Python-format list of .cin files to use for scenario analysis at the end of the calibration process - note that by default the first scenario in the list is also used to run projections for sensitivity and sub-sample analyses
	h) submodlist - a Python-format list of submodel names, to run submodels after calibration and sensitivity (if applicable)
		i) submodel names need to correspond to directory names in the root directory (same as the .py file), one per submodel, each containing all necessary submodel-specific files
		ii) submodels each have their own controlfile (named {submodel}Control.txt), with simplified format compared to the main one
		iii) submodel control files can have one additional field, submodparams, which should include all model parameters present in the submodel (used like genparams in the main controlfile)
	i) sensvars - a Python-format list of model variables and values to use for sensitivity analysis - each variable-value pair should itself be a two-element list with first element being variable name (as str), and second element being value (as int/float) to use for a sensitivity scenario run
	j) mccores - to turn off MCMC, set this to 0; if 1 or more, will run MCMC after completing iterative calibration
	k) mcsettings - a Python-format dictionary of Vensim optimization control settings to use for running MCMC. These will be used to modify the .voc file for the MCMC runs. Be sure to set either 'Optimizer' or 'Sensitivity' to turn on MCMC (or just leave as-is); the 'MCLIMIT' setting gives the total number of iterations per MCMC process. Additional MCMC and optimization control settings can be added as desired.
	l) fractolfactor - factor by which to increase FRACTIONAL_TOLERANCE for initial round of country calibrations (for greater speed)
	m) samplefrac - the fraction of the MCMC samples to use for sensitivity analysis. If MCLIMIT is large, make sure this is quite small or your sensitivity analysis output will be massive!
	n) threshold - absolute value of the payoff improvement from one iteration of main-model calibration (general, not [Rgn], parameters) to the next at which to automatically stop the calibration
	o) iterlimit - maximum number of iterations (through country-specific calibration first, then main-model calibration) to loop through before breaking the calibration, to use as circuit breaker - if set to 0, will bypass the iterative process, either running a full-model all-params calibration directly, or bypassing that if an .out file from such a calibration (with name <baserunname>_main_full.out) already exists
	p) timelimit - maximum amount of time to wait between optimization runs of a single model (i.e. restarts) - if Vensim stalls out, this is how long the script will wait before killing Vensim and starting again
	
3) Once the Control File is updated, ensure it is in the same folder as the .py file.

4) Run the .py file. It will prompt you for the name of the Control File, after which everything should run automatically.
	IMPORTANT: Vengine has a warning popup on initialization, which the script should dismiss automatically. There are two known times this may fail - on first running the script, and if your computer suspends or sleeps (even if running on server). For the first issue, on first running the script, if Vengine does not start running the optimization automatically after a few seconds, just manually dismiss the popup. For the second issue, I recommend that you change computer power settings to never sleep/suspend while running this script.

5) All output from the .py script will be written to a .log file under "{baserunname}.log".

6) When updating the Control File, watch out for commas and other punctuation! If you get a JSON decoder error when you input the Control File name, double-check the punctuation in the Control File.


IMPORTANT - note re: timelimit parameter
The timelimit parameter is only supposed to kill and restart Vensim if it is stalled out. As long as optimization is continuing (i.e. the optimization .log is still being written to), even if it the overall process takes longer than the timelimit, it will be allowed to complete - UNLESS a single optimization run does not yield any log file changes for longer than the timelimit. If optimization control settings are high-intensity enough that this happens, you WILL get stuck in an infinite loop - so if doing high-res optimization, adjust this parameter up accordingly. On the other hand, if set too high, more time will be wasted when Vensim does happen to stall out. Note that the timelimit is increased by 5 x for full-model runs due to these outputting log file changes less frequently.