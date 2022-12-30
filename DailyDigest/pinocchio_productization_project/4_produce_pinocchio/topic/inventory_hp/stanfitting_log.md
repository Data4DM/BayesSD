- test_lognormal_S50
- [[#test2|test2]]
- [[#test3_S10|test3_S10]]

## test_lognormal_S50
```
/Users/hyunjimoon/Dropbox/stanify/venv/bin/python /Users/hyunjimoon/Dropbox/stanify/vignette/sbc.py 
00:36:20 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data
00:36:27 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data
00:36:27 - cmdstanpy - WARNING - Stan compiler has produced 3 warnings:
00:36:27 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1 --o=/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data.hpp /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data.stan
Warning in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data.stan', line 40, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc
Warning in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data.stan', line 42, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc
Warning in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data.stan', line 44, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data.o /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data
rm -f /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/draws2data.o

00:36:27 - cmdstanpy - INFO - CmdStan start processing
chain 1 |██████████| 00:00 Sampling completed
                                                                                
00:36:27 - cmdstanpy - INFO - CmdStan done processing.
00:36:27 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
00:36:37 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
00:36:37 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |█████████▎| 01:54 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 02:03 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 19:24 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 39:37 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 1:00:35 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 1:21:25 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 1:42:18 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 2:03:09 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 2:24:01 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 2:44:53 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 3:05:47 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 3:26:39 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 3:26:51 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████████▎| 3:47:31 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 4:08:23 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 4:19:00 Sampling completed                     
                                                                                                                                                                
chain 2 |██████████| 4:19:00 Sampling completed                       
04:55:37 - cmdstanpy - INFO - CmdStan done processing.
04:55:37 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
04:55:37 - cmdstanpy - WARNING - Some chains may have failed to converge.
	Chain 2 had 250 iterations at max treedepth (100.0%)
	Use function "diagnose()" to see further information.
04:55:38 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
04:55:48 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
04:55:49 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |▋         | 01:00 Status
chain 2 |▋         | 01:54 Status
chain 1 |█▍        | 02:37 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▏       | 02:52 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |██▊       | 02:59 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |███▌      | 03:06 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |████▎     | 03:13 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████     | 03:19 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 03:24 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |██████▍   | 03:29 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |███████▏  | 03:34 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |███████▊  | 03:40 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |█████████▎| 03:45 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |██████████| 03:51 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 03:54 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 03:54 Sampling completed                       
04:59:43 - cmdstanpy - INFO - CmdStan done processing.
04:59:43 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
04:59:44 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
04:59:53 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
04:59:53 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 2 |▋         | 00:00 Status
chain 2 |█▍        | 00:27 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 00:44 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 00:54 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 01:02 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 01:10 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 01:18 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 01:24 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |▋         | 01:35 Status
chain 2 |███████▏  | 01:37 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 01:45 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 01:51 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 01:58 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 04:32 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 04:32 Sampling completed                       
05:04:26 - cmdstanpy - INFO - CmdStan done processing.
05:04:26 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
05:04:26 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:04:37 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:04:37 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 2 |▋         | 00:00 Status
chain 1 |▋         | 01:09 Status
chain 2 |██▏       | 01:17 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 01:29 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 01:37 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 01:46 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 01:54 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 02:00 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 02:06 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |█▍        | 02:14 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |███████▊  | 02:20 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |██▏       | 02:31 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██████████| 02:33 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 03:43 Sampling completed                       
chain 2 |██████████| 03:43 Sampling completed                       
05:08:21 - cmdstanpy - INFO - CmdStan done processing.
05:08:21 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
05:08:21 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:08:31 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:08:31 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 2 |▋         | 02:06 Status
chain 2 |█▍        | 03:23 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 03:35 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 03:43 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 03:48 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 03:53 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 03:58 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 04:02 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 04:06 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 04:09 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 04:14 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 04:18 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 04:21 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 06:45 Sampling completed                       
chain 2 |██████████| 06:45 Sampling completed                       
05:15:16 - cmdstanpy - INFO - CmdStan done processing.
05:15:16 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (3.6) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
05:15:17 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:15:27 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:15:27 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 2 |▋         | 01:11 Status
chain 2 |█▍        | 01:47 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 02:01 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 02:10 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 02:16 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 02:22 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 02:28 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 02:33 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |▋         | 02:39 Status
chain 2 |███████▏  | 02:42 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 02:47 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 02:47 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████████▎| 02:53 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 02:58 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 04:36 Sampling completed                       
chain 2 |██████████| 04:36 Sampling completed                       
05:20:04 - cmdstanpy - INFO - CmdStan done processing.
05:20:04 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
05:20:05 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:20:15 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:20:15 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |▋         | 01:48 Status
chain 2 |█▍        | 02:19 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 02:32 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 02:39 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 02:44 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 02:49 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 02:54 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 02:58 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 03:02 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 03:06 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |█▍        | 03:14 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |█████████▎| 03:15 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 03:19 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 04:16 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 04:16 Sampling completed                       
05:24:32 - cmdstanpy - INFO - CmdStan done processing.
05:24:32 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
05:24:32 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:24:42 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:24:42 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |███████▏  | 02:03 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |          | 02:23 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 04:11 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 04:26 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 04:35 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 04:41 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 04:47 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 04:53 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 04:58 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 05:04 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 05:08 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 05:15 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 05:20 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 05:26 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 05:29 Sampling completed                       
chain 2 |██████████| 05:29 Sampling completed                       
05:30:12 - cmdstanpy - INFO - CmdStan done processing.
05:30:12 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.6) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.6) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
05:30:12 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:30:22 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:30:22 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |▋         | 01:40 Status
chain 2 |█▍        | 01:40 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 01:55 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 02:05 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 02:13 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 02:21 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 02:27 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 02:33 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 02:39 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 02:44 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 02:51 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |█▍        | 03:00 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██████████| 03:03 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 04:23 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 04:23 Sampling completed                       
05:34:46 - cmdstanpy - INFO - CmdStan done processing.
05:34:46 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
05:34:46 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:34:56 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
05:34:56 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |██▊       | 01:40 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |          | 02:34 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 10:54 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 21:20 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 31:47 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 42:13 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 52:39 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 1:03:05 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 1:13:29 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 1:23:56 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 1:34:20 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 1:44:46 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 1:44:52 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████████▎| 1:55:15 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 2:05:41 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 2:10:59 Sampling completed                     
                                                                                                                                                                
chain 2 |██████████| 2:10:59 Sampling completed                       
07:45:56 - cmdstanpy - INFO - CmdStan done processing.
07:45:56 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
07:45:56 - cmdstanpy - WARNING - Some chains may have failed to converge.
	Chain 2 had 250 iterations at max treedepth (100.0%)
	Use function "diagnose()" to see further information.
07:45:57 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
07:46:07 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
07:46:08 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |          | 01:32 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |▋         | 02:24 Status
chain 2 |█▍        | 02:50 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 03:00 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 03:06 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 03:11 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 03:15 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 03:19 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 03:22 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 03:26 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 03:29 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 03:33 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 03:36 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 03:40 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 03:41 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 03:41 Sampling completed                       
07:49:49 - cmdstanpy - INFO - CmdStan done processing.
07:49:49 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Scale parameter is 0, but must be positive! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
07:49:50 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
07:50:00 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
07:50:00 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |▋         | 00:00 Status
chain 1 |          | 01:27 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 13:09 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 29:19 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 45:12 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 1:00:10 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 1:15:00 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 1:30:25 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 1:45:30 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 2:00:46 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 2:16:03 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 2:31:55 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 2:32:09 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████████▎| 2:47:46 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 3:03:17 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 3:11:09 Sampling completed                     
chain 2 |██████████| 3:11:09 Sampling completed                       
11:01:09 - cmdstanpy - INFO - CmdStan done processing.
11:01:09 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Scale parameter is 0, but must be positive! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
11:01:09 - cmdstanpy - WARNING - Some chains may have failed to converge.
	Chain 2 had 250 iterations at max treedepth (100.0%)
	Use function "diagnose()" to see further information.
11:01:10 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:01:21 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:01:21 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |▋         | 01:15 Status
chain 2 |█▍        | 01:29 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |█▍        | 01:54 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▊       | 01:58 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |██▏       | 02:08 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |██▊       | 02:17 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |███▌      | 02:25 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |█████▋    | 02:26 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |████▎     | 02:33 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████     | 02:39 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 02:45 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |██████▍   | 02:51 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |███████▏  | 02:56 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |██████████| 03:20 Sampling completed                       
chain 2 |██████████| 03:20 Sampling completed                       
11:04:42 - cmdstanpy - INFO - CmdStan done processing.
11:04:42 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
11:04:42 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:04:52 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:04:52 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |▋         | 00:00 Status
chain 1 |██▊       | 00:49 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |████▎     | 01:02 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████     | 01:08 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 01:14 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |███████▏  | 01:24 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |███████▊  | 01:29 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |█████████▎| 01:35 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |██████████| 01:40 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |          | 01:42 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |███████▏  | 01:44 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 01:50 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 01:56 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 02:01 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 02:04 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 02:04 Sampling completed                       
11:06:57 - cmdstanpy - INFO - CmdStan done processing.
11:06:57 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
11:06:58 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:07:08 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:07:08 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |█▍        | 00:36 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▏       | 00:50 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |███▌      | 01:03 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |████▎     | 01:08 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████     | 01:13 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 01:17 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |██████▍   | 01:21 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |███████▏  | 01:25 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |███████▊  | 01:29 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |█████████▎| 01:33 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 01:40 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█████████▎| 01:41 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 01:45 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 01:47 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 01:47 Sampling completed                       
11:08:55 - cmdstanpy - INFO - CmdStan done processing.
11:08:55 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
Consider re-running with show_console=True if the above output is unclear!
11:08:56 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:09:06 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:09:06 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |█▍        | 00:46 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |█████████▎| 01:56 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 02:05 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |██▏       | 02:12 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 02:20 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 02:27 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 02:33 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 02:39 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 02:44 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 02:49 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 02:55 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 03:01 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 03:06 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 03:11 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 03:14 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 03:14 Sampling completed                       
11:12:20 - cmdstanpy - INFO - CmdStan done processing.
11:12:20 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
11:12:21 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:12:31 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:12:32 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |█▍        | 01:53 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▊       | 02:07 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |███▌      | 02:12 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |████▎     | 02:17 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████▋    | 02:27 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |██████▍   | 02:31 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |███████▏  | 02:35 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |███████▊  | 02:40 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |██████▍   | 02:40 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |█████████▎| 02:45 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 02:53 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█████████▎| 02:54 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 02:58 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 03:01 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 03:01 Sampling completed                       
11:15:34 - cmdstanpy - INFO - CmdStan done processing.
11:15:34 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.6) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
11:15:34 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:15:44 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:15:44 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |██▏       | 01:47 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |███▌      | 02:03 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |████▎     | 02:10 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████▋    | 02:22 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |██████▍   | 02:28 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |███████▏  | 02:34 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |███████▊  | 02:40 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |█████████▎| 02:46 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 02:54 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |███████▏  | 02:55 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 03:01 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 03:06 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 03:12 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 03:15 Sampling completed                       
chain 2 |██████████| 03:15 Sampling completed                       
11:18:59 - cmdstanpy - INFO - CmdStan done processing.
11:18:59 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 75, column 4 to column 59)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 75, column 4 to column 59)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
11:19:00 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:19:10 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
11:19:10 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |▋         | 00:55 Status
chain 1 |          | 03:32 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 09:31 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 23:59 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 37:31 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 49:52 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 56:52 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 59:22 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 1:03:04 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 1:07:00 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 1:10:49 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 1:12:35 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 1:12:35 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████████▎| 1:12:55 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 1:13:17 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 1:13:26 Sampling completed                     
                                                                                                                                                                
chain 2 |██████████| 1:13:26 Sampling completed                       
12:32:37 - cmdstanpy - INFO - CmdStan done processing.
12:32:37 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
12:32:37 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
12:32:48 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
12:32:48 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |▋         | 01:25 Status
chain 1 |█████████▎| 02:57 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 03:06 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |██▏       | 03:09 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 03:16 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 03:21 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 03:27 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 03:32 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 03:37 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 03:42 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 03:46 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 03:51 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 03:56 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 04:01 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 04:04 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 04:04 Sampling completed                       
12:36:53 - cmdstanpy - INFO - CmdStan done processing.
12:36:53 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
12:36:53 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
12:37:03 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
12:37:03 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |▋         | 01:26 Status
chain 2 |█▍        | 02:21 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 02:34 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 02:42 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 02:49 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 02:55 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 03:01 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 03:05 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 03:10 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 03:14 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 03:19 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 03:25 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 03:30 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 10:12 Sampling completed                       
chain 2 |██████████| 10:12 Sampling completed                       
12:47:16 - cmdstanpy - INFO - CmdStan done processing.
12:47:16 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
12:47:16 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
12:47:27 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
12:47:27 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 2 |▋         | 00:00 Status
chain 2 |█▍        | 00:21 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 00:30 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 00:36 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 00:42 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 00:47 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 00:52 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 00:57 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 01:01 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 01:05 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 01:09 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 01:10 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████████▎| 01:14 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 01:18 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 02:43 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 02:43 Sampling completed                       
12:50:11 - cmdstanpy - INFO - CmdStan done processing.
12:50:11 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
12:50:11 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
12:50:21 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
12:50:22 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 2 |▋         | 00:00 Status
chain 2 |█▍        | 00:35 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 00:46 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 00:53 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 00:59 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 01:04 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 01:09 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 01:13 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 01:17 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 01:21 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 01:27 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 01:31 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 01:36 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 02:59 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 02:59 Sampling completed                       
12:53:22 - cmdstanpy - INFO - CmdStan done processing.
12:53:22 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
12:53:22 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
12:53:32 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
12:53:33 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |▋         | 01:11 Status
chain 2 |█▍        | 02:02 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 02:14 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |█▍        | 02:24 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |███▌      | 02:26 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |██▏       | 02:35 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |█████     | 02:36 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |██▊       | 02:42 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |███▌      | 02:48 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |████▎     | 02:53 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████     | 02:58 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 03:03 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████████| 03:03 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 03:29 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 03:29 Sampling completed                       
12:57:02 - cmdstanpy - INFO - CmdStan done processing.
12:57:02 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
12:57:03 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
12:57:13 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
12:57:13 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |█▍        | 02:04 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▊       | 02:22 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |███▌      | 02:29 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |████▎     | 02:34 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████     | 02:40 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |██████▍   | 02:50 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |███████▏  | 02:55 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |█████▋    | 02:55 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |███████▊  | 03:00 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |█████████▎| 03:06 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 03:15 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█████████▎| 03:16 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 03:21 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 03:24 Sampling completed                       
chain 2 |██████████| 03:24 Sampling completed                       
13:00:37 - cmdstanpy - INFO - CmdStan done processing.
13:00:37 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
13:00:38 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
13:00:48 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
13:00:48 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |█████████▎| 01:25 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 01:32 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 01:48 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 02:00 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 02:08 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 02:14 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 02:19 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 02:25 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 02:29 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 02:34 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 02:39 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 02:44 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 02:50 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 02:55 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 02:58 Sampling completed                       
chain 2 |██████████| 02:58 Sampling completed                       
13:03:46 - cmdstanpy - INFO - CmdStan done processing.
13:03:46 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
13:03:47 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
13:03:57 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
13:03:58 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |▋         | 01:55 Status
chain 2 |█▍        | 02:14 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |█▍        | 02:28 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▏       | 02:39 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |███▌      | 02:51 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |████▎     | 02:57 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████     | 03:01 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 03:05 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |██████▍   | 03:09 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |███████▏  | 03:14 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |███████▊  | 03:18 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |█████████▎| 03:22 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |██████████| 03:27 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 03:29 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 03:29 Sampling completed                       
13:07:27 - cmdstanpy - INFO - CmdStan done processing.
13:07:27 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Scale parameter is 0, but must be positive! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
Consider re-running with show_console=True if the above output is unclear!
13:07:27 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
13:07:38 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
13:07:38 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |██▏       | 00:48 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |███▌      | 01:00 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |█████     | 01:09 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 01:13 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |███████▏  | 01:22 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |███████▊  | 01:27 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████     | 01:27 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████████▎| 01:32 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 01:40 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |███████▏  | 01:40 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 01:45 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 01:49 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 01:54 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 01:56 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 01:56 Sampling completed                       
13:09:34 - cmdstanpy - INFO - CmdStan done processing.
13:09:34 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
13:09:35 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
13:09:45 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
13:09:45 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |▋         | 03:10 Status
chain 2 |█▍        | 03:30 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 03:43 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 03:50 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 03:56 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 04:02 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 04:07 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 04:12 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 04:16 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 04:21 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 04:27 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 04:32 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 04:37 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 05:47 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 05:47 Sampling completed                       
13:15:33 - cmdstanpy - INFO - CmdStan done processing.
13:15:33 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.6) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.6) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
13:15:33 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
13:15:44 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
13:15:44 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |          | 02:54 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 12:37 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 27:28 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 41:47 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 58:26 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 1:14:47 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 1:30:51 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 1:46:57 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 2:03:04 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 2:19:11 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 2:35:18 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 2:35:28 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████████▎| 2:51:20 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 3:07:19 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 3:15:22 Sampling completed                     
chain 2 |██████████| 3:15:22 Sampling completed                       
16:31:07 - cmdstanpy - INFO - CmdStan done processing.
16:31:07 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
16:31:07 - cmdstanpy - WARNING - Some chains may have failed to converge.
	Chain 2 had 250 iterations at max treedepth (100.0%)
	Use function "diagnose()" to see further information.
16:31:07 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
16:31:18 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
16:31:18 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 2 |▋         | 00:00 Status
chain 2 |█▍        | 00:29 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 00:41 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 00:47 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 00:52 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 00:57 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 01:01 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 01:05 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 01:09 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 01:13 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 01:18 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 01:22 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 01:26 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 1:44:23 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 1:44:23 Sampling completed                     
18:15:41 - cmdstanpy - INFO - CmdStan done processing.
18:15:41 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
Consider re-running with show_console=True if the above output is unclear!
18:15:42 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:15:53 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:15:54 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |████▎     | 01:10 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |          | 01:48 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 02:36 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 02:49 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 03:00 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 03:05 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 03:11 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 03:16 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 03:21 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 03:26 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 03:31 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 03:37 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 03:41 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 03:47 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 03:49 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 03:49 Sampling completed                       
18:19:43 - cmdstanpy - INFO - CmdStan done processing.
18:19:43 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
18:19:44 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:19:54 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:19:54 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |█▍        | 00:51 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▏       | 01:08 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |██▊       | 01:18 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |███▌      | 01:26 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |████▎     | 01:35 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████     | 01:41 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 01:48 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |██████▍   | 01:55 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |███████▏  | 02:02 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |███████▊  | 02:10 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |█████████▎| 02:18 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |██████████| 02:26 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |          | 02:30 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 1 |██████████| 02:30 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 02:30 Sampling completed                       
18:22:25 - cmdstanpy - INFO - CmdStan done processing.
18:22:25 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
Consider re-running with show_console=True if the above output is unclear!
18:22:25 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:22:36 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:22:36 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |███▌      | 01:55 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |          | 02:41 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |██▏       | 02:46 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 04:19 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 04:29 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 04:36 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 04:41 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 04:46 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 04:51 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 04:55 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 05:00 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 05:05 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 05:10 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 05:12 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 05:12 Sampling completed                       
18:27:48 - cmdstanpy - INFO - CmdStan done processing.
18:27:48 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.6) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
Consider re-running with show_console=True if the above output is unclear!
18:27:49 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:27:59 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:28:00 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |▋         | 00:00 Status
chain 1 |          | 01:37 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 10:12 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 14:59 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 15:50 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 16:38 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 17:05 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 17:10 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 17:14 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 17:18 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 17:22 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 17:27 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 17:32 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 17:36 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 17:38 Sampling completed                       
chain 2 |██████████| 17:38 Sampling completed                       
18:45:39 - cmdstanpy - INFO - CmdStan done processing.
18:45:39 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
18:45:39 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:45:50 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:45:50 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |          | 01:24 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |▋         | 04:21 Status
chain 2 |█▍        | 05:56 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 06:08 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 06:17 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 06:22 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 06:28 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 06:34 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 06:38 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 06:43 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 06:49 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 06:54 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 06:54 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████████▎| 07:00 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 07:06 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 07:09 Sampling completed                       
chain 2 |██████████| 07:09 Sampling completed                       
18:52:59 - cmdstanpy - INFO - CmdStan done processing.
18:52:59 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
18:53:00 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:53:12 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:53:12 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |████▎     | 01:23 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |          | 02:18 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 03:02 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 03:17 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 03:26 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 03:33 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 03:41 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 03:46 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 03:52 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 03:57 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 04:02 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 04:09 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 04:16 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 04:22 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 04:26 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 04:26 Sampling completed                       
18:57:38 - cmdstanpy - INFO - CmdStan done processing.
18:57:38 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (3.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
18:57:39 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:57:49 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
18:57:49 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |████▎     | 01:08 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████████▎| 01:35 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 01:44 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |██▏       | 01:51 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 01:57 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 02:02 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 02:08 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 02:12 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 02:16 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 02:21 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 02:24 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 02:30 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 02:35 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 02:40 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 02:42 Sampling completed                       
chain 2 |██████████| 02:42 Sampling completed                       
19:00:31 - cmdstanpy - INFO - CmdStan done processing.
19:00:31 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.6) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
19:00:32 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
19:00:43 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
19:00:43 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |▋         | 00:58 Status
chain 2 |▋         | 01:42 Status
chain 1 |█▍        | 12:34 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▏       | 27:38 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 31:14 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |██▊       | 42:50 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |███▌      | 57:25 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |████▎     | 1:11:29 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████▋    | 1:11:31 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |█████     | 1:26:02 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 1:40:33 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |███████▊  | 1:40:47 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 1:40:53 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 1 |██████▍   | 1:55:27 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |██████████| 2:00:39 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 3:44:27 Sampling completed                       
chain 2 |██████████| 3:44:27 Sampling completed                       
22:45:10 - cmdstanpy - INFO - CmdStan done processing.
22:45:10 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (3.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
22:45:10 - cmdstanpy - WARNING - Some chains may have failed to converge.
	Chain 1 had 250 iterations at max treedepth (100.0%)
	Chain 2 had 250 iterations at max treedepth (100.0%)
	Use function "diagnose()" to see further information.
22:45:10 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
22:45:21 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
22:45:21 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |█████████▎| 01:09 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 01:15 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 02:14 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 02:23 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 02:29 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 02:33 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 02:38 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 02:42 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 02:46 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 02:50 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 02:54 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 02:59 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 03:03 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 03:07 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 03:09 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 03:09 Sampling completed                       
22:48:31 - cmdstanpy - INFO - CmdStan done processing.
22:48:31 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
22:48:31 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
22:48:41 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
22:48:41 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |▋         | 00:00 Status
chain 1 |█▍        | 00:56 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 00:57 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 01:05 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |██▏       | 01:12 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |██▊       | 01:21 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |███▌      | 01:29 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |█████▋    | 01:29 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |████▎     | 01:35 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████     | 01:41 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 01:47 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |██████▍   | 01:53 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |███████▏  | 01:59 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |██████████| 02:17 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 02:17 Sampling completed                       
22:50:59 - cmdstanpy - INFO - CmdStan done processing.
22:50:59 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
Consider re-running with show_console=True if the above output is unclear!
22:50:59 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
22:51:09 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
22:51:10 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |██▊       | 00:53 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |          | 01:50 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 13:25 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 27:14 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 6:58:04 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 7:13:23 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 7:27:15 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 7:39:43 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 7:52:11 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 8:04:38 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 8:17:42 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 8:30:47 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 8:30:55 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████████▎| 8:43:40 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 8:56:37 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 9:03:04 Sampling completed                     
chain 2 |██████████| 9:03:04 Sampling completed                       
07:54:14 - cmdstanpy - INFO - CmdStan done processing.
07:54:14 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
07:54:14 - cmdstanpy - WARNING - Some chains may have failed to converge.
	Chain 2 had 250 iterations at max treedepth (100.0%)
	Use function "diagnose()" to see further information.
07:54:15 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
07:54:26 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
07:54:26 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |▋         | 00:03 Status
chain 1 |█▍        | 01:03 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▏       | 01:22 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |██▊       | 01:35 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |███▌      | 01:45 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 01:47 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |████▎     | 01:55 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████     | 02:02 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 02:09 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |███████▏  | 02:22 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 02:23 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |███████▊  | 02:32 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |█████████▎| 02:40 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |██████████| 02:51 Sampling completed                       
chain 2 |██████████| 02:51 Sampling completed                       
07:57:18 - cmdstanpy - INFO - CmdStan done processing.
07:57:18 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
07:57:18 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
07:57:28 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
07:57:28 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |          | 02:59 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |▋         | 05:41 Status
chain 2 |█▍        | 06:21 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 06:31 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 06:39 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 06:45 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 06:50 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 06:54 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 06:58 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 07:02 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 07:07 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 07:12 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 07:16 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 07:20 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 07:23 Sampling completed                       
chain 2 |██████████| 07:23 Sampling completed                       
08:04:52 - cmdstanpy - INFO - CmdStan done processing.
08:04:52 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
08:04:52 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
08:05:02 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
08:05:03 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |▋         | 02:19 Status
chain 2 |█▍        | 02:27 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 02:37 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 02:43 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 02:49 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 02:54 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 02:59 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 03:04 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 03:08 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 03:13 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 03:17 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 03:22 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 03:26 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 04:39 Sampling completed                       
chain 2 |██████████| 04:39 Sampling completed                       
08:09:42 - cmdstanpy - INFO - CmdStan done processing.
08:09:42 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
08:09:43 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
08:09:53 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
08:09:53 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |███▌      | 00:43 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |█████     | 00:55 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |██████▍   | 01:05 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |███████▏  | 01:10 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |███████▊  | 01:15 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |█████████▎| 01:20 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 01:27 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█████▋    | 01:28 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 01:32 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 01:37 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 01:42 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 01:47 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 01:52 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 01:54 Sampling completed                       
chain 2 |██████████| 01:54 Sampling completed                       
08:11:48 - cmdstanpy - INFO - CmdStan done processing.
08:11:48 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                
08:11:49 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
08:11:59 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
08:11:59 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |▋         | 00:00 Status
chain 1 |          | 02:19 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 10:37 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 20:13 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 20:37 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 20:54 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 21:04 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 21:08 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 21:12 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 21:16 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 21:20 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 21:23 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 21:28 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 21:32 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 21:34 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 21:34 Sampling completed                       
08:33:34 - cmdstanpy - INFO - CmdStan done processing.
08:33:34 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
08:33:34 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
08:33:44 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
08:33:45 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 2 |▋         | 00:00 Status
chain 1 |▋         | 01:12 Status
chain 2 |██▏       | 01:19 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 01:26 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 01:34 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 01:40 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 01:46 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█▍        | 01:51 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██████▍   | 01:56 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |██▏       | 02:04 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |██▊       | 02:12 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |█████████▎| 02:13 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |███▌      | 02:20 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |██████████| 03:05 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 03:05 Sampling completed                       
08:36:50 - cmdstanpy - INFO - CmdStan done processing.
08:36:50 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 79, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
	Exception: normal_lpdf: Location parameter[1] is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 73, column 4 to column 61)
Consider re-running with show_console=True if the above output is unclear!
08:36:51 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
08:37:00 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
08:37:01 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 1 |▋         | 00:00 Status
chain 2 |▋         | 00:00 Status
chain 1 |█▍        | 00:34 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 00:35 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |██▏       | 00:44 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |██▊       | 00:52 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |███▌      | 00:57 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |████▎     | 01:03 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████▋    | 01:03 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |█████     | 01:08 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 01:13 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |███████▏  | 01:23 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |████████▌ | 01:29 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |██████████| 01:30 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 01:44 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 01:44 Sampling completed                       
08:38:45 - cmdstanpy - INFO - CmdStan done processing.
08:38:45 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
08:38:46 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
08:38:55 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws
08:38:56 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status
chain 1 |▋         | 01:08 Status
chain 1 |█▍        | 10:01 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▏       | 22:46 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 27:24 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |██▊       | 37:35 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |████▎     | 42:48 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |███▌      | 52:42 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |█████▋    | 54:14 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 1:00:21 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |████▎     | 1:07:38 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |███████▊  | 1:10:26 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 1:10:27 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████████▎| 1:11:13 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 1:12:10 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 2:55:22 Sampling completed                       
                                                                                                                                                                
chain 2 |██████████| 2:55:22 Sampling completed                       
11:34:19 - cmdstanpy - INFO - CmdStan done processing.
11:34:19 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
	Exception: ode_rk45:  Failed to integrate to next output time (0.1) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/stanify/vignette/stan_files/2hier_s_lgnorm_.01_S50N10Q2P6H3R2_M500_ps0.1/data2draws.stan', line 59, column 8 to column 200)
Consider re-running with show_console=True if the above output is unclear!
11:34:19 - cmdstanpy - WARNING - Some chains may have failed to converge.
	Chain 1 had 250 iterations at max treedepth (100.0%)
	Use function "diagnose()" to see further information.
Traceback (most recent call last):
  File "/Users/hyunjimoon/Dropbox/stanify/vignette/sbc.py", line 90, in <module>
    idata_orig, model = draws2data2draws('../vensim_models/inventory/hier2_stock.mdl', setting, precision, numeric, prior, output_format)
  File "/Users/hyunjimoon/Dropbox/stanify/stanify/calibrator/draws_data_mapper.py", line 111, in draws2data2draws
    plot_qoi(idata_orig, setting, precision, idata_kwargs, model.model_name)
  File "/Users/hyunjimoon/Dropbox/stanify/stanify/calibrator/visualizer.py", line 64, in plot_qoi
    az.plot_pair(sbc, var_names=est_param_names, divergences=True, figsize = figsize)
  File "/Users/hyunjimoon/Dropbox/stanify/venv/lib/python3.10/site-packages/arviz/plots/pairplot.py", line 272, in plot_pair
    ax = plot(**pairplot_kwargs)
  File "/Users/hyunjimoon/Dropbox/stanify/venv/lib/python3.10/site-packages/arviz/plots/backends/matplotlib/pairplot.py", line 308, in plot_pair
    var1[diverging_mask], var2[diverging_mask], **divergences_kwargs
IndexError: too many indices for array: array is 1-dimensional, but 2 were indexed

Process finished with exit code 1

```
## test
```
/Users/hyunjimoon/Dropbox/stanify/venv/bin/python /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/test.py 
22:22:32 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/draws2data.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/draws2data
22:22:39 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/draws2data
22:22:39 - cmdstanpy - WARNING - Stan compiler has produced 2 warnings:
22:22:39 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/draws2data.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/draws2data.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/draws2data.stan', line 40, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/draws2data.stan', line 41, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/draws2data.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/draws2data.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/draws2data.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/draws2data
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/draws2data.o

22:22:39 - cmdstanpy - INFO - CmdStan start processing
chain 1 |██████████| 00:00 Sampling completed
22:22:39 - cmdstanpy - INFO - CmdStan done processing.
                                                                                
22:22:39 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws
22:22:48 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws
22:22:49 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status

chain 3 |          | 00:00 Status


chain 4 |          | 00:00 Status

chain 3 |▋         | 01:26 Status
chain 1 |▋         | 02:29 Status


chain 4 |▋         | 02:37 Status
chain 2 |█▍        | 27:51 Iteration:    1 / 1250 [  0%]  (Warmup)



chain 3 |█▍        | 36:02 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 37:05 Iteration:  100 / 1250 [  8%]  (Warmup)


chain 4 |█▍        | 38:17 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▊       | 43:42 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 3 |██▏       | 47:26 Iteration:  100 / 1250 [  8%]  (Warmup)


chain 4 |██▏       | 48:48 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |███▌      | 48:54 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 52:24 Iteration:  400 / 1250 [ 32%]  (Warmup)

chain 3 |██▊       | 52:58 Iteration:  200 / 1250 [ 16%]  (Warmup)


chain 4 |██▊       | 54:26 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |█████     | 55:33 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |███▌      | 56:53 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |█████▋    | 58:21 Iteration:  600 / 1250 [ 48%]  (Warmup)


chain 4 |███▌      | 58:31 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |██████▍   | 1:00:59 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 3 |████▎     | 1:01:26 Iteration:  400 / 1250 [ 32%]  (Warmup)


chain 4 |████▎     | 1:03:16 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |███████▏  | 1:03:37 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 3 |█████     | 1:04:50 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |███████▊  | 1:06:37 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 1:06:38 Iteration: 1000 / 1250 [ 80%]  (Warmup)


chain 4 |█████     | 1:06:55 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |█████▋    | 1:07:52 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |█████████▎| 1:09:16 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 4 |█████▋    | 1:09:52 Iteration:  600 / 1250 [ 48%]  (Warmup)

chain 3 |██████▍   | 1:10:35 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |██████████| 1:11:56 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 4 |██████▍   | 1:12:40 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 3 |███████▏  | 1:13:14 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |          | 1:13:17 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 4 |███████▏  | 1:15:05 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 3 |███████▊  | 1:15:51 Iteration:  900 / 1250 [ 72%]  (Warmup)

chain 3 |████████▌ | 1:15:54 Iteration: 1000 / 1250 [ 80%]  (Warmup)


chain 4 |███████▊  | 1:17:41 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 4 |████████▌ | 1:17:43 Iteration: 1000 / 1250 [ 80%]  (Warmup)

chain 3 |█████████▎| 1:18:16 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 1 |█▍        | 1:20:33 Iteration:    1 / 1250 [  0%]  (Warmup)

chain 3 |██████████| 1:20:39 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 3 |          | 1:21:52 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 4 |██████████| 1:22:25 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 1 |██████████| 15:27:59 Sampling completed                       
chain 2 |██████████| 15:27:59 Sampling completed                      
chain 3 |██████████| 15:27:59 Sampling completed                      
chain 4 |██████████| 15:27:59 Sampling completed                      
13:50:48 - cmdstanpy - INFO - CmdStan done processing.
13:50:48 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 75, column 8 to column 55)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 75, column 8 to column 55)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 75, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 75, column 8 to column 55)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P2H2R8_M1000_ps0.1/data2draws.stan', line 57, column 8 to column 236)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                                                                                                                                                                                
13:50:48 - cmdstanpy - WARNING - Some chains may have failed to converge.
	Chain 1 had 127 divergent transitions (50.8%)
	Chain 1 had 123 iterations at max treedepth (49.2%)
	Use function "diagnose()" to see further information.

Process finished with exit code 0
```


## test2
```
/Users/hyunjimoon/Dropbox/stanify/venv/bin/python /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/test2.py 
09:25:22 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/draws2data.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/draws2data
09:25:30 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/draws2data
09:25:30 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
09:25:30 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/draws2data.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/draws2data.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/draws2data.stan', line 52, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/draws2data.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/draws2data.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/draws2data.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/draws2data
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/draws2data.o

09:25:31 - cmdstanpy - INFO - CmdStan start processing
chain 1 |██████████| 00:00 Sampling completed
09:25:31 - cmdstanpy - INFO - CmdStan done processing.
                                                                                
09:25:31 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws
09:25:40 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws
09:25:40 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
09:25:40 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.o

09:25:40 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status

chain 3 |          | 00:00 Status


chain 1 |█▍        | 01:06 Iteration:    1 / 1250 [  0%]  (Warmup)


chain 1 |██▏       | 01:49 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |███▌      | 02:49 Iteration:  300 / 1250 [ 24%]  (Warmup)

chain 1 |█████     | 03:44 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 1 |███████▏  | 05:01 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 1 |███████▊  | 05:23 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 1 |█████████▎| 05:47 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 1 |██████████| 06:14 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 1 |          | 06:26 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 4 |█████     | 06:41 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 4 |█████▋    | 06:59 Iteration:  600 / 1250 [ 48%]  (Warmup)


chain 4 |██████▍   | 07:15 Iteration:  700 / 1250 [ 56%]  (Warmup)


chain 4 |███████▏  | 07:32 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 4 |███████▊  | 07:56 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 4 |████████▌ | 07:56 Iteration: 1000 / 1250 [ 80%]  (Warmup)


chain 4 |█████████▎| 08:18 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 4 |██████████| 08:41 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 4 |          | 08:52 Iteration: 1200 / 1250 [ 96%]  (Sampling)

chain 3 |█▍        | 22:55 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |█▍        | 23:12 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 44:17 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |██▏       | 46:19 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 1:05:15 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 3 |██▊       | 1:09:27 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 1:25:59 Iteration:  300 / 1250 [ 24%]  (Warmup)

chain 3 |███▌      | 1:32:31 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 1:48:45 Iteration:  400 / 1250 [ 32%]  (Warmup)

chain 3 |████▎     | 1:57:35 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 2:08:34 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |█████     | 2:17:21 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 2:26:29 Iteration:  600 / 1250 [ 48%]  (Warmup)

chain 3 |█████▋    | 2:36:22 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 2:43:13 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 3 |██████▍   | 2:54:57 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 3:00:05 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 3 |███████▏  | 3:13:31 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 3:16:40 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 3:16:50 Iteration: 1000 / 1250 [ 80%]  (Warmup)

chain 3 |███████▊  | 3:32:02 Iteration:  900 / 1250 [ 72%]  (Warmup)

chain 3 |████████▌ | 3:32:13 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████████▎| 3:33:32 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 3:50:22 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 3 |█████████▎| 3:50:35 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |          | 3:58:48 Iteration: 1200 / 1250 [ 96%]  (Sampling)

chain 3 |██████████| 4:09:02 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 1 |██████████| 4:18:24 Sampling completed                     
chain 2 |██████████| 4:18:24 Sampling completed                       
chain 3 |██████████| 4:18:24 Sampling completed                       
chain 4 |██████████| 4:18:24 Sampling completed                     
                                                                                                                                                                                                                                                                                                                                
13:44:04 - cmdstanpy - INFO - CmdStan done processing.
13:44:04 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 72, column 4 to column 39)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 72, column 4 to column 39)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 72, column 4 to column 39)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S1N40Q2P4H0R1_M1000_ps1/data2draws.stan', line 56, column 4 to column 220)
Consider re-running with show_console=True if the above output is unclear!
13:44:04 - cmdstanpy - WARNING - Some chains may have failed to converge.
	Chain 2 had 250 iterations at max treedepth (100.0%)
	Chain 3 had 250 iterations at max treedepth (100.0%)
	Use function "diagnose()" to see further information.

Process finished with exit code 0

```


## test3_S10
```
/Users/hyunjimoon/Dropbox/stanify/venv/bin/python /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/test3_S10.py 
23:01:47 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/draws2data.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/draws2data
23:01:59 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/draws2data
23:01:59 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
23:01:59 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/draws2data.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/draws2data.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/draws2data.stan', line 51, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/draws2data.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/draws2data.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/draws2data.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/draws2data
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/draws2data.o

23:01:59 - cmdstanpy - INFO - CmdStan start processing
chain 1 |██████████| 00:00 Sampling completed
                                                                                
23:01:59 - cmdstanpy - INFO - CmdStan done processing.
23:02:00 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
23:02:15 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
23:02:15 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
23:02:15 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o

23:02:15 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status

chain 3 |          | 00:00 Status


chain 4 |          | 00:00 Status
chain 1 |▋         | 00:00 Status

chain 3 |▋         | 00:00 Status


chain 4 |▋         | 00:00 Status

chain 3 |█▍        | 00:31 Iteration:    1 / 1250 [  0%]  (Warmup)


chain 4 |█▍        | 00:42 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |█▍        | 00:44 Iteration:    1 / 1250 [  0%]  (Warmup)

chain 3 |██▏       | 00:50 Iteration:  100 / 1250 [  8%]  (Warmup)


chain 4 |██▏       | 01:02 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▏       | 01:03 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |██▊       | 01:04 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 3 |███▌      | 01:16 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |██▊       | 01:17 Iteration:  200 / 1250 [ 16%]  (Warmup)


chain 4 |██▊       | 01:21 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |█▍        | 01:30 Iteration:    1 / 1250 [  0%]  (Warmup)

chain 3 |████▎     | 01:30 Iteration:  400 / 1250 [ 32%]  (Warmup)


chain 4 |███▌      | 01:32 Iteration:  300 / 1250 [ 24%]  (Warmup)

chain 3 |█████     | 01:43 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |████▎     | 01:43 Iteration:  400 / 1250 [ 32%]  (Warmup)


chain 1 |██▏       | 01:48 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |█████▋    | 01:57 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |█████     | 02:00 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 1 |██▊       | 02:04 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 3 |██████▍   | 02:08 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |█████▋    | 02:12 Iteration:  600 / 1250 [ 48%]  (Warmup)


chain 1 |███▌      | 02:17 Iteration:  300 / 1250 [ 24%]  (Warmup)

chain 3 |███████▏  | 02:19 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |██████▍   | 02:23 Iteration:  700 / 1250 [ 56%]  (Warmup)


chain 1 |████▎     | 02:34 Iteration:  400 / 1250 [ 32%]  (Warmup)

chain 3 |███████▊  | 02:35 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |███████▏  | 02:37 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 1 |█████     | 02:48 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |█████████▎| 02:50 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |███████▊  | 02:51 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 4 |███████▊  | 02:53 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 1 |█████▋    | 03:00 Iteration:  600 / 1250 [ 48%]  (Warmup)

chain 3 |██████████| 03:05 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 2 |█████████▎| 03:06 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 4 |█████████▎| 03:07 Iteration: 1001 / 1250 [ 80%]  (Sampling)

chain 1 |██████▍   | 03:12 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |██████████| 03:20 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 1 |███████▏  | 03:21 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |          | 03:26 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 1 |██████████| 03:59 Sampling completed                       
chain 2 |██████████| 03:59 Sampling completed                       
chain 3 |██████████| 03:59 Sampling completed                       
chain 4 |██████████| 03:59 Sampling completed                       
23:06:15 - cmdstanpy - INFO - CmdStan done processing.
23:06:15 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                                                                                                                                                                                
23:06:16 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
23:06:32 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
23:06:32 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
23:06:32 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o

23:06:32 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status

chain 3 |          | 00:00 Status


chain 4 |          | 00:00 Status


chain 4 |▋         | 00:00 Status
chain 1 |█▍        | 00:28 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |█▍        | 00:34 Iteration:    1 / 1250 [  0%]  (Warmup)


chain 1 |██▏       | 00:45 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▏       | 00:54 Iteration:  100 / 1250 [  8%]  (Warmup)


chain 1 |██▊       | 00:59 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |██▊       | 01:08 Iteration:  200 / 1250 [ 16%]  (Warmup)


chain 1 |███▌      | 01:11 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |███▌      | 01:20 Iteration:  300 / 1250 [ 24%]  (Warmup)


chain 1 |████▎     | 01:25 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |████▎     | 01:33 Iteration:  400 / 1250 [ 32%]  (Warmup)


chain 1 |█████     | 01:37 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████     | 01:45 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 1 |█████▋    | 01:48 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |█████▋    | 01:56 Iteration:  600 / 1250 [ 48%]  (Warmup)


chain 1 |██████▍   | 01:58 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |██████▍   | 02:06 Iteration:  700 / 1250 [ 56%]  (Warmup)


chain 1 |███████▏  | 02:09 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▏  | 02:16 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 1 |████████▌ | 02:21 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |███████▊  | 02:28 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 02:28 Iteration: 1000 / 1250 [ 80%]  (Warmup)


chain 1 |█████████▎| 02:36 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |█████████▎| 02:41 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 1 |██████████| 02:51 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |          | 02:58 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 4 |██████████| 02:59 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 2 |          | 03:01 Iteration: 1200 / 1250 [ 96%]  (Sampling)

chain 3 |▋         | 03:01 Status


chain 4 |          | 03:05 Iteration: 1200 / 1250 [ 96%]  (Sampling)

chain 3 |█▍        | 27:18 Iteration:    1 / 1250 [  0%]  (Warmup)

chain 3 |██▏       | 49:44 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |██▊       | 1:09:42 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 3 |███▌      | 1:29:37 Iteration:  300 / 1250 [ 24%]  (Warmup)

chain 3 |████▎     | 1:49:31 Iteration:  400 / 1250 [ 32%]  (Warmup)

chain 3 |█████     | 2:09:25 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |█████▋    | 2:27:31 Iteration:  600 / 1250 [ 48%]  (Warmup)

chain 3 |██████▍   | 2:44:12 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 3 |███████▏  | 3:00:56 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 3 |███████▊  | 3:17:37 Iteration:  900 / 1250 [ 72%]  (Warmup)

chain 3 |████████▌ | 3:17:47 Iteration: 1000 / 1250 [ 80%]  (Warmup)

chain 3 |█████████▎| 3:34:17 Iteration: 1001 / 1250 [ 80%]  (Sampling)

chain 3 |██████████| 3:50:57 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 1 |██████████| 3:59:27 Sampling completed                     
chain 2 |██████████| 3:59:27 Sampling completed                     
chain 3 |██████████| 3:59:27 Sampling completed                       
chain 4 |██████████| 3:59:27 Sampling completed                     
03:06:00 - cmdstanpy - INFO - CmdStan done processing.
03:06:00 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 70, column 4 to column 39)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                                                                                                                                                                                
03:06:00 - cmdstanpy - WARNING - Some chains may have failed to converge.
	Chain 3 had 250 iterations at max treedepth (100.0%)
	Use function "diagnose()" to see further information.
03:06:01 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
03:06:10 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
03:06:10 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
03:06:10 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o

03:06:10 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status

chain 3 |          | 00:00 Status


chain 4 |          | 00:00 Status
chain 2 |▋         | 00:00 Status

chain 3 |▋         | 00:00 Status


chain 4 |▋         | 00:00 Status
chain 2 |█▍        | 00:23 Iteration:    1 / 1250 [  0%]  (Warmup)

chain 3 |█▍        | 00:25 Iteration:    1 / 1250 [  0%]  (Warmup)


chain 4 |█▍        | 00:28 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 00:33 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |██▏       | 00:36 Iteration:  100 / 1250 [  8%]  (Warmup)


chain 4 |██▏       | 00:37 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 00:41 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 3 |██▊       | 00:45 Iteration:  200 / 1250 [ 16%]  (Warmup)


chain 4 |██▊       | 00:45 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 00:47 Iteration:  300 / 1250 [ 24%]  (Warmup)

chain 3 |███▌      | 00:51 Iteration:  300 / 1250 [ 24%]  (Warmup)


chain 4 |███▌      | 00:53 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 00:55 Iteration:  400 / 1250 [ 32%]  (Warmup)

chain 3 |████▎     | 00:59 Iteration:  400 / 1250 [ 32%]  (Warmup)


chain 4 |████▎     | 01:00 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 01:02 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |█████     | 01:06 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 4 |█████     | 01:07 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 01:08 Iteration:  600 / 1250 [ 48%]  (Warmup)

chain 3 |█████▋    | 01:12 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 01:13 Iteration:  700 / 1250 [ 56%]  (Warmup)


chain 4 |█████▋    | 01:14 Iteration:  600 / 1250 [ 48%]  (Warmup)

chain 3 |██████▍   | 01:18 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 01:19 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 4 |██████▍   | 01:20 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 3 |███████▏  | 01:24 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 4 |███████▏  | 01:26 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 01:27 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 01:27 Iteration: 1000 / 1250 [ 80%]  (Warmup)

chain 3 |███████▊  | 01:32 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 4 |███████▊  | 01:33 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 01:36 Iteration: 1001 / 1250 [ 80%]  (Sampling)

chain 3 |█████████▎| 01:39 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 1 |▋         | 01:41 Status
chain 2 |██████████| 01:43 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 2 |          | 01:48 Iteration: 1200 / 1250 [ 96%]  (Sampling)

chain 3 |██████████| 01:48 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 4 |██████████| 01:48 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 3 |          | 01:51 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 1 |██████████| 02:58 Sampling completed                       
                                                                                                                                                                                                                                                                                                                                
chain 2 |██████████| 02:58 Sampling completed                       
chain 3 |██████████| 02:58 Sampling completed                       
chain 4 |██████████| 02:58 Sampling completed                       
03:09:09 - cmdstanpy - INFO - CmdStan done processing.
03:09:09 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 70, column 4 to column 39)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
Consider re-running with show_console=True if the above output is unclear!
03:09:10 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
03:09:18 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
03:09:18 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
03:09:18 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o

03:09:19 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status

chain 3 |          | 00:00 Status


chain 1 |██████▍   | 01:46 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 1 |█████████▎| 02:16 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |          | 02:32 Iteration: 1200 / 1250 [ 96%]  (Sampling)

chain 3 |█▍        | 02:32 Iteration:    1 / 1250 [  0%]  (Warmup)

chain 3 |██▏       | 02:47 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |██▊       | 03:00 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |█▍        | 03:02 Iteration:    1 / 1250 [  0%]  (Warmup)

chain 3 |███▌      | 03:09 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |██▏       | 03:17 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |████▎     | 03:20 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |██▊       | 03:28 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 3 |█████     | 03:29 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |█████▋    | 03:37 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |███▌      | 03:38 Iteration:  300 / 1250 [ 24%]  (Warmup)

chain 3 |██████▍   | 03:45 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |████▎     | 03:47 Iteration:  400 / 1250 [ 32%]  (Warmup)

chain 3 |███████▏  | 03:52 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |█████     | 03:56 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |███████▊  | 04:02 Iteration:  900 / 1250 [ 72%]  (Warmup)

chain 3 |████████▌ | 04:02 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████▋    | 04:04 Iteration:  600 / 1250 [ 48%]  (Warmup)

chain 3 |█████████▎| 04:12 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████▍   | 04:13 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 04:21 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 3 |██████████| 04:22 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 3 |          | 04:27 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |███████▊  | 04:30 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 04:39 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 04:48 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 2 |          | 04:53 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 4 |▋         | 07:24 Status


chain 4 |█▍        | 07:42 Iteration:    1 / 1250 [  0%]  (Warmup)


chain 4 |██▏       | 07:54 Iteration:  100 / 1250 [  8%]  (Warmup)


chain 4 |██▊       | 08:02 Iteration:  200 / 1250 [ 16%]  (Warmup)


chain 4 |███▌      | 08:09 Iteration:  300 / 1250 [ 24%]  (Warmup)


chain 4 |████▎     | 08:17 Iteration:  400 / 1250 [ 32%]  (Warmup)


chain 4 |█████     | 08:23 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 4 |█████▋    | 08:29 Iteration:  600 / 1250 [ 48%]  (Warmup)


chain 4 |██████▍   | 08:35 Iteration:  700 / 1250 [ 56%]  (Warmup)


chain 4 |███████▏  | 08:41 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 4 |███████▊  | 08:48 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 4 |█████████▎| 08:54 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 4 |██████████| 09:02 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 1 |██████████| 09:05 Sampling completed                       
chain 2 |██████████| 09:05 Sampling completed                       
chain 3 |██████████| 09:05 Sampling completed                       
chain 4 |██████████| 09:05 Sampling completed                       
03:18:24 - cmdstanpy - INFO - CmdStan done processing.
03:18:24 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 70, column 4 to column 39)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 70, column 4 to column 39)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                                                                                                                                                                                
03:18:25 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
03:18:35 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
03:18:35 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
03:18:35 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o

03:18:35 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status

chain 3 |          | 00:00 Status


chain 1 |▋         | 00:00 Status


chain 4 |▋         | 00:00 Status
chain 2 |▋         | 00:00 Status
chain 1 |█▍        | 00:26 Iteration:    1 / 1250 [  0%]  (Warmup)


chain 4 |█▍        | 00:27 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▏       | 00:36 Iteration:  100 / 1250 [  8%]  (Warmup)


chain 4 |██▏       | 00:38 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |██▊       | 00:45 Iteration:  200 / 1250 [ 16%]  (Warmup)


chain 4 |██▊       | 00:47 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |███▌      | 00:53 Iteration:  300 / 1250 [ 24%]  (Warmup)


chain 4 |███▌      | 00:55 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |████▎     | 01:02 Iteration:  400 / 1250 [ 32%]  (Warmup)


chain 4 |████▎     | 01:04 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████     | 01:09 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 4 |█████     | 01:12 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████▋    | 01:16 Iteration:  600 / 1250 [ 48%]  (Warmup)


chain 4 |█████▋    | 01:19 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |██████▍   | 01:23 Iteration:  700 / 1250 [ 56%]  (Warmup)


chain 4 |██████▍   | 01:27 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |███████▏  | 01:30 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 4 |███████▏  | 01:34 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 1 |████████▌ | 01:39 Iteration: 1000 / 1250 [ 80%]  (Warmup)


chain 4 |███████▊  | 01:43 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 1 |█████████▎| 01:48 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 4 |█████████▎| 01:53 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 1 |██████████| 01:57 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |          | 02:02 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 4 |██████████| 02:03 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 4 |          | 02:07 Iteration: 1200 / 1250 [ 96%]  (Sampling)

chain 3 |▋         | 07:41 Status

chain 3 |█▍        | 07:57 Iteration:    1 / 1250 [  0%]  (Warmup)

chain 3 |██▏       | 08:04 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |██▊       | 08:11 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 3 |███▌      | 08:16 Iteration:  300 / 1250 [ 24%]  (Warmup)

chain 3 |████▎     | 08:22 Iteration:  400 / 1250 [ 32%]  (Warmup)

chain 3 |█████     | 08:27 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |█████▋    | 08:32 Iteration:  600 / 1250 [ 48%]  (Warmup)

chain 3 |██████▍   | 08:36 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 3 |███████▏  | 08:40 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 3 |███████▊  | 08:46 Iteration:  900 / 1250 [ 72%]  (Warmup)

chain 3 |█████████▎| 08:52 Iteration: 1001 / 1250 [ 80%]  (Sampling)

chain 3 |██████████| 08:59 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 1 |██████████| 09:02 Sampling completed                       
                                                                                                                                                                                                                                                                                                                                
chain 2 |██████████| 09:02 Sampling completed                       
chain 3 |██████████| 09:02 Sampling completed                       
chain 4 |██████████| 09:02 Sampling completed                       
03:27:38 - cmdstanpy - INFO - CmdStan done processing.
03:27:38 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: normal_lpdf: Scale parameter is 0, but must be positive! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 70, column 4 to column 39)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
Consider re-running with show_console=True if the above output is unclear!
03:27:39 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
03:27:48 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
03:27:48 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
03:27:48 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o

03:27:48 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status

chain 3 |          | 00:00 Status


chain 4 |          | 00:00 Status


chain 1 |█▍        | 00:25 Iteration:    1 / 1250 [  0%]  (Warmup)


chain 1 |██▏       | 00:36 Iteration:  100 / 1250 [  8%]  (Warmup)


chain 1 |██▊       | 00:46 Iteration:  200 / 1250 [ 16%]  (Warmup)


chain 1 |███▌      | 00:54 Iteration:  300 / 1250 [ 24%]  (Warmup)


chain 1 |████▎     | 01:03 Iteration:  400 / 1250 [ 32%]  (Warmup)


chain 1 |█████     | 01:10 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 1 |█████▋    | 01:17 Iteration:  600 / 1250 [ 48%]  (Warmup)


chain 1 |██████▍   | 01:24 Iteration:  700 / 1250 [ 56%]  (Warmup)


chain 1 |███████▏  | 01:31 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 4 |███████▏  | 01:32 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 1 |███████▊  | 01:39 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 4 |███████▊  | 01:41 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 1 |█████████▎| 01:49 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 1 |██████████| 01:58 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 1 |          | 02:02 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 4 |          | 02:02 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |▋         | 02:18 Status
chain 2 |█▍        | 02:38 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 02:47 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |█▍        | 02:52 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▊       | 02:54 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 3 |██▏       | 03:00 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |███▌      | 03:01 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 03:07 Iteration:  400 / 1250 [ 32%]  (Warmup)

chain 3 |██▊       | 03:07 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |█████     | 03:13 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |███▌      | 03:13 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |█████▋    | 03:19 Iteration:  600 / 1250 [ 48%]  (Warmup)

chain 3 |████▎     | 03:21 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |██████▍   | 03:24 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 3 |█████     | 03:27 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |███████▏  | 03:30 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 3 |█████▋    | 03:32 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |███████▊  | 03:36 Iteration:  900 / 1250 [ 72%]  (Warmup)

chain 3 |██████▍   | 03:38 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 3 |███████▏  | 03:43 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |█████████▎| 03:43 Iteration: 1001 / 1250 [ 80%]  (Sampling)

chain 3 |███████▊  | 03:49 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |██████████| 03:50 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 2 |          | 03:53 Iteration: 1200 / 1250 [ 96%]  (Sampling)

chain 3 |█████████▎| 03:56 Iteration: 1001 / 1250 [ 80%]  (Sampling)

chain 3 |██████████| 04:01 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 1 |██████████| 04:04 Sampling completed                       
chain 2 |██████████| 04:04 Sampling completed                       
chain 3 |██████████| 04:04 Sampling completed                       
chain 4 |██████████| 04:04 Sampling completed                       
03:31:53 - cmdstanpy - INFO - CmdStan done processing.
03:31:53 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 71, column 4 to column 37)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 70, column 4 to column 39)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 70, column 4 to column 39)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.135) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                                                                                                                                                                                
03:31:54 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
03:32:02 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
03:32:02 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
03:32:02 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o

03:32:03 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status

chain 3 |          | 00:00 Status


chain 1 |▋         | 00:00 Status
chain 1 |█▍        | 00:25 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▏       | 00:35 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▏       | 00:36 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 00:44 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 00:51 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 00:59 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 01:05 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 01:12 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 01:18 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 01:24 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 01:31 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 01:40 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 4 |▋         | 01:41 Status
chain 1 |██▊       | 01:50 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |████▎     | 02:04 Iteration:  400 / 1250 [ 32%]  (Warmup)


chain 1 |█████     | 02:10 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 1 |█████▋    | 02:16 Iteration:  600 / 1250 [ 48%]  (Warmup)


chain 1 |███████▏  | 02:27 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 1 |███████▊  | 02:33 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 1 |█████████▎| 02:41 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 4 |█████     | 02:41 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 1 |██████████| 02:48 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 1 |          | 02:52 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 4 |██████▍   | 02:52 Iteration:  700 / 1250 [ 56%]  (Warmup)


chain 4 |███████▏  | 02:57 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 4 |███████▊  | 03:02 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 4 |█████████▎| 03:09 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 4 |██████████| 03:16 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 4 |          | 03:19 Iteration: 1200 / 1250 [ 96%]  (Sampling)

chain 3 |█▍        | 18:31 Iteration:    1 / 1250 [  0%]  (Warmup)

chain 3 |██▏       | 36:51 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |██▊       | 55:09 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 3 |███▌      | 1:13:24 Iteration:  300 / 1250 [ 24%]  (Warmup)

chain 3 |████▎     | 1:31:29 Iteration:  400 / 1250 [ 32%]  (Warmup)

chain 3 |█████     | 1:49:32 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |█████▋    | 2:07:35 Iteration:  600 / 1250 [ 48%]  (Warmup)

chain 3 |██████▍   | 2:25:39 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 3 |███████▏  | 2:43:43 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 3 |███████▊  | 3:01:48 Iteration:  900 / 1250 [ 72%]  (Warmup)

chain 3 |████████▌ | 3:01:58 Iteration: 1000 / 1250 [ 80%]  (Warmup)

chain 3 |█████████▎| 3:19:42 Iteration: 1001 / 1250 [ 80%]  (Sampling)

chain 3 |██████████| 3:37:37 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 1 |██████████| 3:46:46 Sampling completed                     
                                                                                                                                                                                                                                                                                                                                
chain 2 |██████████| 3:46:46 Sampling completed                     
chain 3 |██████████| 3:46:46 Sampling completed                       
chain 4 |██████████| 3:46:46 Sampling completed                     
07:18:50 - cmdstanpy - INFO - CmdStan done processing.
07:18:50 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 70, column 4 to column 39)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (3.635) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
Consider re-running with show_console=True if the above output is unclear!
07:18:50 - cmdstanpy - WARNING - Some chains may have failed to converge.
	Chain 3 had 250 iterations at max treedepth (100.0%)
	Use function "diagnose()" to see further information.
07:18:51 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
07:19:00 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
07:19:00 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
07:19:00 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o

07:19:00 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status

chain 3 |          | 00:00 Status


chain 4 |          | 00:00 Status
chain 2 |▋         | 00:00 Status

chain 3 |▋         | 00:00 Status


chain 1 |▋         | 00:00 Status

chain 3 |█▍        | 00:12 Iteration:    1 / 1250 [  0%]  (Warmup)


chain 1 |█▍        | 00:24 Iteration:    1 / 1250 [  0%]  (Warmup)

chain 3 |██▏       | 00:27 Iteration:  100 / 1250 [  8%]  (Warmup)


chain 1 |██▏       | 00:36 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |██▊       | 00:36 Iteration:  200 / 1250 [ 16%]  (Warmup)


chain 4 |██▊       | 00:43 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 1 |██▊       | 00:44 Iteration:  200 / 1250 [ 16%]  (Warmup)


chain 1 |███▌      | 00:51 Iteration:  300 / 1250 [ 24%]  (Warmup)

chain 1 |████▎     | 00:58 Iteration:  400 / 1250 [ 32%]  (Warmup)

chain 3 |█████     | 00:59 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 1 |█████     | 01:05 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |█████▋    | 01:06 Iteration:  600 / 1250 [ 48%]  (Warmup)


chain 1 |█████▋    | 01:12 Iteration:  600 / 1250 [ 48%]  (Warmup)


chain 4 |█████▋    | 01:13 Iteration:  600 / 1250 [ 48%]  (Warmup)

chain 1 |██████▍   | 01:18 Iteration:  700 / 1250 [ 56%]  (Warmup)


chain 4 |██████▍   | 01:19 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 1 |███████▏  | 01:24 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 4 |███████▏  | 01:26 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 1 |███████▊  | 01:32 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 4 |███████▊  | 01:33 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 4 |████████▌ | 01:33 Iteration: 1000 / 1250 [ 80%]  (Warmup)

chain 1 |█████████▎| 01:41 Iteration: 1001 / 1250 [ 80%]  (Sampling)

chain 3 |██████████| 01:42 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 4 |█████████▎| 01:42 Iteration: 1001 / 1250 [ 80%]  (Sampling)

chain 1 |██████████| 01:49 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 1 |          | 01:53 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 4 |          | 01:53 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 2 |█▍        | 13:02 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 2 |██▏       | 30:24 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 2 |██▊       | 47:49 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 2 |███▌      | 1:04:52 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 2 |████▎     | 1:22:23 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |█████     | 1:39:27 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 2 |█████▋    | 1:56:35 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 2:17:54 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 2:39:06 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 3:00:29 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 3:00:42 Iteration: 1000 / 1250 [ 80%]  (Warmup)
chain 2 |█████████▎| 3:21:22 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 3:42:40 Iteration: 1100 / 1250 [ 88%]  (Sampling)
chain 1 |██████████| 3:53:47 Sampling completed                     
chain 2 |██████████| 3:53:47 Sampling completed                       
chain 3 |██████████| 3:53:47 Sampling completed                     
chain 4 |██████████| 3:53:47 Sampling completed                     
11:12:47 - cmdstanpy - INFO - CmdStan done processing.
11:12:47 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
                                                                                                                                                                                                                                                                                                                                
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
Consider re-running with show_console=True if the above output is unclear!
11:12:47 - cmdstanpy - WARNING - Some chains may have failed to converge.
	Chain 2 had 250 iterations at max treedepth (100.0%)
	Use function "diagnose()" to see further information.
11:12:48 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
11:13:07 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
11:13:07 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
11:13:07 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o

11:13:07 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status

chain 3 |          | 00:00 Status


chain 4 |          | 00:00 Status

chain 3 |▋         | 00:00 Status
chain 1 |▋         | 00:00 Status

chain 3 |█▍        | 00:24 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |█▍        | 00:26 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▏       | 00:37 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |██▏       | 00:37 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |██▊       | 00:46 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |██▊       | 00:46 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 3 |███▌      | 00:53 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |███▌      | 00:54 Iteration:  300 / 1250 [ 24%]  (Warmup)

chain 3 |████▎     | 01:01 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |████▎     | 01:02 Iteration:  400 / 1250 [ 32%]  (Warmup)

chain 3 |█████     | 01:08 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████     | 01:10 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |█████▋    | 01:15 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |█████▋    | 01:16 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 2 |██████▍   | 01:22 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 1 |██████▍   | 01:24 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 2 |███████▏  | 01:28 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 1 |███████▏  | 01:30 Iteration:  800 / 1250 [ 64%]  (Warmup)
chain 2 |███████▊  | 01:35 Iteration:  900 / 1250 [ 72%]  (Warmup)

chain 1 |███████▊  | 01:38 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |█████████▎| 01:43 Iteration: 1001 / 1250 [ 80%]  (Sampling)

chain 1 |█████████▎| 01:46 Iteration: 1001 / 1250 [ 80%]  (Sampling)
chain 2 |██████████| 01:51 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 1 |██████████| 01:53 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 3 |          | 01:55 Iteration: 1200 / 1250 [ 96%]  (Sampling)
chain 1 |          | 01:57 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 4 |▋         | 04:48 Status


chain 4 |█▍        | 05:38 Iteration:    1 / 1250 [  0%]  (Warmup)


chain 4 |██▏       | 05:46 Iteration:  100 / 1250 [  8%]  (Warmup)


chain 4 |██▊       | 05:54 Iteration:  200 / 1250 [ 16%]  (Warmup)


chain 4 |███▌      | 05:59 Iteration:  300 / 1250 [ 24%]  (Warmup)


chain 4 |████▎     | 06:06 Iteration:  400 / 1250 [ 32%]  (Warmup)


chain 4 |█████     | 06:11 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 4 |█████▋    | 06:15 Iteration:  600 / 1250 [ 48%]  (Warmup)


chain 4 |██████▍   | 06:20 Iteration:  700 / 1250 [ 56%]  (Warmup)


chain 4 |███████▏  | 06:25 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 4 |███████▊  | 06:30 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 4 |█████████▎| 06:35 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 4 |██████████| 06:40 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 1 |██████████| 06:42 Sampling completed                       
                                                                                                                                                                                                                                                                                                                                
chain 2 |██████████| 06:42 Sampling completed                       
chain 3 |██████████| 06:42 Sampling completed                       
chain 4 |██████████| 06:42 Sampling completed                       
11:19:50 - cmdstanpy - INFO - CmdStan done processing.
11:19:50 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
Consider re-running with show_console=True if the above output is unclear!
11:19:52 - cmdstanpy - INFO - compiling stan file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan to exe file /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
11:20:05 - cmdstanpy - INFO - compiled model executable: /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
11:20:05 - cmdstanpy - WARNING - Stan compiler has produced 1 warnings:
11:20:05 - cmdstanpy - WARNING - 
--- Translating Stan model to C++ code ---
bin/stanc --include-paths=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1 --o=/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan
Warning in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4: Declaration
    of arrays by placing brackets after a variable name is deprecated and
    will be removed in Stan 2.32.0. Instead use the array keyword before the
    type. This can be changed automatically using the auto-format flag to
    stanc

--- Compiling, linking C++ code ---
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS          -c -include-pch stan/src/stan/model/model_header_threads.hpp.gch -x c++ -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.hpp
clang++ -std=c++1y -Wno-unknown-warning-option -Wno-tautological-compare -Wno-sign-compare -D_REENTRANT -Wno-ignored-attributes     -DSTAN_THREADS -I stan/lib/stan_math/lib/tbb_2020.3/include    -O3 -I src -I stan/src -I lib/rapidjson_1.1.0/ -I lib/CLI11-1.9.1/ -I stan/lib/stan_math/ -I stan/lib/stan_math/lib/eigen_3.3.9 -I stan/lib/stan_math/lib/boost_1.78.0 -I stan/lib/stan_math/lib/sundials_6.1.1/include -I stan/lib/stan_math/lib/sundials_6.1.1/src/sundials    -DBOOST_DISABLE_ASSERTS                -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"      /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o src/cmdstan/main_threads.o        -Wl,-L,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb" -Wl,-rpath,"/Users/hyunjimoon/.cmdstan/cmdstan-2.30.1/stan/lib/stan_math/lib/tbb"   stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_nvecserial.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_cvodes.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_idas.a stan/lib/stan_math/lib/sundials_6.1.1/lib/libsundials_kinsol.a  stan/lib/stan_math/lib/tbb/libtbb.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc.dylib stan/lib/stan_math/lib/tbb/libtbbmalloc_proxy.dylib -o /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws
rm -f /Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.o

11:20:05 - cmdstanpy - INFO - CmdStan start processing
chain 1 |          | 00:00 Status
chain 2 |          | 00:00 Status

chain 3 |          | 00:00 Status


chain 4 |          | 00:00 Status

chain 3 |▋         | 00:00 Status
chain 1 |▋         | 00:00 Status
chain 1 |█▍        | 00:22 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▏       | 00:33 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |█▍        | 00:41 Iteration:    1 / 1250 [  0%]  (Warmup)
chain 1 |██▊       | 00:43 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |███▌      | 00:52 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |████▎     | 01:00 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 1 |█████     | 01:08 Iteration:  500 / 1250 [ 40%]  (Warmup)

chain 3 |██▏       | 01:08 Iteration:  100 / 1250 [  8%]  (Warmup)
chain 1 |█████▋    | 01:15 Iteration:  600 / 1250 [ 48%]  (Warmup)

chain 3 |██▊       | 01:16 Iteration:  200 / 1250 [ 16%]  (Warmup)
chain 1 |██████▍   | 01:21 Iteration:  700 / 1250 [ 56%]  (Warmup)

chain 3 |███▌      | 01:24 Iteration:  300 / 1250 [ 24%]  (Warmup)
chain 1 |███████▏  | 01:28 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 3 |████▎     | 01:32 Iteration:  400 / 1250 [ 32%]  (Warmup)
chain 2 |███████▊  | 01:35 Iteration:  900 / 1250 [ 72%]  (Warmup)
chain 2 |████████▌ | 01:35 Iteration: 1000 / 1250 [ 80%]  (Warmup)


chain 1 |███████▊  | 01:36 Iteration:  900 / 1250 [ 72%]  (Warmup)

chain 3 |█████     | 01:41 Iteration:  500 / 1250 [ 40%]  (Warmup)
chain 1 |█████████▎| 01:45 Iteration: 1001 / 1250 [ 80%]  (Sampling)

chain 3 |█████▋    | 01:48 Iteration:  600 / 1250 [ 48%]  (Warmup)
chain 1 |██████████| 01:55 Iteration: 1100 / 1250 [ 88%]  (Sampling)

chain 3 |██████▍   | 01:56 Iteration:  700 / 1250 [ 56%]  (Warmup)
chain 1 |          | 01:59 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 4 |█▍        | 02:01 Iteration:    1 / 1250 [  0%]  (Warmup)

chain 3 |███████▏  | 02:01 Iteration:  800 / 1250 [ 64%]  (Warmup)

chain 3 |███████▊  | 02:08 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 4 |██▏       | 02:10 Iteration:  100 / 1250 [  8%]  (Warmup)

chain 3 |█████████▎| 02:16 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 4 |██▊       | 02:17 Iteration:  200 / 1250 [ 16%]  (Warmup)

chain 3 |██████████| 02:24 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 4 |███▌      | 02:24 Iteration:  300 / 1250 [ 24%]  (Warmup)

chain 3 |          | 02:27 Iteration: 1200 / 1250 [ 96%]  (Sampling)


chain 4 |████▎     | 02:30 Iteration:  400 / 1250 [ 32%]  (Warmup)


chain 4 |█████     | 02:35 Iteration:  500 / 1250 [ 40%]  (Warmup)


chain 4 |█████▋    | 02:41 Iteration:  600 / 1250 [ 48%]  (Warmup)


chain 4 |██████▍   | 02:46 Iteration:  700 / 1250 [ 56%]  (Warmup)


chain 4 |███████▏  | 02:51 Iteration:  800 / 1250 [ 64%]  (Warmup)


chain 4 |███████▊  | 02:57 Iteration:  900 / 1250 [ 72%]  (Warmup)


chain 4 |█████████▎| 03:04 Iteration: 1001 / 1250 [ 80%]  (Sampling)


chain 4 |██████████| 03:11 Iteration: 1100 / 1250 [ 88%]  (Sampling)


chain 1 |██████████| 03:14 Sampling completed                       
chain 2 |██████████| 03:14 Sampling completed                       
chain 3 |██████████| 03:14 Sampling completed                       
chain 4 |██████████| 03:14 Sampling completed                       
11:23:20 - cmdstanpy - INFO - CmdStan done processing.
11:23:20 - cmdstanpy - WARNING - Non-fatal error during sampling:
Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: normal_lpdf: Location parameter[1] is nan, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 70, column 4 to column 39)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45:  Failed to integrate to next output time (0.01) in less than max_num_steps steps (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: ode_rk45: ode parameters and data is inf, but must be finite! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 55, column 4 to column 208)
	Exception: normal_lpdf: Scale parameter is 0, but must be positive! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 70, column 4 to column 39)
	Exception: normal_lpdf: Scale parameter is 0, but must be positive! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 70, column 4 to column 39)
	Exception: normal_lpdf: Scale parameter is 0, but must be positive! (in '/Users/hyunjimoon/Dropbox/tolzul/BayesSD/ContinuousCode/trust_factory/stanify/vignette/stan_files/2hier_s_asy_osc_S10N40Q2P3H0R1_M1000_ps0.1/data2draws.stan', line 70, column 4 to column 39)
Consider re-running with show_console=True if the above output is unclear!
                                                                                                                                                                                                                                                                                                                                

Process finished with exit code 0

```