/*****************************************************************************

		Copyright (c) My Company

 Project:  LAB1
 FileName: «¿ƒ¿Õ»≈5.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/


domains
s=symbol 

predicates
nondeterm parent(s,s)
female(s)
male(s)
mother(s,s)
father(s,s)
nondeterm ancestor(s,s)
child(s,s)
nondeterm brother(s,s)
nondeterm sister(s,s)
nondeterm grandfather(s,s)
nondeterm grandmother(s,s)

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

grandfather(X,Y):- parent(Z,Y),parent(X,Z),male(X).

grandmother(X,Y):- parent(Z,Y),parent(X,Z),female(X).

sister(X,Y):- parent(Z,X),parent(Z,Y),X<>Y,female(X).
 
brother(X,Y):- parent(Z,X),parent(Z,Y),X<>Y,male(X).
 
goal

%female(liz). %yes

%female(pam), 
%male(ann). %no

%mother(pat, jim). %yes

%child(liz, tom),
%child(bob, tom). %yes

%ancestor(pam, bob). %yes

%sister(liz, bob). %yes

%brother(liz, bob). %no

grandfather(pam, ann). %no