function c=clust(A,n,T)
%CLUST	Cluster.
% 	CLUST(A,n,T) clusters vectors given as the columns of A into
% 	n clusters using the "C-means Algorithm"

[rA cA]=size(A);
inter=(T-1)/(n-1);
centr(1)=1;
for j=2:n
	centr(j)=fix(1+inter*(j-1));
end
for i=1:n
     cen=(centr(i):T:cA); 
     m(:,i)=mean(A(:,cen)')';
end


cc=ones(size((1:cA)));			% initial class numbers
flag=0;
% ASSIGN TO CLASSES BASED ON EUCLIDEAN DISTANCE
while flag==0
  for i=1:cA    		% for each vector to be clustered
    dmin=1.0E10;
    for j=1:n				% and for each class mean
      dist=sum((A(:,i)-m(:,j)).^2); 	% compute distance
      if dist<dmin
         dmin=dist;
         c(i)=j;		% assign to the nearest class
      end
    end
  end
% CALCULATE NEW CLASS MEANS   
  for j=1:n			% for each class
    index=find(c==j);
    B=A(:,index);		% find vectors assigned to it
    [rB cB]=size(B);
    if cB==1			% calculate new means
       m(:,j)=B; 	
    else
       m(:,j)=mean(B')';
    end
  end
% CHECK IF ASSIGNMENT HAS CHANGED
  if c==cc  
     flag=1;
  end
  cc=c;		% update current class assignments
end
   