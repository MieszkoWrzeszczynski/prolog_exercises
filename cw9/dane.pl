kobieta(ewa).
kobieta(elzbieta).
kobieta(iwona).
kobieta(ilona).
kobieta(anna).
kobieta(marta).
kobieta(iza).
kobieta(ola).
kobieta(magda).

mezczyzna(piotr).
mezczyzna(adam).
mezczyzna(pawel).
mezczyzna(dariusz).
mezczyzna(jan).
mezczyzna(norbert).
mezczyzna(marek).
mezczyzna(krzysztof).
mezczyzna(maciej).

rodzic(ewa,marek).
rodzic(ewa,marta).
rodzic(piotr,marek).
rodzic(piotr,marta).
rodzic(elzbieta,magda).
rodzic(norbert,magda).
rodzic(maciej,anna).
rodzic(ola,anna).
rodzic(marek,ola).
rodzic(magda,ola).
rodzic(pawel,krzysztof).
rodzic(pawel,iza).
rodzic(krzysztof,adam).
rodzic(marta,adam).
rodzic(iwona,iza).
rodzic(iwona,krzysztof).
rodzic(ilona,dariusz).
rodzic(adam,dariusz).

/* student(nazwisko, imiê, rok urodzenia, miejsce studiowania, kierunek studiów, uczelnia */
student(kowalski, jan, 1990, poznan, matematyka,uam).
student(kosowski, jan, 1991, poznan, matematyka, ae).
student(kowalski, marek, 1993, poznan, matematyka, pp).
student(kaczmarek, janina, 1989, poznan, informatyka, pp).
student(nowak, anna, 1988, olsztyn, informatyka, uwm).
student(jurkowski, jerzy, 1990, poznan, informatyka, uam).
student(wolski, maciej, 1990, poznan, matematyka, pp).
student(kot, stefan, 1989, warszawa, matematyka, uw).
student(typowski, adam, 1990, krakow, matematyka, uj).
student(zemski, piotr, 1991, poznan, informatyka, ue).
student(makowska, zuzanna, 1990, poznan, informatyka, pp).
student(ratajczak, agata, 1992, poznan, informatyka, uam).

studentPoznan(A,B):-student(A,B,_,poznan,_,_).
matem(A):-student(A,B,_,_,matematyka,_).
ojciec(A):-rodzic(A,_),mezczyzna(A).



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
