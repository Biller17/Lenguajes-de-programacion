


/* Ejercicio Adrian Biller A010128940*/




divisionLista([], REF, MIN, MAX, MIN,MAX).
divisionLista([H|T],REF, MIN, MAX, AMIN,AMAX):- H > REF, append([H], AMAX, Z), divisionLista(T,REF,MIN,MAX,AMIN,Z).
divisionLista([H|T],REF, MIN, MAX, AMIN,AMAX):- H < REF, append([H], AMIN, Z), divisionLista(T,REF,MIN,MAX,Z,AMAX).
divisionLista([H|T],REF, MIN, MAX, AMIN,AMAX):- H =:= REF, divisionLista(T,REF,MIN,MAX).
