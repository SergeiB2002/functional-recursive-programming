op(255, xfx, -->).

tag(P, S0, S, G):-
    atom(P),
    G =.. [P, S0,S].

and(true, G, G):- !.
and(G, true, G):- !.
and(G1, G2, (G1, G2)).

is_list1([]):- !.
is_list1([_|_]).

join([], L, L).
join([X|L1], L2, [X|L3]):-
    join(L1, L2, L3).


translate((P1-->P2), (G1:-G2)):-
    left(P1, S0, S, G1),
    right(P2, S0, S, G2).
left(P0, S0, S, G):-
    nonvar(P0),
    tag(P0, S0, S, G).
right((P1,P2), S0, S, G):- !,
    right(P1, S0, S1, G1),
    right(P2, S1, S, G2),
    and(G1, G2, G).
right(P, S0, S, true):-
    is_list1(P), !,
    join(P, S, S0).
right(P, S0, S, G):-
    tag(P, S0, S, G).

