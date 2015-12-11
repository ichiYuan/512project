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
imgprop(A,'pos','center'):-
	imgprop(A,'top_pad',B),
	imgprop(A,'bottom_pad',C),
	abs(B-C) < 2.
imgprop(A,'pos','top'):-
	imgprop(A,'top_pad',B),
	imgprop(A,'bottom_pad',C),
	B <= 1,
	(C-B) > 2.
imgprop(A,'pos','bottom'):-
	imgprop(A,'top_pad',B),
	imgprop(A,'bottom_pad',C),
	C <= 1,
	(B-C) > 2.
imgprop(A,'aspect_ratio',B):-
	imgprop(A,'contentwidth',C),
	imgprop(A,'contentheight',D),
	B is C//D.



