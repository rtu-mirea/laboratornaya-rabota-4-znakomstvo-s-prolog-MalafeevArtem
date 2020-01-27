/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB1
 FileName: «¿ƒ¿Õ»≈7.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/



domains
  product = integer
  sum = integer

predicates
  add(sum,sum,sum) - procedure (i,i,o)
  multiply(product,product,product) - procedure (i,i,o)

clauses
  add(X,Y,Sum):-
	Sum=X+Y.
  multiply(X,Y,Product):-
	Product=X*Y.

goal
  %add(32,54,Sum).
  multiply(5,4,Product).
  