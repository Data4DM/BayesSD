List of Programs in `ContinuousCode` folder:

1. Vensim
<img width="1232" alt="image" src="https://user-images.githubusercontent.com/30194633/190863417-06e21750-f01d-4eea-918f-1c09cb36d7b1.png">

2. SDA
main function: ??

Structured Dominance Analysis eigenvalue elasticity analysis SDA dynamic behavior classification, which
![image](https://user-images.githubusercontent.com/30194633/183362622-34becb9d-262d-4de7-8875-670492f563a1.png)


3. Stan
main function: `model = cmdstanpy(stanfile)`, `model.sample(data)`
<img width="1057" alt="image" src="https://user-images.githubusercontent.com/30194633/183375778-302043e0-65f0-4926-9608-90a4a4f09ec5.png">

4. SBC

<img width="1348" alt="image" src="https://user-images.githubusercontent.com/30194633/183379610-34179829-4f4e-4d0b-8add-6d5c3f01cd25.png">

5. BATS: Behavior Analysis and Test Software 
- Pattern Hypothesis Tester
- Behavior Space Classifier
- Behavior Class Mapper

classifies system behavior function into 6 classes (17 subclasses)
![image](https://user-images.githubusercontent.com/30194633/183305467-207985ae-fd9f-474e-84da-a6f9307c69e0.png)


6. SOPS
main function: 
- `SOPSCUSTOMPOLICY(a0+a1*'fish stock' + a2*('fish stock'-'fish stock ref')^2 + 'harv cap'*(capacity-'cap ref'))`
- `POLICYGRID`
- `SOPSPOLICYGRID`

<img width="622" alt="image" src="https://user-images.githubusercontent.com/30194633/183408304-3d6c8399-4624-474c-ac1b-19d6176ca8dc.png">

## Policy parameter specification based on desired behavior

- demand vs desire? (demanded behavior vs desired behavior)
- do decision make usually know what behaviors are desired? (or is it `desire_prior` which should be learned?)
