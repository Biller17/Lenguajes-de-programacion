/* predicado que devuelve si un numero es circular primo
Adrian Biller A01018940
*/




division(X,Y) :- Y < X,
                X mod Y is 0,
                Z is Y+1,
                division(X,Z).

esprimo(X) :- integer(X),
              X > 1,
              \+ division(X,2).

rotar([H|T], Z):- X is [T, H], number_chars(Z, X).

circular(NUM, X, COUNT):- COUNT =:= 3,
                          esprimo(NUM).


circular(NUM, X, COUNT):- COUNT < 3,
                          esprimo(NUM),
                          number_chars(NUM, LIST).
                          rotar(LIST, Z),
                          Y is COUNT +1,
                          circular(Z,X,Y).
