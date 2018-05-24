/* zad. 4. */
nwd(X,Y,Wynik):-X=:=Y,Wynik is X.
nwd(X,Y,Wynik):-X<Y,Tmp is Y-X,nwd(X,Tmp,Wynik).
nwd(X,Y,Wynik):-X>Y,Tmp is X-Y,nwd(Y,Tmp,Wynik).


/* zad. 5. */
jarosze('Ola').
jarosze('Ewa').
jarosze('Jan').
jarosze('Paweł').
kawosze('Iza').
kawosze('Piotr').
kawosze('Paweł').
czytacze('Ola').
czytacze('Iza').
czytacze('Paweł').
sportacze('Iza').
sportacze('Ola').
sportacze('Piotr').
sportacze('Paweł').
lubi('Ola',X):-jarosze(X),sportacze(X),X\='Ola'.
lubi('Ewa',X):-jarosze(X),\+kawosze(X),X\='Ewa'.
lubi('Iza',X):-czytacze(X),X\='Iza'.
lubi('Iza',X):-sportacze(X),\+kawosze(X),X\="Iza".
lubi('Jan',X):-sportacze(X),X\="Jan".
lubi('Piotr',X):-sportacze(X),jarosze(X),X\="Piotr".
lubi('Piotr',X):-czytacze(X),X\="Piotr".
lubi('Paweł',X):-jarosze(X),sportacze(X),czytacze(X),X\="Paweł".
przyjaciele(X,Y):-lubi(X,Y),lubi(Y,X),X\=Y.

/* zad. 8. */
/* Wystarczy wywołać w ten sposób
select(1,X,[4,5,6]).
X = [1, 4, 5, 6] ;
X = [4, 1, 5, 6] ;
X = [4, 5, 1, 6] ;
X = [4, 5, 6, 1] ;
false.
*/
