1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((3, 4)).

wall((4, 4)).

wall((2, 7)).

wall((0, 5)).

wall((0, 4)).

wall((0, 3)).

wall((0, 2)).

wall((4, 0)).

wall((3, 0)).

wall((2, 0)).

wall((5, 0)).

wall((6, 0)).

wall((7, 0)).

wall((6, 3)).

wall((5, 4)).

wall((8, 0)).

wall((9, 6)).

wall((8, 7)).

wall((7, 7)).

wall((6, 7)).

wall((5, 7)).

wall((6, 4)).

wall((4, 7)).

wall((3, 7)).

wall((10, 7)).

wall((11, 7)).

wall((12, 3)).

wall((9, 0)).

wall((12, 2)).

wall((10, 0)).

wall((12, 1)).

wall((11, 0)).

wall((0, 1)).

wall((1, 0)).

wall((1, 7)).

wall((0, 6)).

wall((12, 7)).

wall((13, 7)).

wall((14, 7)).

wall((15, 7)).

wall((15, 4)).

wall((17, 6)).

wall((16, 7)).

wall((17, 5)).

wall((16, 4)).

wall((17, 2)).

wall((17, 3)).

wall((13, 0)).

wall((14, 0)).

wall((15, 0)).
%START
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
%AAA
state_at((10, 4), 10).
%BBB
%CCC
time(10..250).
%DDD
%ANSWER SETS

%state_at((10,4),10)
%state_at((11,4),11)
%action(right,10)
%state_at((12,4),12)
%action(right,11)
%action(right,12)
%state_at((13,4),13)
%action(up,13)
%state_at((13,3),14)
%action(up,14)
%state_at((13,2),15)
%action(up,15)
%state_at((13,1),16)
%action(right,16)
%state_at((14,1),17)
%action(right,17)
%state_at((15,1),18)
%action(right,18)
%state_at((16,1),19)
