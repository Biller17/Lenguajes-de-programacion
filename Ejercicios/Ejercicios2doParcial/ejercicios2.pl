


/* Ejercicio Adrian Biller A010128940*/

islist(X):-  var(X), !, fail.
islist([]).
islist([_|T]):- islist(T).

divisionLista([], REF, MIN, MAX):- write(MIN), write(MAX).
divisionLista([H|T],REF, MIN, MAX):- H > REF, append([], MAX, X) ,append([H], X, Z), divisionLista(T,REF,MIN,Z).
divisionLista([H|T],REF, MIN, MAX):- H < REF, append([], MIN, X) ,append([H], X, Z), divisionLista(T,REF,Z,MAX).
divisionLista([H|T],REF, MIN, MAX):- H =:= REF, divisionLista(T,REF,MIN,MAX).
divisionLista(LIST, REF, MIN, MAX):- islist(MIN), islist(MAX), divisionLista(LIST, REF, [], [])
