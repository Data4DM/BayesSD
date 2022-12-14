function [lkd,optseq]=viterbi(p,A,m,V,S)
% [lkd,optseq]=viterbi(p,A,m,V,S) calculates the state-optimized 
%       likelihood function and the optimal state sequence for a
%	nonstationary HMM model.
%	INPUTS :
%    	p : the initial probability vector (column)
%	A : [A1 A2 ... A(t-1)] (n*t n), 
%	    Ai as the state transition matrix from segment i to i+1
% 	m : [m1 m2 .. mn], mi is the mean vector of state i
%	V : [V1 V2 .. Vn], Vi as the covariance matrix of the vectors for state i
%	S : matrix of input sequence of observation vectors (column)
%	OUTPUTS :
%	lkd : state optimized likelihood function
%	optseq : optimal state sequence, [q1 q2 ... qt] 
%	where,
%	n=number of states,
%	t=number of segments.
%
%	Calls LOGL.
[N nt1]=size(A);
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
     dd=(d(t-1,:)+A(:,j+(t-2)*N)'+b(j,t));
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