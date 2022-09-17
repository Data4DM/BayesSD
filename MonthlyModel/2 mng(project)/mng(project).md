
![[ref/mng(project)]]

1. selecting estimated parameter
2. two ways of encode constraint for fixed population
3. 
```
if then else ( Time 
                  < Patient Zero Arrival Time 
                  :AND: Time 
                       + TIME STEP 
                       >= Patient Zero Arrival Time, 
             Patient zero 
                  / TIME STEP , 
             0)
```