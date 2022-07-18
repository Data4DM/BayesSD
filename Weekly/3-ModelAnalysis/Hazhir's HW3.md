15.879 Bringing Data into Dynamic Models, Fall 2022 

Assignment 3: Creating an Automated Analysis Workflow1 

Due: 9/30/2022 

The goal of this exercise is to set up a platform so that you can automate your simulation analyses in future. This is an extremely important practical step towards doing extensive analyses that are sophisticated and replicable. Even if you are doing a rather simple modeling project, building it using an automated workflow enables you to generate all your results with a single click which gives you major advantages down the road: you will iterate much faster over your full analysis when you make any changes in your core model (rest assured, you will need to redo your full analysis a dozen times for any publication); you will avoid mistakes in various steps of the process; you can do A LOT more analysis than feasible by hand; you can leverage various parallel processing resources to scale your analysis; you can utilize the universe of analytical tools outside of Vensim; and you can provide clean, replicable documentation of your research for others to inspect and build on. In short, if you want to do serious research using dynamic models, the investment in building your automation platform pays back for itself in many folds. 

There are three approaches to doing this: 1) Conducting simulations in a general programming language; 2) Connecting Vensim with a general programming language in a dynamic fashion, so that Vensim is controlled with the programming language; 3) Connecting Vensim with a general programming language in a static fashion using Vensim’s command scripts. These options have different pros and cons. The first one gives you much additional flexibility in using tools outside of Vensim for your work. The second gives you faster speed and direct access to Vensim’s capabilities with somewhat similar levels of flexibility to the first one, but will not accommodate analytical tools that need to have a view into the details of how simulation is done (e.g. for automated differentiation). Since some of the tools we will introduce require such visibility (notably, Hamiltonian Monte Carlo), you need to implement option 1 anyway. The third option is the easiest to implement with a reasonable level of flexibility, but does not allow you to speedily move between Vensim and other tools, thus rendering some functionalities less efficient (e.g. if you want to utilize optimization algorithms outside of Vensim). Learning costs for the second and third option are very similar though there may be more bug fixing needs with the second (DLL connections with Vensim are not always easy).  

1.  Based on the considerations above, you need to learn/implment both method 1 and one of the methods 2 or 3.  
    

Method 1) Native simulation in a general language: 

To use this approach your best bet is to use PySD, an open source project led by James Houghton and others which translates Vensim models into Python and enables you to run those models as part of your python code. You will need to install Python on your machine and follow the instructions in the PySD documentation: [http://pysd.readthedocs.io/en/master/](http://pysd.readthedocs.io/en/master/)  

Once a model is in Python, you essentially have unlimited resources for various analyses using Python’s libraries. The downsides to this method are: 1) Vensim (specially when compiled) is very efficient for simulations, so for computationally intensive projects this method may be at a disadvantage. 2) The translation from Vensim to Python does not cover all Vensim functions (e.g. Find Zero and Allocate By Priority are not included). 3) Vensim has some additional capabilities (most notably built in Kalman filtering and MCMC) which would require some coding to be implemented in Python. 

Method 2) Using Vensim DLL: 

Vensim DLL is a library of Vensim commands which, along with a vensim simulation engine, can be added to major programing languages allowing you to control Vensim through those languages. You may choose any compatible language, but in this course we want to use Python as the primary language (I also have examples in Matlab). A few notes if you choose this approach: 

-   Vensim DLL works within windows. If you want to run it on a Mac machine, you need to use emulators, and I don’t know how complicated that could be. 
    
-   Your general language of choice and your Vensim implementation should be using the same bit version (32 or 64 bit installation).  
    
-   Before reading a vensim model using DLL, you need to publish the model so that it is in the vpm format. 
    
-   Vensim help provides some details under Reference Manual>Dss Supplement>Vensim Dll, however the instructions are not specific to Python, and therefore you will need to figure out how Vensim library is called there, and how commands are passed into Vensim from the language and results are received. The best way to do this is to look at existing examples. Vensim installation comes with a few such examples (typically in C:\Users\Public\Vensim\DLL). There are various additional resources for other languages, including (but not limited to): 
    

-   Venpy project: [https://github.com/pbreach/venpy](https://github.com/pbreach/venpy) This project provides simplified functions that use Vensim DLL connection with python and require less code writing on your side to make the connections with Vensim. Even if you do not use these functions, you will benefit from inspecting the code to learn how you can connect Vensim with Python through DLL functionality. 
    
-   EMA workbench: [http://simulation.tbm.tudelft.nl/ema-workbench/contents.html](http://simulation.tbm.tudelft.nl/ema-workbench/contents.html) and [https://github.com/quaquel/EMAworkbench](https://github.com/quaquel/EMAworkbench) offers another tool with capability to build on Vensim-Python Dll connection and providing additional functions for easier simulation and data analysis. We will not use the full functionality of EMAworkbench, but the connector to vensim could be useful. 
    
-   Along with this exercise I am providing some example files for Matlab connections which I have used (also there is a simple connection in Vensim installation folder above). These files together conduct multiple analyses for a paper I worked on a while ago. You should start with genServiceAnal_V5.m and trace any function calls as needed. A lot of the complexity of files is due to the graphing work, but the simpler functions will give you a good template for conducting simulations and optimizations in Vensim using DLL.  
    

Once you have created the platform, make sure you conduct a simple simulation, export data, and build a graph on your model to ensure you know the most important actions. 

Method 3) Using a general programming language to write scripts and call Vensim to run them 

This approach (similar to Method 2) builds on Vensim’s scripting language. Essentially, anything you can do in Vensim using the graphical user interface (GUI), can also be done using Vensim’s “command scripts”. Command scripts allow you to write simple pieces of code that Vensim can execute from beginning to the end (for example, open model XYZ, then conduct an optimization on that, then export the results to a tab file, and close the model). In fact the commands give you some additional options not easily available through GUI. See Vensim’s “Reference Manual>DSS Supplement>Command Scripts” for details. You could write those commands (as a text file with “.cmd” file type) in Vensim text editor, notepad, or any other text editing program. You could also use a general programming language to generate any commands you want, and then “call” vensim from inside that program to execute a specific set of commands. This is the basic idea for method 3. 

It would be simpler if you first experiment with command scripts writing some simple “.cmd” files to get Vensim to do some simple simulations (you can use command script examples from Vensim help). Within Vensim you can open the .cmd file, then go to File menu and “Run Commands”. This will give you the basic intuition for how commands work. You can then switch to using Python to build your desired command files, potentially going back and forth between Python and Vensim to generate commands, execute them, use the results (e.g. the .out or .tab files from optimization and simulations) to conduct additional analysis, and based on the results generate and execute follow up commands in Vensim. Using such iterations, you can automate complex and lengthy simulation projects into a replicable code that runs with a single click. Curtsey of Dr. TY Lim, you can find with this exercise some example code in Python for generating Vensim commands, and calling Vensim to execute those commands. 

Presentation 

For your class presentation share some basic results from using your two different automated analysis workflows, as well as practical issues you might have faced which may benefit from group feedback.