/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB1
 FileName: «¿ƒ¿Õ»≈6.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

predicates

can_buy(symbol, symbol)
person(symbol)
telephone(symbol)
likes(symbol, symbol)

clauses

can_buy(X, Y):-
	person(X),
	telephone(Y),
	likes(X,Y).
person(artem).
person(kolya).
person(alice).
person(katya).
telephone(apple).
telephone(samsung).
telephone(xiaomi).
likes(artem, apple).
likes(alice, apple).
likes(kolya, xiaomu).
likes(katya, xiaomi).

goal

%can_buy(katya, apple). %no

%can_buy(artem, apple). %yes

likes(kolya, xiaomi). %no
