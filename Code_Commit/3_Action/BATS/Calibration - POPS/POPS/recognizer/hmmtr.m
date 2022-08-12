function [p,A,m,V,states,lkd]=hmmtr(X,t,n,type)
%HMMTR	Hidden Markov Model Training.
%       [p,A,m,V,st,lkd]=HMMTR(X,t,n,type)
% 	finds nonstationary Hidden Markov Model parameters.
%	INPUTS :      
%	X: matrix whose columns are the observation vectors 
% 	t: number of observation vectors for each training sample
% 	n: number of states
%	type : 0 for stationary, 1 for nonstationary
%	OUTPUTS :
%	p: Initial probability vector
% 	A: State transition matrix
%	m: state means (as columns)
%	V: covariance matrices (side-by-side) within states
%	st: state sequence matrix (no of samples by t)
%	lkd: state optimized likelihood function vector (1 x no of samples)
%
%	Calls CLUST, VITERBI.

[rx cx]=size(X);
nseq=cx/t;
m=zeros(rx,n);         		% Initialize means
states=clust(X,n,t);  		% Set initial states by clustering


newstates=zeros(size(states));	% Reset new states
iteration = 1;

%************** MAIN LOOP *********************************************
flag=0;
while flag==0
%********* MEAN & COVARIANCE MATRICES *********************************
  V=zeros(rx,rx*n);		% Reset covariance matrices
  for i=1:n			% For all states
     si=find(states==i); 	% find vectors assigned to that class
     [rsi csi]=size(si);
     if csi==1			% calculate state mean 
        m(:,i)=X(:,si);	
     else
        m(:,i)=mean(X(:,si)')';
     end 
     C=cov(X(:,si)');		% calculate state covariance matrix
     V(:,(rx*(i-1)+1:rx*i))=C;
  end
 m;
 V;
%********* INITIAL PROBABILITIES **************************************
  p=zeros([n 1]);		 	% Reset initial probabilities
  for i=1:t:cx				% For all "first" vectors
     p(states(i))=p(states(i))+1;	% count occurances
  end
  p=p/nseq;				% evaluate probability estimate

 p;
% ******* STATE TRANSITION MATRIX *************************************
  if type==0

  A=zeros(n,n);			% Reset state transition matrix
  count=zeros(1,n);
  for i=1:nseq			% For each sequence
    for j=1:t-1			% and for elements except the last one
      k=(i-1)*t+j;		
      s1=states(k);			% get its state
      s2=states(k+1);		% and its following state
      A(s1,s2)=A(s1,s2)+1;  	% increase number of transition by 1
      count(s1)=count(s1)+1;	% increase transition from state by 1
    end
  end

%**********************************************************************
%*** WARNING !!! ******************************************************
%*** THIS IS A TEMPORARY SOLUTION TO DEGENERATION OF MATRIX A *********
  count=count+(count==0);
%**********************************************************************
  for i=1:n
    A(i,:)=A(i,:)/(count(i));   % divide instances by tr.form state
  end

else 

A=zeros(n,n*(t-1));			% Reset state transition matrix
  count=zeros(n,t-1);
  for i=1:nseq			% For each sequence
    for j=1:t-1			% and for elements except the last one
      k=(i-1)*t+j;		
      s1=states(k);			% get its state
      s2=states(k+1);		% and its following state
      A(s1,s2+n*(j-1))=A(s1,s2+n*(j-1))+1;  	% increase number of transition by 1
      count(s1,j)=count(s1,j)+1;	% increase transition from state by 1
    end
  end
%**********************************************************************
%*** WARNING !!! ******************************************************
%*** THIS IS A TEMPORARY SOLUTION TO DEGENERATION OF MATRIX A *********
  count=count+(count==0);
%**********************************************************************
  for i=1:n
     for j=1:t-1
        for k=1:n
  	  A(i,(j-1)*n+k)=A(i,(j-1)*n+k)/count(i,j);   % divide instances by tr.form state
        end
     end
  end

end
 A;

%***** NEW STATE ASSIGNMENTS ******************************************

  for seq=1:nseq			% For each sequence		
     seqc=((seq-1)*t+1:seq*t);
     S=X(:,seqc);
     if type==0
	[lkd(seq) newstates(seqc)]=viterbi0(p,A,m,V,S);	% Find new states
     else
        [lkd(seq) newstates(seqc)]=viterbi(p,A,m,V,S);	% Find new states
     end
  end					% using viterbi algorithm


 lkd;

%******* CHECK FOR CONVERGENCE **************************************** 
%  find(states~=newstates)
  if states==newstates
     flag=1;
  else 
    states=newstates;

 % order(states,t)

    iteration = iteration + 1;
  end
end
states=order(states,t);
