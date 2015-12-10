imgprop(A,'pos','middle'):-
	imgprop(A,'left_pad',B),
	imgprop(A,'right_pad',C),
	abs(B-C) < 5.
imgprop(A,'pos','left'):-
	imgprop(A,'left_pad',B),
	imgprop(A,'right_pad',C),
	B < 10,
	(C-B) > 50.
imgprop(A,'pos','right'):-
	imgprop(A,'left_pad',B),
	imgprop(A,'right_pad',C),
	C < 10,
	(B-C) > 50.
imgprop(A,'aspect_ratio',D),
	imgprop(A,'contentwidth',B),
	imgprop(A,'contentheight',C),
	D is float(B)/C.



