klocek(a).
klocek(b).
klocek(c).
klocek(d).
lezy(d,c).
lezy(c,a).
lezy(c,b).
pod(X,Y):-lezy(Y,X).
miedzy(X,Y,Z):-lezy(X,Y),lezy(Y,Z).

