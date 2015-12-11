rule(A1,'padding-left','11',1000):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A1,'font-family',['Georgia',',','Times New Roman',',','Times',',','serif'],1000):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A1,'color','purple',1000):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A1,'background-color','#d8da3d',1000):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A3,'list-style-type','none',11001):-
    property(A0,'tag','ul'),
    A0 = A2,
    property(A2,'class','navbar'),
    A2 = A3.
rule(A3,'padding','0',11001):-
    property(A0,'tag','ul'),
    A0 = A2,
    property(A2,'class','navbar'),
    A2 = A3.
rule(A3,'margin','0',11001):-
    property(A0,'tag','ul'),
    A0 = A2,
    property(A2,'class','navbar'),
    A2 = A3.
rule(A3,'position','absolute',11001):-
    property(A0,'tag','ul'),
    A0 = A2,
    property(A2,'class','navbar'),
    A2 = A3.
rule(A3,'top','2',11001):-
    property(A0,'tag','ul'),
    A0 = A2,
    property(A2,'class','navbar'),
    A2 = A3.
rule(A3,'left','1',11001):-
    property(A0,'tag','ul'),
    A0 = A2,
    property(A2,'class','navbar'),
    A2 = A3.
rule(A3,'width','9',11001):-
    property(A0,'tag','ul'),
    A0 = A2,
    property(A2,'class','navbar'),
    A2 = A3.
rule(A1,'font-family',['Helvetica',',','Geneva',',','Arial',',','SunSans-Regular',',','sans-serif'],1002):-
    property(A0,'tag','h1'),
    A0 = A1.
rule(A5,'background','white',12003):-
    property(A0,'tag','ul'),
    A0 = A2,
    property(A2,'class','navbar'),
    ancestor(A2,A4),
    property(A4,'tag','li'),
    A4 = A5.
rule(A5,'margin',['0.5','0'],12003):-
    property(A0,'tag','ul'),
    A0 = A2,
    property(A2,'class','navbar'),
    ancestor(A2,A4),
    property(A4,'tag','li'),
    A4 = A5.
rule(A5,'padding','0.3',12003):-
    property(A0,'tag','ul'),
    A0 = A2,
    property(A2,'class','navbar'),
    ancestor(A2,A4),
    property(A4,'tag','li'),
    A4 = A5.
rule(A5,'border-right',['1','solid','black'],12003):-
    property(A0,'tag','ul'),
    A0 = A2,
    property(A2,'class','navbar'),
    ancestor(A2,A4),
    property(A4,'tag','li'),
    A4 = A5.
rule(A5,'text-decoration','none',12004):-
    property(A0,'tag','ul'),
    A0 = A2,
    property(A2,'class','navbar'),
    ancestor(A2,A4),
    property(A4,'tag','a'),
    A4 = A5.
rule(A3,'color','blue',11005):-
    property(A0,'tag','a'),
    property(A1,'tag',':'),
    property(A2,'tag','link'),
    A2 = A3.
rule(A3,'color','purple',11006):-
    property(A0,'tag','a'),
    property(A1,'tag',':'),
    property(A2,'tag','visited'),
    A2 = A3.
rule(A1,'margin-top','1',1007):-
    property(A0,'tag','address'),
    A0 = A1.
rule(A1,'padding-top','1',1007):-
    property(A0,'tag','address'),
    A0 = A1.
rule(A1,'border-top',['thin','dotted'],1007):-
    property(A0,'tag','address'),
    A0 = A1.
