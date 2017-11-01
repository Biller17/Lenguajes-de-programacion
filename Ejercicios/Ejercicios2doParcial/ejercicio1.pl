
famoso(pedro).
hombre(juan).
hombre(pedro).
hombre(pablo).
hombre(rodrigo).


padre(pedro, juan).
padre(roberto, pedro).
padre(simon, roberto).

/*pattern matching  cuando hay caso base*/
ancestro(X, Y):- padre(X, Y), !.
/*con "!" no espera unificar mas, es como un break al encontrar eso*/
ancestro(X, Y) :- ancestro(X, Z), ancestro(Z, Y).

/*! cut: es como un break*/

/*funcion donde las condicions son si es hombre y si es famoso*/
feliz(X) :- hombre(X), write(X), famoso(X), write(X).





/***********************************Ejercicio contador***************************************************/

elementosLista([], Cont, Cont).
elementosLista([_|T], Cont, X):- Z is Cont+1, elementosLista(T, Z, X).
cuenta(Lista, X):- elementosLista(Lista, 0, X).
/*[H|T] head se queda con el primer numero y T se queda con el tail (el resto del arreglo) */
/* para indicar algo que nunca vamos a usar se le pone "_" a la variable*/
/* no se puede sobreescribir el valor de una variable*/

/*asi se llamaria la funcion
elementosLista([1,2,3,4,5], 0, X).*/




/***********************************Ejercicio comparador***************************************************/





comparador([], []).
comparador([H|T], [HA|TA]):- H=:=HA, comparador(T,TA).




/***********************************Ejercicio split de lista***************************************************/


/*funcion de length =      length([1,2,3,4], X).*/
/*
splitter([],Count,A,B).
splitter([H|T], Count, A, B):- Count=:=0, append([], T, W), append(A,H,Z), splitter([],0,Z,W).
splitter([H|T], Count, A, B):- Count > 0, append(A,H,Z), C is Count-1, splitter(T,C,Z,B).
splitter(ARR, Count, A, B):- Count=:=1, length(ARR,X), H is X/2, splitter(ARR, H, A, B).*/



splitterbueno(ARR, A, B):- append(X,Y,ARR), length(X,A), length(Y,B), A=:=B , !.



/***********************************Ejercicio maximo***************************************************/


getmax([],N, M):- M is N.
getmax([H|T],N, M):- H > N, getmax(T, H, M).
getmax([H|T],N, M):- H =< N, getmax(T, N, M).
