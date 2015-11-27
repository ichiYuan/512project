ancestor(A,B):-
	parent(A,B);
	parent(A,C),ancestor(C,B).

get_property(A,B,C):-
	property(A,B,C),
	write("\nfrom HTML:"),
	write("\n"),write(B),write("="),write(C)
	;
	findall(D,rule(A,B,_,D),L),
	max_list(L,M),
	rule(A,B,C,M),
	write("\nfrom CSS:"),
	write("\nspecificity = "),write(M),
	write("\n"),write(B),write("="),write(C)
	;
	parent(Z,A),
	write("\nlook for parent "),
	write(Z),
	get_property(Z,B,C).

verify(A,B,C):-
	get_property(A,B,D),
	(C\==D,write("\nfalse, contradiction: "),write(D);C==D,write("\ntrue")).