(* ::Package:: *)

(* ::Title:: *)
(*FeedbackLoops package Feedbackloops.m*)


(* ::Subtitle:: *)
(*Version 8-0-1b beta*)


(* ::Text:: *)
(*Version numbering:  Version xx-yy-zz: xx = major version of mathematica it is compatible with.  yy = major version of the package (new functionalities).  zz = minor version upgrades.  b = beta version.*)


(* ::Text:: *)
(*Version history: 8-0-1b: *)
(*2012-11-13: CEK: Copied routines from older versions into this new package, including both the SILS routines and the ILS routine.  In a way starting from scratch.  Note that it is not constructed to be compatible with earlier Mathematica versions, though we could perhaps make it so.  It uses the Combinatorica package for version 8.  Also included a test file showing test of ILS routine.*)


(* ::Text:: *)
(*CEK 2012-11-13: Package file should be placed in the appropriate directory so that Mathematica will recognize it.  On my windows machine it is C:\Users\cek.ino\AppData\Roaming\Mathematica\Applications.  The specifics will very depending upon system and user.  Alternatively, you can set your working directory to a particular place where you are working on the package and then load it using the << command (see the test file).*)


(* ::Subsection::Closed:: *)
(*Front matter*)


Shor


BeginPackage["FeedbackLoops`"]


(* ::Subsection:: *)
(*Help on the functions*)


FBBinaryQ::usage="FBBinaryQ[x] tests if x belongs to the binary field {0,1}."
FBShortestPath::usage = "FBShortestPath[a, start, end] finds a shortest path between vertices start and end in the graph represented by the adjacency list a"
FBAdjMatrixQ::usage="FBAdjMatrixQ[m] tests if m is an adjacency matrix."
FBToEdgeList::usage="FBToEdgeList[m] constructs a list of pairs {x,y} of the edges from the adjacency matrix m."
FBAdjacencyMatrix::usage="FBAdjacencyMatrix[e] constructs the adjacency matrix from the list e of edges {x,y}.  FBToEdgeList[c] or FBToEdgeList[{c1,c2,...}] converts the cycle c (or cycles c1,c2,...) to edge list(s)."
FBToAdjacencyLists::usage="FBToAdjacencyLists[m] constructs an adjacency list representation of the adjacency matrix m."
FBFromAdjacencyLists::usage="FBFromAdjacencyLists[a] constructs the adjacency matrix from the adjacency list a."
FBStrongComponents::usage="FBStrongComponents[m] returns the strongly connected components of the graph with adjacency matrix m."
FBConnectedQ::usage="FBConnectedQ[m] tests whether the adjacency matrix m is strongly connected."
FBDirectedCycles::usage="FBDirectedCycles[m] produces a list of all directed cycles (as a vertex list {x,y,z,..}) in the graph with adjacency matrix m."
FBCycleMatrix::usage="FBCycleMatrix[c,e] returns a (0,1) matrix where the (i,j)th element is 1 if cycle i in the cycle list c contains edge j in the edge list e."
FBIncidenceMatrix::usage="FBIncidenceMatrix[m] produces the (0,1,-1) incidence matrix where the (i,j)th element is 1 if edge j originates in node i, -1 if it ends in node i, and 0 otherwise."
FBRank::usage="FBRank[A] finds the rank of the matrix A."
FBRemoveDependentRows::usage="FBRemoveDependentRows[A] finds FBRank[A] linearly independent rows of A."
FBRemoveDependentColumns::usage="FBRemoveDependentColumns[A] finds FBRank[A] linearly independent columns of A."
FBKernel::usage="FBKernel[A] returns a non-singular FBRank[A]-square submatrix of A."
FBBRowReduce::usage="FBBRowReduce[A] gives the row-reduced form of the binary-field matrix A."
FBBDet::usage="FBBDet[A] returns the determinant of the binary-field square matrix A."
FBBNullSpace::usage="FBBNullSpace[A] returns the null space of the binary-field matrix A."
FBBDot::usage="FBBDot[a,b] gives the product of the binary-field vectors or matrices a,b."
FBCycleGain::usage="FBCycleGain[c,A] returns the gain of the cycle c based on the system matrix A.  The empty cycle {} by definitino has gain 1.  FBCycleGain[{c1,c2,...},A] returns a list of gains for each cycle c1,c2,..."
FBCompactPrint::usage="FBCompactPrint[A] prints the matrix A with no spacing between elements."
FBSILS::usage="FBSILS[m] returns the Shortest Independent Loop Set (SILS) found by the SILS algorithm by R. Oliva" 
FBGeodeticCycles::usage="FBGeodeticCycles[m] produces a list of all geodetic directed cycles (as vertex lists {x,y,z,..}) in the graph with adjacency matrix m."
FBIndependentLoopSet::usage="FBIndependentLoopSet[g] returns a set of independent loops for the graph with edgelist e, using the algorithm developed by Kampmann 1996/2012.  Returns a list 
	{{\!\(\*SubscriptBox[\(l\), \(1\)]\), ..., \!\(\*SubscriptBox[\(l\), \(k\)]\)},{\!\(\*SubscriptBox[\(e\), \(1\)]\), ..., \!\(\*SubscriptBox[\(e\), \(k\)]\)}}, where \!\(\*SubscriptBox[\(l\), \(i\)]\) is the node sequence of loop i and \!\(\*SubscriptBox[\(e\), \(i\)]\) is the edge that was used to first construct that loop. (The edges \!\(\*SubscriptBox[\(e\), \(1\)]\), ..., \!\(\*SubscriptBox[\(e\), \(k\)]\) 
	can be used to calculate the loop elasticies from the edge elasticites by backward substitution.)";
	(* CEK: There may be an issue here whether one can properly distinguish edge lists and adjacency
	lists.  Thus, I have chosen to make it a requirement that the function be given the edge list.
  It is easy to extend it to also take an adjacency matrix or an adjacency list as input. *)


(* ::Subsection:: *)
(*Start of package*)


Begin["Private`"]


(* ::Subsubsection::Closed:: *)
(*Utility routines to determine structure of matrix and vectors*)


FBBinaryQ[x_]:=MatchQ[x,0|1]
FBAdjMatrixQ[m_]:=MatchQ[Dimensions[m],{d_,d_}]&&MatrixQ[m,FBBinaryQ]
FBEdgeListQ[e_]:=MatrixQ[e,(IntegerQ[#]&&Positive[#])&]&&Length[e[[1]]]==2
FBCycleQ[c_]:=VectorQ[c,(IntegerQ[#]&&Positive[#])&]
FBCycleQ[{}]:=True (*empty cycle*)
FBCycleListQ[c_]:=ListQ[c]&&Apply[And,Map[FBCycleQ,c]]


(* ::Subsubsection:: *)
(*Misc. functions from combinatorica.m (sometimes modified)*)


FBPermutationQ[p_List] := (Sort[p] == Range[Length[p]])


FBToCycles[p1_?FBPermutationQ] :=
	Module[{p=p1,m,n,cycle,i},
		Select[
			Table[
				m = n = p[[i]];
				cycle = {};
				While[ p[[n]] != 0,
					AppendTo[cycle,m=n];
					n = p[[n]];
					p[[m]] = 0 
				];
				cycle,
				{i,Length[p]}
			],
			(# =!= {})&
		]
	]


FBToEdgeList[A_?FBAdjMatrixQ] := Position[ A, _?(Function[n,n != 0]) ]
FBToEdgeList[c_?FBCycleQ] := Partition[Append[c,First[c]],2,1]
FBToEdgeList[c_?FBCycleListQ] := Map[FBToEdgeList,c]
FBAdjacencyMatrix[l_?FBEdgeListQ] := 
	Module[{n=Max[l]},
		MapAt[1&, Table[0,{n},{n}],l]
	]


FBToAdjacencyLists[A_] :=
	Map[ (Flatten[ Position[ #, _?(Function[n, n!=0])] ])&, A ]/;FBAdjMatrixQ[A]


FBFromAdjacencyLists[e_List] :=
	Module[{blanks = Table[0,{Length[e]}] },
		Map [ (MapAt[ 1&,blanks,Partition[#,1]])&, e ]
	]


FBStrongComponents[A_?FBAdjMatrixQ] :=
	Block[{e=FBToAdjacencyLists[A],s,c=1,i,cur={},low=dfs=Table[0,{Length[A]}],scc={}},
		While[(s=Select[Range[Length[A]],(dfs[[#]]==0)&]) != {},
			FBSearchStrongComp[First[s]];
		];
		scc
	]


FBSearchStrongComp[v_Integer] :=
	Block[{r},
		low[[v]]=dfs[[v]]=c++;
		PrependTo[cur,v];
		Scan[
			(If[dfs[[#]] == 0,
				FBSearchStrongComp[#];
				low[[v]]=Min[low[[v]],low[[#]]],
				If[(dfs[[#]] < dfs[[v]]) && MemberQ[cur,#],
					low[[v]]=Min[low[[v]],dfs[[#]] ]
				];
			])&,
			e[[v]]
		];
		If[low[[v]] == dfs[[v]],
			{r} = Flatten[Position[cur,v]];
			AppendTo[scc,Take[cur,r]];
			cur = Drop[cur,r];
		];
	]


FBConnectedQ[A_?FBAdjMatrixQ] := 
	Length[ FBStrongComponents[A] ] == 1


(* ::Subsubsection::Closed:: *)
(*Directed cycles, incidence vectors and matrices *)


FBDirectedCycles[m_?FBAdjMatrixQ]:=Block[{i,ll={},a=FBToAdjacencyLists[m]},For[i=1,i<=Length[m],a=Map[DeleteCases[#,_?(Function[n,n==i])]&,a];
i++,Map[FBFDC[{},a,i,#]&,a[[i]]]];
Sort[Map[FBCyclicSort,ll]]]
FBFDC[p_List,al_List,x0_Integer,x1_Integer]:=Block[{nn,pn},If[x0==x1,AppendTo[ll,Append[p,x0]],pn=Append[p,x1];
nn=Complement[al[[x1]],pn];
Map[FBFDC[pn,al,x0,#]&,nn]];]


FBCycleMatrix[c_?FBCycleListQ,e_?FBEdgeListQ]:=Block[{l=FBToEdgeList[c]},Map[Function[x,Map[If[FreeQ[x,#],0,1]&,e]],l]]


FBIncidenceMatrix[A_?FBAdjMatrixQ]:=Block[{n=Length[A]},Transpose[Map[(Join[Table[0,{First[#]-1}],{1},Table[0,{n-First[#]}]]-Join[Table[0,{Last[#]-1}],{1},Table[0,{n-Last[#]}]])&,
FBToEdgeList[A]
]
]
]


(* ::Subsubsection::Closed:: *)
(*Real-field linear algebra*)


FBRank[A_?MatrixQ]:=Module[{d=Dimensions[A]},If[d[[1]]<d[[2]],d[[1]]-Length[NullSpace[Transpose[A]]],d[[2]]-Length[NullSpace[A]]]]
FBRank[{}]=0;
FBRank[{{}}]=0;


FBRemoveDependentRows[A_?MatrixQ]:=Module[{r,m,i,ns,sacred,nr},nr=Length[A];
ns=NullSpace[Transpose[A]];
If[ns==={},Return[A]];
sacred=Flatten[Position[Map[(Count[#,_?(UnsameQ[#,0]&)]==1)&,Transpose[ns]],False]];
For[i=1;r={},i<=Length[ns],i++,For[j=1,j<=Length[ns[[i]]],j++,If[MemberQ[sacred,j]||MemberQ[r,j]||ns[[i,j]]===0,Continue[]];
AppendTo[r,j];Break[];]] For[i=1;m={},i<=nr,i++,If[FreeQ[r,i],AppendTo[m,A[[i]]]];];
m]


FBRemoveDependentColumns[A_?MatrixQ]:=Transpose[FBRemoveDependentRows[Transpose[A]]]


FBKernel[A_?MatrixQ]:=FBRemoveDependentColumns[FBRemoveDependentRows[A]]


(* ::Subsubsection::Closed:: *)
(*Binary-field linear algebra*)


SetAttributes[FBBTimes,{Flat,Orderless,OneIdentity,Listable}]
FBBTimes[1,1]:=1
FBBTimes[0,1]:=0
FBBTimes[0,0]:=0
FBBTimes[-1,x_]:=x


SetAttributes[FBPlus,{Flat,Orderless,OneIdentity,Listable}];
FBPlus[1,1]:=0;
FBPlus[0,1]:=1;
FBPlus[0,0]:=0;
FBPlus[-1,x_]:=FBPlus[1,x];


FBBDet[A_]:=Module[{i,B=Sort[A,(#1[[1]]>#2[[1]])&]},If[B[[1,1]]==0,Return[0]];
For[i=2,i<=Length[B],i++,If[B[[i,1]]!=0,B[[i]]=FBPlus[B[[i]],B[[1]]]];];
Return[FBBDet[Rest[Transpose[Rest[Transpose[B]]]]]];]/;MatrixQ[A,FBBinaryQ]&&Length[A]==Length[A[[1]]]
FBBDet[{{x_?FBBinaryQ}}]:=x


FBBNullSpace[A_]:=Module[{B,m,n,ol,al,ns,i,j,k,r},B=A/.{i_:>1/;i!=0};
m=Length[B];
n=Length[B[[1]]];
ol={};
al=Range[n];
For[r=1;i=1,r<=m&&i<=n,For[j=r,j<=m&&B[[j,i]]==0,j++];
If[j<=m,If[B[[r,i]]==0,B[[r]]=FBPlus[B[[r]],B[[j]]];];
For[k=1,k<=m,k++,If[k!=r&&B[[k,i]]!=0,B[[k]]=FBPlus[B[[k]],B[[r]]]]];
AppendTo[ol,i];
r++;];
i++;];
r=Length[ol];
al=Complement[al,ol];
If[r<m,B=Drop[B,{r+1,m}]];
For[i=1;ns=Table[0,{n-r},{n}],i<=(n-r),i++,ns[[i,al[[i]]]]=1;
For[j=1,j<=r,j++,ns[[i,ol[[j]]]]=B[[j,al[[i]]]]];];
ns]/;MatrixQ[A,FBBinaryQ]


FBBRank[A_]:=Module[{d=Dimensions[A]},If[d[[1]]<d[[2]],d[[1]]-Length[FBBNullSpace[Transpose[A]]],d[[2]]-Length[FBBNullSpace[A]]]]/;MatrixQ[A,FBBinaryQ]


FBBDot[A_,B_]:=Inner[FBBTimes,A,B,FBPlus]/;MatrixQ[A,FBBinaryQ]&&MatrixQ[B,FBBinaryQ]


FBBRowReduce[A_]:=Module[{B,m,n,i,j,k,r},B=A/.{i_:>1/;i!=0};
m=Length[B];
n=Length[B[[1]]];
For[r=1;i=1,r<=m&&i<=n,For[j=r,j<=m&&B[[j,i]]==0,j++];
If[j<=m,If[B[[r,i]]==0,B[[r]]=FBPlus[B[[r]],B[[j]]];];
For[k=1,k<=m,k++,If[k!=r&&B[[k,i]]!=0,B[[k]]=FBPlus[B[[k]],B[[r]]]]];
r++;];
i++;];
B]/;MatrixQ[A,FBBinaryQ]


(* ::Subsubsection::Closed:: *)
(*Misc. utility routines*)


FBCyclicSort[l_List]:=RotateLeft[l,First[First[Position[l,First[Sort[l]]]]]-1]
FBCyclicSort[{}]:={}


FBRemoveSelfLoops[m_?FBAdjMatrixQ]:=Table[If[i==j,0,m[[i,j]]],{i,Length[m]},{j,Length[m]}]
FBRemoveSelfLoops[e_?FBEdgeListQ]:=DeleteCases[e,{i_,i_}]


FBCycleGain[c_List,A_?MatrixQ]:=Module[{c2=Map[Reverse,Partition[Append[c,c[[1]]],2,1]]},Apply[Times,Map[Function[x,Apply[Part[A,#1,#2]&,x]],c2]]]/;FBCycleGain[{},_]:=1
FBCycleGain[c_?FBCycleListQ,A_?MatrixQ]:=Map[FBCycleGain[#,A]&,c]


FBCompactPrint[A_?MatrixQ]:=Scan[Print[StringJoin[Map[ToString,#]]]&,A]


(* ::Subsubsection:: *)
(*Shortest independent loop set (FBSILS)*)


BinSum[a_?FBAdjMatrixQ,b_?FBAdjMatrixQ]:=Map[Clip[#,{0,1}]&,Plus[a,b],{2}]
BinSub[a_?FBAdjMatrixQ,b_?FBAdjMatrixQ]:=Map[Clip[#,{0,1}]&,Plus[a,-b],{2}]
BinProd[a_?FBAdjMatrixQ,b_?FBAdjMatrixQ]:=Map[Clip[#,{0,1}]&,Dot[a,b],{2}]

VertexDistance[a_?FBAdjMatrixQ]:=
	Module[{A,G,p,s,i=2},
		A=a+IdentityMatrix[Length[a]];
		G=A-IdentityMatrix[Length[A]];
		p=A;
		s=BinProd[A,p];
		While[p=!=s,
			G=G+i*(s-p);
			p=s; i++;
			s=BinProd[A,p];
		];
		G
	] 

TrackVertex[u_?IntegerQ, v_?IntegerQ,dist_?MatrixQ]:=
	Module[{j, loop, rh, lh},
		loop={u};(*the u->v path; enter first element in loop list*)
		For [j=1,j<=(dist[[u,v]]-1), j++,(*for 1 to length(u->v)-1*)
			rh=Position[dist[[All,v]],dist[[u,v]]-j]; (*pred of v with step= length(u->v)-j*)
			lh=Position[dist[[Last[loop],All]],1];  (*succ of last element in loop with step=1*)
			AppendTo[loop,Intersection[rh,lh][[1]][[1]]]; (*Append to loop the first common element of rh&lh*)
		];
		AppendTo[loop,v]; (*the v->u path; append v*)
		For [j=1,j<=(dist[[v,u]]-1),j++, (*for 1 to length(v->u)-1*)
			rh=Position[dist[[All,u]],dist[[v,u]]-j]; (*pred of u with step=length(v->u)-j*)
			lh=Position[dist[[Last[loop],All]],1]; (*succ of last element in loop with step=1*)
			AppendTo[loop,Intersection[rh,lh][[1]][[1]]]; (*Append to loop the first common element of rh&lh*)
		];
		loop=RotateLeft[loop,Position[loop,Min[loop]][[1]][[1]]-1]; (*rotate loop to start w/ smallest node #*) 
		loop (*Return loop*)
	]

FBGeodeticCycles[A_?FBAdjMatrixQ]:=
	Module[{sc,index,d,L,loops={},i,j,k,pairs,loop},
		sc=FBStrongComponents[A]; (*identify strong components*)
		For[k=1,k<=Length[sc],k++,(*for each strong component*)
			If[Length[sc[[k]]]>1,(*if more than one element*)
				index=Sort[sc[[k]]]; (*index to extract sc from AdjM*) 
				d=VertexDistance[A[[index,index]]]; (*calculate distance among vertex*)
				L=Transpose[d*SparseArray[{i_,j_}/;i>=j->1,Dimensions[d]]]+
				            d*SparseArray[{i_,j_}/;i<=j->1,Dimensions[d]]; (*estimate loop length by adding both sides (u->v=v->u)*)
				For[i=2,i<=Max[L],i++,(*for all potential loop sizes*)
					pairs=Position[L,i];(*id pairs of terminal vertex of loops length i*)
					For[j=1,j<=Length[pairs],j++,(*for all pairs*)
						loop=TrackVertex[pairs[[j,1]],pairs[[j,2]],d];
						If[Length[loop]==Length[Union[loop]],(*If loop not figure 8*)
							loop=Map[Extract[index,#]&,loop,{1}];(*change back to index # s*)                         
							AppendTo[loops,loop];
						]; (*if*)
					]; (* next pair *)
				]; (* next loop size *)
			]; (* end if more than one element *)
		]; (* next strong component *)
		loops=Union[loops]; (*eliminate duplicate loops*)
		loops (* return loop set *)
	]

FBSILS[input_]:=
	Module[{a,B,Edges,LA,c, i,S={}},
		a=input;
		B=SparseArray[{},{Max[a],Max[a]}];(*create empty base AdjMat*)
		Edges=Map[Append[Partition[#,2,1],List[Last[#],First[#]]]&,a,{1}]; 
			(*Id the edges in each loop; each pair in ordered list a and append edge last->first*)
		LA=Map[SparseArray[#->Table[1,{Length[#]}],{Max[a],Max[a]}]&,Edges,{1}]; (*Create an AdjMat for each loop*)
		While[Dimensions[LA][[1]]>0,(*while loops*)
			c=Map[Total[BinSub[#,B],2]&,LA,{1}];(*calculate # of edges contributed to base by each loop*)
			(*drop loops that are not contributing*)
			LA=Delete[LA,Position[c,0]];
			a=Delete[a,Position[c,0]]; 
			c=Delete[c,Position[c,0]];
			If[Total[c]>0,(*if contributing loops*)
				i=Position[c,Min[c]][[1]][[1]]; (*id first loop with minimum contribution*)
				B=BinSum[B,LA[[i]]];(*add edges of selected loop to base*)
				AppendTo[S,a[[i]]];(*add loop list to FBSILS*)
				LA=Drop[LA,{i}];(*drop loop AdjMat and edge list*)
				a=Drop[a,{i}]; 
			];
		]; (*end while loops*)
		S (* return loop list s=FBSILS *)
	];



(* ::Subsubsection::Closed:: *)
(*Independent loop set*)


(* CEK: There may be an issue here whether one can properly distinguish edge lists and adjacency
lists.  Thus, I have chosen to make it a requirement that the function be given the edge list. It
is easy laster to allow for other input forms *)
FBIndependentLoopSet[el_?FBEdgeListQ]:=Block[
	{debug,s,t,nodeLoop,nodeUsed,arcLoop,arcUsed,arcReserved,arcFree,loopList, arcList},
	(* 0. Initialize *)
	debug=False;
	arcUsed={};
	nodeUsed={1};
	arcReserved=Cases[el,{1,_}]; (* All arcs going from the first node reserved*)
	loopList={};
	arcList={};
	arcFree=Complement[el,arcReserved];
	If[debug,Print["Start: arcReserved=",arcReserved]];
	If[debug,Print["       arcFree=",arcFree]];
	While[arcReserved!={},
	(* 1. Pick the next reserved arc s->t*)
	{s,t}=arcReserved[[1]];
	arcReserved=Drop[arcReserved,1];
	AppendTo[arcUsed,{s,t}];
	If[debug,Print["Step 1: s=",s,", t=",t]];
	If[debug,Print["        arcReserved=",arcReserved]];
	If[debug,Print["        arcUsed=",arcUsed]];
	(* 2. Find a path back p=t->x1->x2->...->xn->s *)
	nodeLoop=ShortestPath[FromOrderedPairs[Join[arcUsed,arcFree],Type->Directed],t,s];
	arcLoop=Partition[nodeLoop,2,1];
	If[debug,Print["Step 2: nodeLoop=",nodeLoop,", arcLoop=",arcLoop]];
	(* 3. Add the loop s->t->x1->x2->...->xn->s to the loop list and s->t to the arc list*)
	AppendTo[loopList,FBCyclicSort[nodeLoop]];
	AppendTo[arcList,{s,t}];
	If[debug,Print["Step 3: loopList=",loopList]];
	(* 4. Add new nodes and arcs to the "green" set *)
	nodeUsed=Union[nodeUsed,nodeLoop];
	arcLoop=Complement[arcLoop,arcUsed];
	arcUsed=Join[arcUsed,arcLoop];
	arcFree=Complement[arcFree,arcLoop];
	If[debug,Print["Step 4: nodeUsed=",nodeUsed]];
	If[debug,Print["        arcUsed=",arcUsed]];
	If[debug,Print["        arcFree=",arcFree]];
	(* 5. Mark any blue arcs from the new points yellow *)
	arcReserved=Join[arcReserved,Flatten[Map[Cases[arcFree,{#,_}]&,nodeLoop],1]];
	arcFree=Complement[arcFree,arcReserved];
	If[debug,Print["Step 5: arcReserved=",arcReserved]];
	If[debug,Print["        arcFree=",arcFree]];
	If[debug,Print["----------------------------------------------------------------------------------"]];
	];
	{loopList,arcList}
	];


(* ::Subsection::Closed:: *)
(*End of package*)


End[] (*Private*)


(* ::Subsection::Closed:: *)
(*Back matter*)


Protect[];


EndPackage[]
