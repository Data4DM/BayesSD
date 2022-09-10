function train(t,n,type,source,file,key,fileref)
% TRAIN(T,N,TYPE,SOURCE,FILE,KEY,REFERENCE)
% 	Trains Hidden Markov Models using N states dividing each
% 	sample signal into T segments. 
%	TYPE is 0 for stationary model and 1 for nonstationary model.
%	Any other special characteristic originating from feature extraction to 
%	training algorithm is represented by the integer KEY.
% 	The sample sets are read from the directory C:\MATLAB\THESIS\SAMPLES 
% 	with the version numbers represented by the vector SOURCE. 
% 	Training results for all classes are written to FILE.dat under
% 	C:\MATLAB\THESIS\HMM\TRAINED
%	A summary file FILE.sum is created in the same directory.
%	To reduce training time a present trained data file REFERENCE.dat
%	can be specified if trained with the same parameters and the same KEY.
%
%	Calls FEAT, HMMTR, MONITR, CTSTR, ID


%***** Open Output Files **********************************************************************
dirout=real('trained\');			% Output directory	
opf=fopen(setstr([dirout real(file) real('.dat')]),'w');	% Open training output file
inf=fopen(setstr([dirout real(file) real('.sum')]),'w');	% Open training info file

%***** Write Model and Training Parameters ****************************************************
fprintf(inf,'%s\n\n','            ***** HMM TRAINING REPORT *****'); 
fwrite(opf,type,'int');
model(1,:)=real('   STATIONARY');model(2,:)=real('NONSTATIONARY');
fprintf(inf,'%22s %s\n','MODEL TYPE          : ',setstr(model(type+1,:)));
fwrite(opf,key,'int');					% Write KEY
fprintf(inf,'%s\n',sprintf('KEY FOR TRAINING    :  %2i',key));
fwrite(opf,t,'int');					% Write number of segments
fprintf(inf,'%s\n',sprintf('NUMBER OF SEGMENTS  :  %2i',t));
fwrite(opf,n,'int');					% Write number of states
fprintf(inf,'%s\n',sprintf('NUMBER OF STATES    :  %2i',n));
nclass=length(source);
fwrite(opf,nclass,'int');				% Write length of source
fwrite(opf,source,'int');				% Write source array

%*****  Determine Available Results ***********************************************************
prevtr=zeros(size(source));				% Initialize 'previously trained' array
if nargin==7						% If a reference file is given,
    fprintf(inf,'%s\n\n',sprintf('REFERENCE FILE      :  %12s',fileref));
    
    k=monitr(fileref,'key');
    nn=monitr(fileref,'n');
    tt=monitr(fileref,'t');
    refsource=monitr(fileref,'source');
    
    if ((k==key)&(t==tt)&(n==nn))			
        ms=min(size(refsource),size(source));
        sc=source(1:ms(2));rsc=refsource(1:ms(2));
        iptr=find((sc==rsc)&(sc~=0));
        prevtr(iptr)=ones(size(iptr));		% Mark classes already trained
    end	
else
    
    fprintf(inf,'%s\n\n','REFERENCE FILE      :      NONE');
end

% **************  MAIN LOOP  ******************************************************************
fprintf(inf,'%4s %6s %10s %12s\n','ID  ','CLASS','VERSION','STATUS'); 
fprintf(inf,'%4s %6s %10s %12s\n','----','-----','-------','------'); 

for i=1:nclass						% For each class in source array,
    flag=0;
    if(prevtr(i)==1)					% If available in reference file
        % get it
        p=monitr(fileref,'p',i);A=monitr(fileref,'A',i);
        m=monitr(fileref,'m',i);V=monitr(fileref,'V',i);
        lkd=monitr(fileref,'lkd',i);st=monitr(fileref,'st',i);
        flag=1;
        s=size(st);
        fprintf(inf,'%3i %7s %10i %12s\n',i,id(i),source(i),'inherited'); %NEW
    else							% otherwise,
        file=setstr(['samples\' real(id(i)) real('-') ctstr(source(i)) real('.txt')]);
        fr=fopen(file,'r');				% open sample file with version no.c
        if fr~=-1;					% If file is opened successfully,
            % 	  s=fread(fr,[1 2],'int');			% read size of matrix
            % 	  X=fread(fr,[s(1) s(2)],'float');		% read matrix of samples
            X = dlmread(file,'\t');	
            s = size(X);
            fclose(fr);
            fprintf('%s\n',file)
            [p,A,m,V,st,lkd]=hmmtr(feat(X,t),t,n,type); 	% Train with data
            flag=1;
            fprintf(inf,'%3i %7s %10i %12s\n',i,id(i),source(i),'trained'); %NEW
        end
    end
    if flag==1;						% If results obtained either way
        fwrite(opf,i,'int');				% Write id no for class
        fwrite(opf,p,'double');				% Write p,A,m,V,m,lkd,st
        fwrite(opf,A,'double');
        fwrite(opf,m,'double');
        fwrite(opf,V,'double');
        fwrite(opf,s(1),'int');
        fwrite(opf,lkd,'double');
        fwrite(opf,st,'float');
    end
end
fclose(opf);
fclose(inf);