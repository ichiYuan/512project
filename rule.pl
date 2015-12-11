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

get_img_properity(A,B,C):-
	imgprop(A,B,C),
	write("\nfrom image processing"),
	write("\n"),write(B),write("="),write(C)	
	;
	imgpropext(A,B,C),
	write("\nfrom extended image property"),
	write("\n"),write(B),write("="),write(C)	
	.

img_verify(A,B,C):-
	get_img_properity(A,B,D),
	(C\==D,write("\nfalse, contradiction: "),write(D);C==D,write("\ntrue")).

img_undistortion(A,B,C):-
	imgprop(A,'contentwidth',D),
	write("\nget width from image process"),
	write("\n"),write('width'),write("="),write(D),
	imgprop(A,'contentheight',E),
	write("\nget height from image process"),
	write("\n"),write('height'),write("="),write(E),
	(D<B;B=D),
	(E<C;C=E),
	write("\nSize verified! Detected size is smaller than original image size."),
	imgpropext(A,'aspect_ratio',F),
	G is abs((float(B)/float(C)-F)/float(F)),
	((G<0.05; G=0.05),
	write("\ntrue, aspect ratio verified! Large distortion is not detected");
	G > 0.05,
	write("\nfalse, aspect ratio not verified, Significant distortion is detected")),
	write("\ndistortion_rate="),write(G).




