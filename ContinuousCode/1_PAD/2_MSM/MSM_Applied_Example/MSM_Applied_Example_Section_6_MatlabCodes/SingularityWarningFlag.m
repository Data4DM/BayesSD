function FLAG=SingularityWarningFlag()

[~, WARNING] = lastwarn;
if strcmp(WARNING,'MATLAB:singularMatrix') || strcmp(WARNING,'MATLAB:nearlySingularMatrix')
    FLAG=1;
    delete WARNING;
else
    FLAG=0;
end

end