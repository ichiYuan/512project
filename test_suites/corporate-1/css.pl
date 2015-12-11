rule(A1,'padding-top','50',1000):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A1,'color','#959595',1000):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A16,'color','black',1001):-
    property(A0,'tag','h1'),
    A0 = A16.
rule(A16,'color','black',1001):-
    property(A3,'tag','h2'),
    A3 = A16.
rule(A16,'color','black',1001):-
    property(A6,'tag','h3'),
    A6 = A16.
rule(A16,'color','black',1001):-
    property(A9,'tag','h4'),
    A9 = A16.
rule(A16,'color','black',1001):-
    property(A12,'tag','h5'),
    A12 = A16.
rule(A16,'color','black',1001):-
    property(A15,'tag','h6'),
    A15 = A16.
rule(A2,'background-color','yellowgreen',10002):-
    property(A1,'class','feature'),
    A1 = A2.
rule(A2,'color','greenyellow',10002):-
    property(A1,'class','feature'),
    A1 = A2.
rule(A2,'margin-bottom','25',10003):-
    property(A1,'class','article-intro'),
    A1 = A2.
rule(A2,'padding',['30','0'],10004):-
    property(A1,'class','footer-blurb'),
    A1 = A2.
rule(A2,'background-color','goldenrod',10004):-
    property(A1,'class','footer-blurb'),
    A1 = A2.
rule(A2,'color','black',10004):-
    property(A1,'class','footer-blurb'),
    A1 = A2.
rule(A2,'padding','30',10005):-
    property(A1,'class','footer-blurb-item'),
    A1 = A2.
rule(A2,'background-color','#fff',10006):-
    property(A1,'class','small-print'),
    A1 = A2.
rule(A2,'padding',['30','0'],10006):-
    property(A1,'class','small-print'),
    A1 = A2.
