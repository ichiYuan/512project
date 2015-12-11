imgpropext(A,'pos','middle'):-
	imgprop(A,'left_pad',B),
	imgprop(A,'right_pad',C),
	abs(B-C) < 5.
imgpropext(A,'pos','left'):-
	imgprop(A,'left_pad',B),
	imgprop(A,'right_pad',C),
	B < 10,
	(C-B) > 50.
imgpropext(A,'pos','right'):-
	imgprop(A,'left_pad',B),
	imgprop(A,'right_pad',C),
	C < 10,
	(B-C) > 50.
imgpropext(A,'pos','center'):-
	imgprop(A,'top_pad',B),
	imgprop(A,'bottom_pad',C),
	abs(B-C) < 2.
imgpropext(A,'pos','top'):-
	imgprop(A,'top_pad',B),
	imgprop(A,'bottom_pad',C),
	B < 2,
	(C-B) > 2.
imgpropext(A,'pos','bottom'):-
	imgprop(A,'top_pad',B),
	imgprop(A,'bottom_pad',C),
	C < 2,
	(B-C) > 2.
imgpropext(A,'aspect_ratio',B):-
	imgprop(A,'contentwidth',C),
	imgprop(A,'contentheight',D),
	B is float(C)/float(D).
