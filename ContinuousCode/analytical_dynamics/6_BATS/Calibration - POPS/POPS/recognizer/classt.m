function table=classt(y,fname,table)
% CLASST (Y,FNAME,TABLE)
% Forms likelihood table for vector Y according to the 
% HMM definitions stored in file FNAME.DAT in the current directory
% Input is the partly filled likelihood table TABLE.
%
% Calls NRMLZ, VITERBI, PFIT1
		
file=setstr([real(fname) real('.dat')]);
fid=fopen(file,'r');					% Open Model file

							% Read training parameters
type=fread(fid,1,'int');
key=fread(fid,1,'int');
t=fread(fid,1,'int');
n=fread(fid,1,'int');
nclass=fread(fid,1,'int');
source=fread(fid,[1 nclass],'int');

							% *** Normalizations ***
ly=length(y);

YN(1,:)=nrmlz(y);					% 1 : min-max
YN(2,:)=1.0-nrmlz(y);					% 2 : max-min (mirror)
[YOSC,oscslp]=osprep(y);
YN([3 4],:)=YOSC;					% 3-4 : autocorrelation function based

%   Normalization vector 
% id: 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25...
nv = [ 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  3  4  4];
mr = [ 0  0  4  0 14 15 16 17 18 19 20 21 22  0  0  0  0  0  0  0  0  0  0  0  0];

							% *** MAIN LOOP ***
i=fread(fid,1,'int');					

while feof(fid)==0  
   p=fread(fid,[n 1],'double');				% Read class parameters
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
   if type==1
     [lkdin,optseq]=viterbi(p,A,m,V,feat(YN(nv(i),:),t));   % evaluate likelihoods
   else
     [lkdin,optseq]=viterbi0(p,A,m,V,feat(YN(nv(i),:),t));   
   end
  
   table(i)=(lkdin-mean(lkd))/std(lkd);
   
							% ***** MIRRORS *****
   mir=mr(i);
   if mir~=0
	if type==1
     		[lkdin,optseq]=viterbi(p,A,m,V,feat(YN(2,:),t));   
   	else
   		[lkdin,optseq]=viterbi0(p,A,m,V,feat(YN(2,:),t));   
  	end
        table(mir)=(lkdin-mean(lkd))/std(lkd);
   end
							% *** OSCILLATORY PATTERNS ***
%    if i==23
% 	if type==1
%      		[lkdin,optseq]=viterbi(p,A,m,V,feat(YN(4,:),t));   
%    	else
%    		[lkdin,optseq]=viterbi0(p,A,m,V,feat(YN(4,:),t));   
%   	end
% 	if oscslp>0.2
%              table(24)=(lkdin-mean(lkd))/std(lkd);
%         elseif oscslp<0.2
% 	     table(25)=(lkdin-mean(lkd))/std(lkd);
% 	end	
%    end	
   if i==23
	if type==1
     		[lkdin,optseq]=viterbi(p,A,m,V,feat(YN(4,:),t));   
   	else
   		[lkdin,optseq]=viterbi0(p,A,m,V,feat(YN(4,:),t));   
  	end
	if oscslp>0.2
             table(24)=(lkdin-mean(lkd))/std(lkd);
        elseif oscslp<0.2
	     table(25)=(lkdin-mean(lkd))/std(lkd);
	end	
   end	
   i=fread(fid,1,'int');					% Proceed with next class
   
end
fclose(fid);