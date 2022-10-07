female(sita).
female(ramya).
female(priya).
female(lilly).

male(ram).
male(raj).
male(tej).
male(peter).

parent(raj,priya).
parent(ramya,priya).
parent(sita,tej).
parent(ram,tej).
parent(ramya,peter).
parent(raj,petter).
parent(ram,lilly).
parent(sita,lilly).

mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X\==Y.
bother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.
