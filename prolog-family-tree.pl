/* Facts */
male(mohith).
male(harshith).
male(ali).
male(charan).
male(rohith).
male(aman).
female(herini).
female(adithi).
female(riya).
female(nandini).
 
parent_of(mohith,riya).
parent_of(mohith,nandini).
parent_of(herini, riya).
parent_of(herini, nandini).
parent_of(harshith,charan).
parent_of(adithi, charan).
parent_of(riya, rohith).
parent_of(ali, rohith).
parent_of(nandini, aman).
parent_of(charan, aman).
 
/* Rules */
father_of(X,Y):- male(X),
    parent_of(X,Y).
 
mother_of(X,Y):- female(X),
    parent_of(X,Y).
 
grandfather_of(X,Y):- male(X),
    parent_of(X,Z),
    parent_of(Z,Y).
 
grandmother_of(X,Y):- female(X),
    parent_of(X,Z),
    parent_of(Z,Y).
 
sister_of(X,Y):- %(X,Y or Y,X)%
    female(X),
    father_of(F, Y), father_of(F,X),X \= Y.
 
sister_of(X,Y):- female(X),
    mother_of(M, Y), mother_of(M,X),X \= Y.
 
aunt_of(X,Y):- female(X),
    parent_of(Z,Y), sister_of(Z,X),!.
 
brother_of(X,Y):- %(X,Y or Y,X)%
    male(X),
    father_of(F, Y), father_of(F,X),X \= Y.
 
brother_of(X,Y):- male(X),
    mother_of(M, Y), mother_of(M,X),X \= Y.
 
uncle_of(X,Y):-
    parent_of(Z,Y), brother_of(Z,X).

ancestor_of(X,Y):- parent_of(X,Y).
ancestor_of(X,Y):- parent_of(X,Z),
    ancestor_of(Z,Y).