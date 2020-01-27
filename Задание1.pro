/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB1
 FileName: �������1.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

domains
s=symbol 

predicates
parent(s,s)
female(s)
male(s)
mother(s,s)
father(s,s)
ancestor(s,s)
child(s,s)

clauses
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

female(pam). 
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

child(Y,X):- parent(X,Y).

mother(X,Y):- parent(X,Y), female(X).

father(X,Y):- parent(X,Y), male(X).

ancestor(X,Z):- parent(X,Z).

ancestor(X,Z):- parent(X,Y),ancestor(Y,Z).

goal

%female(liz). %yes

%female(pam), 
%male(ann). %no

%mother(pat, jim). %yes

%child(liz, tom),
%child(bob, tom). %yes

%ancestor(pam, bob).

