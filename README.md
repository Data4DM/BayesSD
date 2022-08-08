## Deamand and Supply of this repository 
The short term purpose of this respository is to supply students of 879 seminar series with resources, starting with 15.879 Brining Data Into Dynamic Models ([syllabus](https://github.com/hyunjimoon/DataInDM/blob/main/879Weekly/Syllabus-15879-Fall2022.pdf). Long term goal is to kickoff SilkRoad project (more below). Each are being updated in `879_Week folder` and `879Re_Month` folder. 

## Demand of SilkRoad project
Short answer: I wished to connect the lifelong brainchild of the scholars I respect. 

Five ideas documented below are not evaporative because of its software (Vensim, SDA, Stan, BATS, SOPS). However, more fundamentally, each are sustained by creator's affection. Like parents, Tom, Rogelio, Andrew, Yaman, Erling revisit their child every so often to document and update. Their thrill and willingness to invest time are few memorable emotions that inspired me which made me devoted to this project. I seeked paths to ensure sustainability of five ideas and reasoned how cultural diffusion on SilkRoad was its engine for over 1,500 years. Moreover, the united front gave birth to technologies such as glass and paper making, religious ideas and language like 35,000 new words which entered Chinese from Buddhist missionaries.

Moreover, I judged the ideas have great potential to contribute to humanity and find it my duty to preserve my major's heritage.

## Supply of SilkRoad project
Supply based on my research interests, skill set, network in both statistical and system dynamics modeling community can meet the above demand. So why hestiate for the first shovel to connect? i.e. ensure sustainability of five ideas I can't wait to see the first flow.

- `Vensim`, `SBC`, `Stan`, `SDA`, `BATS`, `SOPS` softwares with seminar ideas but in different languages (Vensim, R, Stan, Mathematica (R), Python, Powersim) which is a great obstacle for Bayesian workflow where iteration is the key. With the help of Tom, (me), Andrew, Rogelio, Yaman, Erling who are the leader (and lover) of each software, I wish to invite them on SilkRoad where ideas can flow better.

| Step                          | Output                          | Software                                                    | Symbol  | Description                                                                        | opensource? (language)          |
| ----------------------------- | ------------------------------- | ----------------------------------------------------------- | ------------ | ------------------------------------------------------------------------ | -------------------- |
| 1. Program Perceived `Demand` | a. Perceived Demand             | [Vensim](https://vensim.com/)                               | 👁 Eye        | Reads mental model, Translates to cyclic directed graph `generator`   | X (has free version)  |
| 1.                            | b. Analyzed Demand              | [SDA](http://people.tamu.edu/~roliva/research/sd/sda/)      | 🧠 Brain     | Finds dominant cycle of `generator`, Maps with system behavior         | O (Mathematica, R)   |
| -                             |                                 |                                                             |              |                                                                          |                      |
| 2. Compute Scientific `Draws` | a. Computed Draws               | [Stan](https://mc-stan.org/)                                | 🐴 Workhorse | Builds posterior space, Runs HMC, ADVI, BFGS for representative draws | O (Stan connected to Python, R, Julia) |
| 2.                            | b. Verified and Validated Draws | [SBC](https://hyunjimoon.github.io/SBC/articles/index.html) | 👌 Test      |Diagnoses graphically, Calibrates architecture, policy, parameter prior `discriminator`       | O (R)                |
| -                             |                                 |                                                             |              |                                                                          |                      |
| 3. Collect Supporting `Data`  | a. Theoretical Policy Parameter | BATS (communicating with Yaman, Gönenç)                     | 🦇 Explore   | Specifies policy parameter for demanded behavior                        | O (Python)           |
| 3.                            | b. Empirical Policy Parameter   | SOPS (communicating with Erling)                            | 🚀  One-shot |Optimizes policy one-shot in stochastic dynamic system               | O (Powersim)         |
| -                             |                                 |                                                             |              |                                                                          |                      |
|     Iterate and communicate                          |   Hub `pysd`, `readsdr`                               | [PySD](https://pysd.readthedocs.io/en/master/), [readsdr](https://github.com/jandraor/readsdr)                                                            |  🗣 Language            |                                                                          |     O (Python, R)               |


- Plan is to collaborate with PySD team [here](https://github.com/JamesPHoughton/pysd/pull/347)
- Case studies may be presented in cookbook format like [here](https://pysd-cookbook.readthedocs.io/en/latest/index.html) (tbd)
- Users can cook their decision by `programming demand`, `sampling scientific draws`, `collecting sensible data`.
