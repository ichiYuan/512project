rule(A1,'line-height','1',1000):-
    property(A0,'tag','p'),
    A0 = A1.
rule(A10,'color','orange',1001):-
    property(A0,'tag','h1'),
    A0 = A10.
rule(A10,'color','orange',1001):-
    property(A3,'tag','h2'),
    A3 = A10.
rule(A10,'color','orange',1001):-
    property(A6,'tag','h3'),
    A6 = A10.
rule(A10,'color','orange',1001):-
    property(A9,'tag','h4'),
    A9 = A10.
rule(A10,'font-weight','normal',1001):-
    property(A0,'tag','h1'),
    A0 = A10.
rule(A10,'font-weight','normal',1001):-
    property(A3,'tag','h2'),
    A3 = A10.
rule(A10,'font-weight','normal',1001):-
    property(A6,'tag','h3'),
    A6 = A10.
rule(A10,'font-weight','normal',1001):-
    property(A9,'tag','h4'),
    A9 = A10.
rule(A10,'line-height','1.1',1001):-
    property(A0,'tag','h1'),
    A0 = A10.
rule(A10,'line-height','1.1',1001):-
    property(A3,'tag','h2'),
    A3 = A10.
rule(A10,'line-height','1.1',1001):-
    property(A6,'tag','h3'),
    A6 = A10.
rule(A10,'line-height','1.1',1001):-
    property(A9,'tag','h4'),
    A9 = A10.
rule(A10,'margin',['0','0','0.5','0'],1001):-
    property(A0,'tag','h1'),
    A0 = A10.
rule(A10,'margin',['0','0','0.5','0'],1001):-
    property(A3,'tag','h2'),
    A3 = A10.
rule(A10,'margin',['0','0','0.5','0'],1001):-
    property(A6,'tag','h3'),
    A6 = A10.
rule(A10,'margin',['0','0','0.5','0'],1001):-
    property(A9,'tag','h4'),
    A9 = A10.
rule(A4,'font-size','1.7',11002):-
    property(A0,'tag','h1'),
    ancestor(A0,A2),
    A2 = A3,
    property(A3,'class','lili'),
    A3 = A4.
rule(A1,'font-size','1.5',1003):-
    property(A0,'tag','h2'),
    A0 = A1.
rule(A1,'color','black',1004):-
    property(A0,'tag','a'),
    A0 = A1.
rule(A1,'text-decoration','none',1004):-
    property(A0,'tag','a'),
    A0 = A1.
rule(A8,'text-decoration','underline',11005):-
    property(A0,'tag','a'),
    property(A1,'tag',':'),
    property(A2,'tag','hover'),
    A2 = A8.
rule(A8,'text-decoration','underline',11005):-
    property(A5,'tag','a'),
    property(A6,'tag',':'),
    property(A7,'tag','active'),
    A7 = A8.
rule(A1,'font-family','arial',1006):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A1,'font-size','80',1006):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A1,'line-height','1.2',1006):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A1,'width','100',1006):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A1,'margin','0',1006):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A1,'background','#eee',1006):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A1,'margin','20',100007):-
    property(A0,'id','page'),
    A0 = A1.
rule(A1,'width','35',100008):-
    property(A0,'id','logo'),
    A0 = A1.
rule(A1,'margin-top','5',100008):-
    property(A0,'id','logo'),
    A0 = A1.
rule(A1,'font-family','georgia',100008):-
    property(A0,'id','logo'),
    A0 = A1.
rule(A1,'display','inline-block',100008):-
    property(A0,'id','logo'),
    A0 = A1.
rule(A1,'width','60',100009):-
    property(A0,'id','nav'),
    A0 = A1.
rule(A1,'display','inline-block',100009):-
    property(A0,'id','nav'),
    A0 = A1.
rule(A1,'text-align','right',100009):-
    property(A0,'id','nav'),
    A0 = A1.
rule(A1,'float','right',100009):-
    property(A0,'id','nav'),
    A0 = A1.
rule(A5,'display','inline-block',102011):-
    property(A0,'id','nav'),
    ancestor(A0,A2),
    property(A2,'tag','ul'),
    ancestor(A2,A4),
    property(A4,'tag','li'),
    A4 = A5.
rule(A5,'height','62',102011):-
    property(A0,'id','nav'),
    ancestor(A0,A2),
    property(A2,'tag','ul'),
    ancestor(A2,A4),
    property(A4,'tag','li'),
    A4 = A5.
rule(A7,'padding','20',103012):-
    property(A0,'id','nav'),
    ancestor(A0,A2),
    property(A2,'tag','ul'),
    ancestor(A2,A4),
    property(A4,'tag','li'),
    ancestor(A4,A6),
    property(A6,'tag','a'),
    A6 = A7.
rule(A7,'background','orange',103012):-
    property(A0,'id','nav'),
    ancestor(A0,A2),
    property(A2,'tag','ul'),
    ancestor(A2,A4),
    property(A4,'tag','li'),
    ancestor(A4,A6),
    property(A6,'tag','a'),
    A6 = A7.
rule(A7,'color','white',103012):-
    property(A0,'id','nav'),
    ancestor(A0,A2),
    property(A2,'tag','ul'),
    ancestor(A2,A4),
    property(A4,'tag','li'),
    ancestor(A4,A6),
    property(A6,'tag','a'),
    A6 = A7.
rule(A9,'background-color','#ffb424',113013):-
    property(A0,'id','nav'),
    ancestor(A0,A2),
    property(A2,'tag','ul'),
    ancestor(A2,A4),
    property(A4,'tag','li'),
    ancestor(A4,A6),
    property(A6,'tag','a'),
    property(A7,'tag',':'),
    property(A8,'tag','hover'),
    A8 = A9.
rule(A9,'box-shadow',['0','1','1','#666'],113013):-
    property(A0,'id','nav'),
    ancestor(A0,A2),
    property(A2,'tag','ul'),
    ancestor(A2,A4),
    property(A4,'tag','li'),
    ancestor(A4,A6),
    property(A6,'tag','a'),
    property(A7,'tag',':'),
    property(A8,'tag','hover'),
    A8 = A9.
rule(A9,'background-color','#ff8f00',113014):-
    property(A0,'id','nav'),
    ancestor(A0,A2),
    property(A2,'tag','ul'),
    ancestor(A2,A4),
    property(A4,'tag','li'),
    ancestor(A4,A6),
    property(A6,'tag','a'),
    property(A7,'tag',':'),
    property(A8,'tag','active'),
    A8 = A9.
rule(A1,'margin',['30','0'],100015):-
    property(A0,'id','content'),
    A0 = A1.
rule(A1,'background','white',100015):-
    property(A0,'id','content'),
    A0 = A1.
rule(A1,'padding','20',100015):-
    property(A0,'id','content'),
    A0 = A1.
rule(A1,'clear','both',100015):-
    property(A0,'id','content'),
    A0 = A1.
rule(A1,'border-bottom',['1','#ccc','solid'],100016):-
    property(A0,'id','footer'),
    A0 = A1.
rule(A1,'margin-bottom','10',100016):-
    property(A0,'id','footer'),
    A0 = A1.
rule(A3,'text-align','right',101017):-
    property(A0,'id','footer'),
    ancestor(A0,A2),
    property(A2,'tag','p'),
    A2 = A3.
rule(A3,'text-transform','uppercase',101017):-
    property(A0,'id','footer'),
    ancestor(A0,A2),
    property(A2,'tag','p'),
    A2 = A3.
rule(A3,'font-size','80',101017):-
    property(A0,'id','footer'),
    ancestor(A0,A2),
    property(A2,'tag','p'),
    A2 = A3.
rule(A3,'color','grey',101017):-
    property(A0,'id','footer'),
    ancestor(A0,A2),
    property(A2,'tag','p'),
    A2 = A3.
rule(A8,'box-shadow',['0','1','1','#999'],100018):-
    property(A0,'id','content'),
    A0 = A8.
rule(A8,'box-shadow',['0','1','1','#999'],3018):-
    property(A3,'tag','ul'),
    ancestor(A3,A5),
    property(A5,'tag','li'),
    ancestor(A5,A7),
    property(A7,'tag','a'),
    A7 = A8.
