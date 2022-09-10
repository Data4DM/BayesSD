function controller(noReplicate);

i = 1;
noVar=3;

result=zeros(noReplicate, noVar+3);

while i < noReplicate+1
    tic
    [a,b,c,d,e,f]=optimizer;
    
    result(i,:)=[i, a, b, toc];
    i = i+1;
end

save experiment10b result;


