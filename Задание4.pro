/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB1
 FileName: «¿ƒ¿Õ»≈4.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

predicates

car(symbol,real,integer,symbol,integer)
truck(symbol,real,integer,symbol,integer)

clauses

car(chrysler,13000,3,red,12000).
car(ford,90000,4,gray,25000).
car(datsun,8000,1,red,30000).
truck(ford,80000,6,blue,8000).
truck(datsun,50000,5,orange,20000).
truck(toyota,25000,5,black,25000).

goal

%car(ford,90000,4,gray,25000). %yes

%truck(toyota,25000,5,black,25000). %yes

truck(audi,8000,1,red,30000). %no
