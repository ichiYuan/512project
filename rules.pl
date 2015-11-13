tag('id1','html').
parent('id1','id2').
tag('id2','head').
parent('id2','id3').
tag('id3','title').
parent('id2','id4').
tag('id4','meta').
property('id4','meta',_,'name','author').
property('id4','meta',_,'content','your name').
parent('id2','id5').
tag('id5','meta').
property('id5','meta',_,'name','description').
property('id5','meta',_,'content','').
parent('id2','id6').
tag('id6','link').
property('id6','link',_,'rel','stylesheet').
property('id6','link',_,'href','style.css').
property('id6','link',_,'type','text/css').
parent('id1','id7').
tag('id7','body').
parent('id7','page').
tag('page','div').
parent('page','logo').
tag('logo','div').
parent('logo','id8').
tag('id8','h1').
parent('id8','logoLink').
tag('logoLink','a').
property('logoLink','a',_,'href','/').
parent('page','nav').
tag('nav','div').
parent('nav','id9').
tag('id9','ul').
parent('id9','id10').
tag('id10','li').
parent('id10','id11').
tag('id11','a').
property('id11','a',_,'href','#/home.html').
parent('id9','id12').
tag('id12','li').
parent('id12','id13').
tag('id13','a').
property('id13','a',_,'href','#/about.html').
parent('id9','id14').
tag('id14','li').
parent('id14','id15').
tag('id15','a').
property('id15','a',_,'href','#/contact.html').
parent('page','content').
tag('content','div').
parent('content','id16').
tag('id16','h2').
parent('content','id17').
tag('id17','p').
parent('content','id18').
tag('id18','p').
parent('page','footer').
tag('footer','div').
parent('footer','id19').
tag('id19','p').
parent('id19','id20').
tag('id20','a').
property('id20','a',_,'href','/').
property('id20','a',_,'target','_blank').
property(_,'p',_,'line-height','1').
property(_,'h1',_,'font-size','1.7').
property(_,'h2',_,'font-size','1.5').
property(_,'a',_,'color','black').
property(_,'a',_,'text-decoration','none').
property(_,'body',_,'font-family','arial').
property(_,'body',_,'font-size','80').
property(_,'body',_,'line-height','1.2').
property(_,'body',_,'width','100').
property(_,'body',_,'margin','0').
property(_,'body',_,'background','#eee').
property('page',_,_,'margin','20').
property('logo',_,_,'width','35').
property('logo',_,_,'margin-top','5').
property('logo',_,_,'font-family','georgia').
property('logo',_,_,'display','inline-block').
property('nav',_,_,'width','60').
property('nav',_,_,'display','inline-block').
property('nav',_,_,'text-align','right').
property('nav',_,_,'float','right').
property('content',_,_,'background','white').
property('content',_,_,'padding','20').
property('content',_,_,'clear','both').
property('footer',_,_,'margin-bottom','10').
verify(A,B,C,D,E):-
	write("\nlook for: "), write(A),
	tag(A,X), property(A,X,_,D,E), write(" property: ");
	not(verifySimilar(A,B,C,D,E)),
	parent(Z,A), 
	write("\nlook for parent of "), write(A), write(": "), write(Z),
	tag(Z,Q), verify(Z,Q,_,D,E), write(E).

verifySimilar(A,B,C,D,E):-
	write("\nlook for: "), write(A), write(" other possibilities: "),
	tag(A,X), property(A,X,_,D,Y), not(E == Y), 
	write("false, contradiction "),write(Y).


