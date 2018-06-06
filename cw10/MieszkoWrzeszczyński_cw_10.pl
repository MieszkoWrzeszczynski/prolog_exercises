%% zad. 1.

sm([],_,[]).
sm([X|L1],[X1|L2],[SUM|L]):-SUM is X + X1,sm(L1,L2,L).

%% zad. 2.
%% a
rownLen(N1,N2):-length(N1,What),length(N2,What).
%% b
rowne([],[]).
rowne([_|T],[_|T1]):-rowne(T,T1).

%% zad. 3.
max([MAX],MAX).
max([H,K|T],M):-H>=K,max([H|T],M).
max([H,K|T],M):-H<K,max([K|T],M).

%% zad. 4.
poczatek([H],[H1|_]):-H==H1.
poczatek([],[_]).
poczatek([H|T],[H1|T1]):-H==H1,poczatek(T,T1).

%% zad. 5.
%% a
is_list_own([_|_]).
is_list_own([_]).
is_list_own([]).

%% b
last_own([X],X).
last_own([_|T],X):-last_own(T,X).
%% c
member([H|T],B):-H=B;member(T,B).

%% d
nextto_own(X,Y,[X,Y|_]):-!.
nextto_own(X,Y,[_|O]):-nextto_own(X, Y, O).

%% e
delete_own([], _,[]):-!.
delete_own([X|T],X,Y):-!,delete_own(T, X, Y).
delete_own([X|T],E,[X|Y]):-delete_own(T, E, Y).

%% f
select_own(El,[El|T],T).
selec_own(El,[H|T],[H|S]):-select_own(El,T,S).

%% g
nth1_own(1,[H|_],H).
nth1_own(I,[_|T],X):-INDEX is I - 1,nth1_own(INDEX,T,X).

%% h
takeout(X,[X|R],R).
takeout(X,[F |R],[F|S]):-takeout(X,R,S).

permutation_own([X|Y],Z):-permutation_own(Y,W),takeout(X,Z,W).
permutation_own([],[]).
