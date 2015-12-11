rule(A1,'font-family','sans-serif',1000):-
    property(A0,'tag','html'),
    A0 = A1.
rule(A1,'-webkit-text-size-adjust','100',1000):-
    property(A0,'tag','html'),
    A0 = A1.
rule(A1,'-ms-text-size-adjust','100',1000):-
    property(A0,'tag','html'),
    A0 = A1.
rule(A1,'margin','0',1001):-
    property(A0,'tag','body'),
    A0 = A1.
rule(A37,'display','block',1002):-
    property(A0,'tag','article'),
    A0 = A37.
rule(A37,'display','block',1002):-
    property(A3,'tag','aside'),
    A3 = A37.
rule(A37,'display','block',1002):-
    property(A6,'tag','details'),
    A6 = A37.
rule(A37,'display','block',1002):-
    property(A9,'tag','figcaption'),
    A9 = A37.
rule(A37,'display','block',1002):-
    property(A12,'tag','figure'),
    A12 = A37.
rule(A37,'display','block',1002):-
    property(A15,'tag','footer'),
    A15 = A37.
rule(A37,'display','block',1002):-
    property(A18,'tag','header'),
    A18 = A37.
rule(A37,'display','block',1002):-
    property(A21,'tag','hgroup'),
    A21 = A37.
rule(A37,'display','block',1002):-
    property(A24,'tag','main'),
    A24 = A37.
rule(A37,'display','block',1002):-
    property(A27,'tag','menu'),
    A27 = A37.
rule(A37,'display','block',1002):-
    property(A30,'tag','nav'),
    A30 = A37.
rule(A37,'display','block',1002):-
    property(A33,'tag','section'),
    A33 = A37.
rule(A37,'display','block',1002):-
    property(A36,'tag','summary'),
    A36 = A37.
rule(A10,'display','inline-block',1003):-
    property(A0,'tag','audio'),
    A0 = A10.
rule(A10,'display','inline-block',1003):-
    property(A3,'tag','canvas'),
    A3 = A10.
rule(A10,'display','inline-block',1003):-
    property(A6,'tag','progress'),
    A6 = A10.
rule(A10,'display','inline-block',1003):-
    property(A9,'tag','video'),
    A9 = A10.
rule(A10,'vertical-align','baseline',1003):-
    property(A0,'tag','audio'),
    A0 = A10.
rule(A10,'vertical-align','baseline',1003):-
    property(A3,'tag','canvas'),
    A3 = A10.
rule(A10,'vertical-align','baseline',1003):-
    property(A6,'tag','progress'),
    A6 = A10.
rule(A10,'vertical-align','baseline',1003):-
    property(A9,'tag','video'),
    A9 = A10.
rule(A3,'display','none',11004):-
    property(A0,'tag','audio'),
    property(A1,'tag',':'),
