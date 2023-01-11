function y=id(arg)
% ID(ARG)
% For string input returns the id number of class named ARG
% For integer input returns the name of the class for that id.
% ID(0) returns the number of classes defined

IDS=['zero0';'const';'plinr';'nlinr';'nexgr';'sshgr';'pexgr'	
    'gr1da';'gr1db';'gr2da';'gr2db';'d1peg';'d2peg'
    'nexdc';'sshdc';'pexdc';'d1gra';'d1grb';'d2gra';'d2grb'
    'g1ped';'g2ped';'oscct';'oscgr';'oscdc'];

[ri ci]=size(IDS);
if isstr(arg)==1
   if size(abs(arg))==[1 5]
      for i=1:ri
         if IDS(i,:)==arg
	    y=i;
         end
      end
   end
else
   if arg==0
      y=ri;
   else
      y=IDS(arg,:);
   end
end