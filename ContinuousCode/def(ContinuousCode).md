- [[#List of  codes in  `ContinuousCode` folder:|List of  codes in  `ContinuousCode` folder:]]
- [[#Code for 0_PA Matter|Code for 0_PA Matter]]
- [[#Code for 0_PA checking|Code for 0_PA checking]]
- [[#Code for 1_PAD Matter|Code for 1_PAD Matter]]
- [[#Code for 2_PD|Code for 2_PD]]
- [[#Code for 3_Data4DM|Code for 3_Data4DM]]
- [[#Code for 4_DM4Data|Code for 4_DM4Data]]
- [[#Code for 5_BayesCalib|Code for 5_BayesCalib]]
	- [[#Code for 5_BayesCalib#policy parameter specification based on desired behavior|policy parameter specification based on desired behavior]]
	- [[#Code for 5_BayesCalib#customizing model based on precision|customizing model based on precision]]
	- [[#Code for 5_BayesCalib#geometric Prior for DM4Data|geometric Prior for DM4Data]]


## List of  codes in  `ContinuousCode` folder:
- [[def(0_PA)]] explains form and matter of generator. It includes modeling techniques from both statistical and simulation side
	- statistical (form): Stan syntax e.g. syntatic sugar `~` that automates building objective function, `_lpdf, _rng`  of any distribution function. Parameterization and prior design.
	- simulation (matter): aging chaing, coflow, replacing causal loops with functional approximation, defining objective function (policy)
	- "is form and matter close enough" checking methods e.g. Talts2018 Simulation-based calibration. We define form-matter pair that passed this checking as `identified generator`
- [[def(1_PAD)]] explains approximator of  `identified generator` (form) conditional on the observed data. It includes estimation methods, including the first five chapters of AMD textbook.
	
- [[def(2_PD)]] explains in depth analysis of  `generator` on the parameter region on which  `identified generator` is verified and validated. 

- [[def(3_Data4DM)]] explains construction from labeled to unlabeled learning (https://statmodeling.stat.columbia.edu/2022/07/20/unsupervised-learning-gets-a-bad-rap/). It includes BATS and SOPS from SD community.

- [[def(4_DM4Data)]] explains construction from unlabeled to labeled learning which includes GAN. 

- [[def(3_Data4DM)]] and  [[def(4_DM4Data)]] bridges labeled and unlabeled learning as follows:

![[Pasted image 20221002110321.png]]


## Code for 0_PA Matter
- Vensim on its python platform
<img width="1232" alt="image" src="https://user-images.githubusercontent.com/30194633/190863417-06e21750-f01d-4eea-918f-1c09cb36d7b1.png">
- stanify, pysd, venpy, VST, SDEverwhere may help python translation for sleeker connection to 1_PAD


## Code for 0_PA checking
- SBC

<img width="1348" alt="image" src="https://user-images.githubusercontent.com/30194633/183379610-34179829-4f4e-4d0b-8add-6d5c3f01cd25.png">


## Code for 1_PAD Matter
a. Stan
main function: `model = cmdstanpy(stanfile)`, `model.sample(data)`
<img width="1057" alt="image" src="https://user-images.githubusercontent.com/30194633/183375778-302043e0-65f0-4926-9608-90a4a4f09ec5.png">

b. Jax, Scipy and other optimization packages which may require you to define objective function


## Code for 2_PD
- Structured Dominance Analysis (SDA)
main function: another approximator is introduced (linearization) on specified parameter space using observed data.

SDA analyzes eigenvalue elasticity based on linearized ODE system based on which dynamic behavior classification and prescription can be designed.
![image](https://user-images.githubusercontent.com/30194633/183362622-34becb9d-262d-4de7-8875-670492f563a1.png)


## Code for 3_Data4DM
- BATS: Behavior Analysis and Test Software 
	- Pattern Hypothesis Tester
	- Behavior Space Classifier
	- Behavior Class Mapper

classifies system behavior function into 6 classes (17 subclasses)
![image](https://user-images.githubusercontent.com/30194633/183305467-207985ae-fd9f-474e-84da-a6f9307c69e0.png)

-  SOPS
main function: 
- `SOPSCUSTOMPOLICY(a0+a1*'fish stock' + a2*('fish stock'-'fish stock ref')^2 + 'harv cap'*(capacity-'cap ref'))`
- `POLICYGRID`
- `SOPSPOLICYGRID`

<img width="622" alt="image" src="https://user-images.githubusercontent.com/30194633/183408304-3d6c8399-4624-474c-ac1b-19d6176ca8dc.png">

## Code for 4_DM4Data
- Temporal Generative Adversarial Network and geometric Prior

---
## Code for 5_BayesCalib


Remaining questions explored in [[def(5_BayesCalib)]] including
### policy parameter specification based on desired behavior
- demand vs desire? (demanded behavior vs desired behavior)
- do decision make usually know what behaviors are desired? (or is it `desire_prior` which should be learned?)

### customizing model based on precision

### geometric Prior for DM4Data
- [[def(4_DM4Data)]]
