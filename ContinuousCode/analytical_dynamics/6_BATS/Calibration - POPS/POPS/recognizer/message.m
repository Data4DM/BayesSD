function mes=message(decision,expl)

% MESSAGE(DECISION,EXPL) returns a message string depending
% on the parameters of DECISION and EXPL.

if decision==1
	%mes='INCONCLUSIVE';
elseif decision ==2
	%mes='PASSED';
elseif decision ==3
	%mes='SIM. FURTHER';
elseif decision ==0
	%mes='FAILED';
end

if expl==1
	mes=setstr([real(mes) real(' due to nonzero slope')]);
elseif expl==2
	mes=setstr([real(mes) real(' due to nonzero equilibrium')]);
elseif expl==3
	mes=setstr([real(mes) real(' due to zero equilibrium')]);
elseif expl==4
	mes=setstr([real(mes) real(' one of its precedents found')]);
end