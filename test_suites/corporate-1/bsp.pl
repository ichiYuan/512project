rule(A1,'font-family','sans-serif',1000):-
    property(A0,'tag','html'),
    A0 = A1.
rule(A1,'-webkit-text-size-adjust','100',1000):-
    property(A0,'tag','html'),
    A0 = A1.
rule(A1,'-ms-text-size-adjust','100',1000):-
    property(A0,'tag','html'),
    A0 = A1.
rule(A8,'outline','0',11001):-
    property(A0,'tag','a'),
    property(A1,'tag',':'),
    property(A2,'tag','active'),
    A2 = A8.
rule(A8,'outline','0',11001):-
    property(A5,'tag','a'),
    property(A6,'tag',':'),
    property(A7,'tag','hover'),
    A7 = A8.
rule(A4,'font-weight','bold',1002):-
    property(A0,'tag','b'),
    A0 = A4.
rule(A4,'font-weight','bold',1002):-
    property(A3,'tag','strong'),
    A3 = A4.
rule(A1,'font-style','italic',1003):-
    property(A0,'tag','dfn'),
    A0 = A1.
rule(A1,'margin',['0.67','0'],1004):-
    property(A0,'tag','h1'),
    A0 = A1.
rule(A1,'font-size','2',1004):-
    property(A0,'tag','h1'),
    A0 = A1.
rule(A1,'color','#000',1005):-
    property(A0,'tag','mark'),
    A0 = A1.
rule(A1,'background','#ff0',1005):-
    property(A0,'tag','mark'),
    A0 = A1.
rule(A1,'font-size','80',1006):-
    property(A0,'tag','small'),
    A0 = A1.
rule(A4,'position','relative',1007):-
    property(A0,'tag','sub'),
    A0 = A4.
rule(A4,'position','relative',1007):-
    property(A3,'tag','sup'),
    A3 = A4.
rule(A4,'font-size','75',1007):-
    property(A0,'tag','sub'),
    A0 = A4.
rule(A4,'font-size','75',1007):-
    property(A3,'tag','sup'),
    A3 = A4.
rule(A4,'line-height','0',1007):-
    property(A0,'tag','sub'),
    A0 = A4.
rule(A4,'line-height','0',1007):-
    property(A3,'tag','sup'),
    A3 = A4.
rule(A4,'vertical-align','baseline',1007):-
    property(A0,'tag','sub'),
    A0 = A4.
rule(A4,'vertical-align','baseline',1007):-
    property(A3,'tag','sup'),
    A3 = A4.
rule(A1,'top','-0.5',1008):-
    property(A0,'tag','sup'),
    A0 = A1.
rule(A1,'bottom','-0.25',1009):-
    property(A0,'tag','sub'),
    A0 = A1.
rule(A1,'border','0',1010):-
    property(A0,'tag','img'),
    A0 = A1.
rule(A1,'margin',['1','40'],1011):-
    property(A0,'tag','figure'),
    A0 = A1.
rule(A1,'height','0',1012):-
    property(A0,'tag','hr'),
    A0 = A1.
rule(A1,'-webkit-box-sizing','content-box',1012):-
    property(A0,'tag','hr'),
    A0 = A1.
rule(A1,'-moz-box-sizing','content-box',1012):-
    property(A0,'tag','hr'),
    A0 = A1.
rule(A1,'box-sizing','content-box',1012):-
    property(A0,'tag','hr'),
    A0 = A1.
rule(A1,'overflow','auto',1013):-
    property(A0,'tag','pre'),
    A0 = A1.
rule(A10,'font-family',['monospace',',','monospace'],1014):-
    property(A0,'tag','code'),
    A0 = A10.
rule(A10,'font-family',['monospace',',','monospace'],1014):-
    property(A3,'tag','kbd'),
    A3 = A10.
rule(A10,'font-family',['monospace',',','monospace'],1014):-
    property(A6,'tag','pre'),
    A6 = A10.
rule(A10,'font-family',['monospace',',','monospace'],1014):-
    property(A9,'tag','samp'),
    A9 = A10.
rule(A10,'font-size','1',1014):-
    property(A0,'tag','code'),
    A0 = A10.
rule(A10,'font-size','1',1014):-
    property(A3,'tag','kbd'),
    A3 = A10.
rule(A10,'font-size','1',1014):-
    property(A6,'tag','pre'),
    A6 = A10.
rule(A10,'font-size','1',1014):-
    property(A9,'tag','samp'),
    A9 = A10.
rule(A13,'margin','0',1015):-
    property(A0,'tag','button'),
    A0 = A13.
rule(A13,'margin','0',1015):-
    property(A3,'tag','input'),
    A3 = A13.
rule(A13,'margin','0',1015):-
    property(A6,'tag','optgroup'),
    A6 = A13.
rule(A13,'margin','0',1015):-
    property(A9,'tag','select'),
    A9 = A13.
rule(A13,'margin','0',1015):-
    property(A12,'tag','textarea'),
    A12 = A13.
rule(A13,'font','inherit',1015):-
    property(A0,'tag','button'),
    A0 = A13.
rule(A13,'font','inherit',1015):-
    property(A3,'tag','input'),
    A3 = A13.
rule(A13,'font','inherit',1015):-
    property(A6,'tag','optgroup'),
    A6 = A13.
rule(A13,'font','inherit',1015):-
    property(A9,'tag','select'),
    A9 = A13.
rule(A13,'font','inherit',1015):-
    property(A12,'tag','textarea'),
    A12 = A13.
rule(A13,'color','inherit',1015):-
    property(A0,'tag','button'),
    A0 = A13.
rule(A13,'color','inherit',1015):-
    property(A3,'tag','input'),
    A3 = A13.
rule(A13,'color','inherit',1015):-
    property(A6,'tag','optgroup'),
    A6 = A13.
rule(A13,'color','inherit',1015):-
    property(A9,'tag','select'),
    A9 = A13.
rule(A13,'color','inherit',1015):-
    property(A12,'tag','textarea'),
    A12 = A13.
rule(A1,'overflow','visible',1016):-
    property(A0,'tag','button'),
    A0 = A1.
rule(A4,'text-transform','none',1017):-
    property(A0,'tag','button'),
    A0 = A4.
rule(A4,'text-transform','none',1017):-
    property(A3,'tag','select'),
    A3 = A4.
rule(A10,'padding','0',2018):-
    property(A0,'tag','button'),
    property(A1,'tag',':'),
    property(A2,'tag',':'),
    property(A3,'tag','-moz-focus-inner'),
    A3 = A10.
rule(A10,'padding','0',2018):-
    property(A6,'tag','input'),
    property(A7,'tag',':'),
    property(A8,'tag',':'),
    property(A9,'tag','-moz-focus-inner'),
    A9 = A10.
rule(A10,'border','0',2018):-
    property(A0,'tag','button'),
    property(A1,'tag',':'),
    property(A2,'tag',':'),
    property(A3,'tag','-moz-focus-inner'),
    A3 = A10.
rule(A10,'border','0',2018):-
    property(A6,'tag','input'),
    property(A7,'tag',':'),
    property(A8,'tag',':'),
    property(A9,'tag','-moz-focus-inner'),
    A9 = A10.
rule(A1,'line-height','normal',1019):-
    property(A0,'tag','input'),
    A0 = A1.
rule(A1,'padding',['0.35','0.625','0.75'],1020):-
    property(A0,'tag','fieldset'),
    A0 = A1.
rule(A1,'margin',['0','2'],1020):-
    property(A0,'tag','fieldset'),
    A0 = A1.
rule(A1,'border',['1','solid','#c0c0c0'],1020):-
    property(A0,'tag','fieldset'),
    A0 = A1.
rule(A1,'padding','0',1021):-
    property(A0,'tag','legend'),
    A0 = A1.
rule(A1,'border','0',1021):-
    property(A0,'tag','legend'),
    A0 = A1.
rule(A1,'overflow','auto',1022):-
    property(A0,'tag','textarea'),
    A0 = A1.
rule(A1,'font-weight','bold',1023):-
    property(A0,'tag','optgroup'),
    A0 = A1.
rule(A1,'border-spacing','0',1024):-
    property(A0,'tag','table'),
    A0 = A1.
rule(A1,'border-collapse','collapse',1024):-
    property(A0,'tag','table'),
    A0 = A1.
rule(A4,'padding','0',1025):-
    property(A0,'tag','td'),
    A0 = A4.
rule(A4,'padding','0',1025):-
    property(A3,'tag','th'),
    A3 = A4.
