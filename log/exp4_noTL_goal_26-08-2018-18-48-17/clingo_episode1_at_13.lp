1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((3, 8)).

wall((3, 6)).

wall((4, 8)).

wall((5, 8)).

wall((5, 6)).

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((10, 8)).

wall((11, 8)).

wall((11, 6)).

wall((12, 8)).

wall((12, 6)).
%START
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), action(up, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).

%END
%AAA
state_at((13, 7), 13).
%BBB
%CCC
time(13..250).
%DDD
%ANSWER SETS

%state_at((13,7),13)
%state_at((1,7),14)
%action(up,13)
%state_at((1,7),15)
%action(up,14)
%state_at((1,7),16)
%action(up,15)
%state_at((1,7),17)
%action(up,16)
%state_at((1,7),18)
%action(up,17)
%state_at((1,7),19)
%action(up,18)
%state_at((3,7),14)
%state_at((3,7),15)
%state_at((3,7),16)
%state_at((3,7),17)
%state_at((3,7),18)
%state_at((3,7),19)
%state_at((3,7),21)
%state_at((5,7),14)
%state_at((5,7),15)
%state_at((5,7),16)
%state_at((5,7),17)
%state_at((5,7),18)
%state_at((5,7),19)
%state_at((5,7),21)
%state_at((7,7),14)
%state_at((7,7),15)
%state_at((7,7),16)
%state_at((7,7),17)
%state_at((7,7),18)
%state_at((7,7),19)
%state_at((7,7),21)
%state_at((8,7),14)
%state_at((8,7),15)
%state_at((8,7),16)
%state_at((8,7),17)
%state_at((8,7),18)
%state_at((8,7),19)
%state_at((8,7),20)
%state_at((8,7),22)
%state_at((9,7),14)
%state_at((9,7),15)
%state_at((9,7),16)
%state_at((9,7),17)
%state_at((9,7),18)
%state_at((9,7),19)
%state_at((9,7),20)
%state_at((9,7),21)
%state_at((11,7),14)
%state_at((11,7),15)
%state_at((11,7),16)
%state_at((11,7),17)
%state_at((11,7),18)
%state_at((11,7),19)
%state_at((11,7),21)
%state_at((11,7),22)
%state_at((12,7),14)
%state_at((12,7),15)
%state_at((12,7),16)
%state_at((12,7),17)
%state_at((12,7),18)
%state_at((12,7),19)
%state_at((12,7),20)
%state_at((12,7),22)
%state_at((0,8),14)
%state_at((0,8),15)
%state_at((0,8),16)
%state_at((0,8),17)
%state_at((0,8),18)
%state_at((0,8),19)
%action(right,21)
%action(right,20)
%state_at((1,8),20)
%action(right,19)
%state_at((13,7),21)
%state_at((13,7),20)
%state_at((10,7),22)
%state_at((10,7),21)
%state_at((10,7),20)
%state_at((6,7),22)
%state_at((6,7),20)
%state_at((4,7),22)
%state_at((4,7),20)
%state_at((2,7),20)
%state_at((13,6),14)
%state_at((14,7),21)
%state_at((14,7),22)
%state_at((2,8),21)
%state_at((13,5),15)
%state_at((3,8),22)
%state_at((15,7),22)
%state_at((13,4),16)
%state_at((13,3),17)
%state_at((13,2),18)
%state_at((13,1),19)
%state_at((14,1),20)
%state_at((15,1),21)
%state_at((16,1),22)
