This directory contains the program that takes the model prediction errors
(in the file errorfile.err) and converts them to weights by prepending the 
words "weight for " to the variables names in the error file. The resulting 
weights are then written to the specified .cin file. The weights are computed
as 1/std deviation of the 1 step errors.

Normally this program is put in the same directory as a model (along with a 
.bat file) and a command link is added to the model to cause the program to 
be run against calibrate_1step.err putting the weights in PayoffWeight.cin

The program is written in C and consists of a single file (Err2Weight.c). 
The other files in this directory are part of the project to create the 
executable Err2Weight.exe that is contained in the release subfolder. 

The supporting files are for Microsoft Visual C version 6.0 but can probably
be opened and converted to more recent Microsoft C compiler configurations.

Copies of the executable appear in a number of directories with the models
and a batch file (called err2weight.bat) that allows automated execution
from the model.
