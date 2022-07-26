15.879 Bringing Data into Dynamic Models, Fall 2022 

Assignment 2: Multi-level Model Subscripting1 

Due: 9/23/2022 

This week you will prepare your model for multi-unit and multi-level estimation. The basic idea is simple but very important: whereas your current model focuses on a single unit (whether it is a person, a firm, a city, or a country) of the phenomenon of interest, there is much leverage to expanding any empirical estimation to multiple units of the same phenomenon. While this would require getting data about multiple units, with increasing data availability across domains the task may not be much harder than finding the data for a single unit. The value of estimating the model for multiple units is two-fold: first, by leveraging data from multiple units you can gain statistical power. In the extreme, if all estimated parameters were the same across the N units, you will have N times more data for each parameter. While we often do not assume all units have identical parameter values, to the extent our qualitative knowledge allows us to bound values across different units together, we would gain statistical power from having multiple units. Second, our analysis will be more generalizable. In fact, going from single case to large N is the way much empirical research builds more generalizable theory.  

In this exercise you will extensively leverage Vensim’s subscript functionality. If you are not familiar with that, you may go through [Vensim’s introduction to subscripts](https://www.vensim.com/documentation/ref_subscripts.html) and the following youtube tutorials [introducing subscripts](https://www.youtube.com/watch?v=DS8t7YyIBMU) and [using subscript functionality for doing linear regressions](https://www.youtube.com/watch?v=vVB3fJxXGBg) (you don’t need to do regressions in Vensim, but the tutorial will give you a feel for what you can do). 

1.  Define a new subscript; call it a name consistent with your model (e.g. “Firms”, “Countries”, etc.), and define its elements using the flexible Vensim notation, e.g. “(f1-f5)” will create five elements named f1, f2, f3, f4, and f5 under that subscript. You can now easily change the subscript range to change the number of units you are modeling (e.g. Firms: f1 will give you a single firm; Firms: (f1-f100) gives you 100). 
    

2.  Add this subscript to your model. Note that you can select model variables you want to add a subscript to and complete the work by going to the “Edit>Set Subscripts” menu. It is a good idea to add this subscript to all model variables and parameters, except the ‘assumed parameters’ you had identified in assignment 1. Makes sure your model simulates properly.  
    

The previous steps have replicated your model for multiple units. Next, we use subscript functionality to simplify working with a large vector of ‘estimated parameters’. 

3.  Define another subscript; call this one “Params”. For its elements, add items corresponding to all ‘estimated parameters’ you identified for your model. For example, if you have a parameter ‘Time to Correct Inventory’, you can add an element named ‘TmCrrInv’ and so on. It is helpful to pick names for these elements that are intuitive but not too long.  
    

4.  Now define 4 new variables in your model. Two are subscripted both on ‘Params’ and on the subscript representing different units (e.g. ‘Firms’): a) ‘Normalized Estimated Parameters[Firms,Params]’ and b) ‘Estimated Parameters[Firms,Params]’. The other two specify the lower and upper bounds for estimated parameters and are only subscripted by ‘Params’, e.g. c) ‘Parameter Lower Bounds[Params]’ and d) ‘Parameter Upper Bounds[Params]’.  
    

5.  Formulate the items a,c, and d above as parameters. Specify their values based on upper and lower bounds you identified in assignment 1 for different estimated parameters, as well as what the baseline values are for those parameters after normalization (e.g. for a baseline value of x, given upper and lower bounds u and l, the normalized value is y=(x-l)/(u-l)). Now define item c as lower bound plus the normalized value multiplied by the gap between lower and upper bounds (i.e. x=l+(u-l)*y). Specifically:  
    

Estimated Parameters[Firms,Params]= Parameter Lower Bounds[Params]+ (Parameter Upper Bounds[Params]-Parameter Lower Bounds[Params])* Normalized Estimated Parameters[Firms,Params] 

6.  Finally, redefine different estimated parameters in your model so that they take the corresponding value from ‘Estimated Parameters’ variable rather than being a parameter.  
    

In steps 5 and 6 and when creating equations (but not for constants) you can use the ‘Initial’ specification when specifying in the variable type in Vensim (in equation dialogue box) for each equation. This ensures these variables are calculated once at the beginning of the simulation and left unchanged afterwards. 

7.  We usually use CIN files to change model parameter values from their baseline using a text file. Define a ‘.CIN’ file where you specify the values for lower and upper bounds as well as normalized parameter values. Use values/equations you already have defined in the model for this CIN file, then experiment with changing some elements of lower, upper, and normalized parameter values, and see the impact on your simulations. Make sure you fully understand what is happening in terms of the resulting parameter values that go into simulation.  
    

Presentation 

For your class presentation show simulations from your subscripted model where you have changed a couple of ‘Normalized Estimated Parameters’ to vary between the units of analysis, for example the equation: y[Firms,p1]=0.5+Firms/Elmcount(Firms)*0.1 will make (normalized) element p1 of ‘Params’ to vary between 0.5 and 0.6 for different firms, leading to distinct simulation trajectories across different firms.