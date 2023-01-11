function y=monitr(file,var,id)
% MONITR(FILE,VAR,ID)
% 	Monitors the training output file FILE.dat existing in 
% 	the directory TRAINED.
% 	VAR is the requested variable name which is one of the following:
% 	't','n','key','nclass','source' (ID can be omitted)
% 	'p','A','m','V','lkd','st' (ID is necessary)


% **** OPEN FILE IN 'TRAINED' DIRECTORY *******************************
 dir = 'trained\';

trfile=setstr([dir real(file) real('.dat')]);
fid=fopen(trfile,'r');
% *********************************************************************
type=fread(fid,1,'int');
key=fread(fid,1,'int');
t=fread(fid,1,'int');
n=fread(fid,1,'int');
nclass=fread(fid,1,'int');
source=fread(fid,[1 nclass],'int');

if nargin==2
	eval(setstr([real('y=') real(var) real(';')]));
else

    i=fread(fid,1,'int');
    while feof(fid)==0
    	p=fread(fid,[n 1],'double');
 	if type==1
   	    A=fread(fid,[n n*(t-1)],'double');
	else
	    A=fread(fid,[n n],'double');
	end
   	m=fread(fid,[3 n],'double');
   	V=fread(fid,[3 3*n],'double');
   	samsz=fread(fid,1,'int');
   	lkd=fread(fid,[1 samsz],'double');
   	st=fread(fid,[samsz t],'float');
%	st=order(st',t);
   	if(i==id)
	    eval(setstr([real('y=') real(var) real(';')]));
   	end
   	i=fread(fid,1,'int');
    end
end
fclose(fid);





