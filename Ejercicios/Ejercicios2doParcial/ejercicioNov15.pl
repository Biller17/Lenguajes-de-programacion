



/*difference list
con esto se puede hacer esto
 myappend([1,2,3|B], B, [4,5], Y).
 y se appendea la lista a Y*/
myappend(A,B,B,A).





/*otra manera de appendear listas
myappend2([1,2,3|X]-X,[5,6],Y).*/
myappend2(A-B, B, A).


/*se puede appendear de esta manera myappend3([1,2,3|X]-X,[4,5|Y]-Y,Z).*/
myappend3(A-B,B-C, A-C).


/* solo se cambia la forma en la que se llama la funcion en el interprete
myappendInvertir([1,2,3],B,[5,6|Y],Y).
B = [5, 6, 1, 2, 3],
Y = [1, 2, 3].

*/
myappendInvertir(A, B, B, A).




/*assert agrega algo a la base de conocimiento*/

assert(edad(pedro, 15)).
assert(joven(pedro)).
assert(joven(X):-edad(X,Y), Y<18).


/*retract elimina de la base de datos*/




/**********************************    predicado que suma y eleva al cuadrado   *************************************/

/* se le pone /3 porque tiene 3 valores*/
:- dynamic tabla/3.

/*caso base*/
sumpot(X,Y,Z):- tabla(X,Y,Z), !.
sumpot(X,Y,Z):- Z is (X+Y)*(X+Y), assertz(tabla(X,Y,Z)).








/* predicado que devuelve si un numero es circular primo*/




division(X,Y) :- Y < X,
                X mod Y is 0,
                Z is Y+1,
                division(X,Z).

esprimo(X) :- integer(X),
              X > 1,
              \+ division(X,2).

rotar([H|T], Z):- append(T, [H], X), number_chars(Z, X).

circular(NUM, X, COUNT):- COUNT =:= 3,
                          esprimo(NUM).


circular(NUM, X, COUNT):- COUNT < 3,
                          esprimo(NUM),
                          number_chars(NUM, LIST),
                          rotar(LIST, Z),
                          Y is COUNT +1,
                          circular(Z,X,Y).
