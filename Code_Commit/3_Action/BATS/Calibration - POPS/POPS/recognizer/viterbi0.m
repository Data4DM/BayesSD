function [lkd,optseq]=viterbi0(p,A,m,V,S)
% viterbi0(p,A,m,V,S) calculates the state-optimized likelihood 
%	function and the optimal state sequence for an HMM where,
%    	p : the initial probability vector (column)
%	A : state transition matrix (nxn)
% 	m : [ m1 m2 .. mn], mi are the mean vectors of n states
%	V : [V1 V2 .. Vn] with Vi as the covariance matrices
%	S : matrix of input sequence observation vectors (column)
% Returns [ p*, q1, q2, ..., qt ]

[N N]=size(A);
[rS T]=size(S);

%********* DENSITY FUNCTION VALUES *********************************
for i=1:N				% for all states
     C=V(:,((i-1)*rS+1:i*rS));
     cons=1/((2*pi)^rS*(det(C)^0.5));
     for j=1:T				% and for each obs.vector
        omm=S(:,j)-m(:,i);
        b(i,j)=cons*exp(-.5*omm'*inv(C)*omm); 	% calculate density
     end					% function values
end
%********* LOGARITHMIC CONVERSION **********************************
p=logl(p);
A=logl(A);
b=logl(b);
%********* VITERBI ALGORITHM : INITIALIZATION **********************
d(1,:)=p'+b(:,1)';
psi=zeros(1,N);
%********* RECURSIVE COMPUTATION ***********************************
for t=2:T
  for j=1:N
     dd=(d(t-1,:)+A(:,j)'+b(j,t));
     d(t,j)=max(dd);
     argmax=find(dd==max(dd));
     psi(t,j)=argmax(1,1);
  end
end
%********* TERMINATION *********************************************
lkd=max(d(T,:));
qt=find(d(T,:)==lkd);
optseq(T)=qt(1,1);
for t=T-1:-1:1
   optseq(t)=psi(t+1,optseq(t+1));
end