�(���, ���, 58).
�(���, ���, 23).
�(���, ���, 52).
�(���, ���, 33).
�(���, ���, 39).
�(��, ��, 15).
�(��, ��, 10).
�(���, ��, 5).
�(���, ��, 25).

�����������(X, [X|_]).
�����������(X, [_|Y]) :- �����������(X, Y).

������������([], L, L).
������������([X|L1], L2, [X|L3]):-
    ������������(L1, L2, L3).

���([],[]).
���([H|T], L):-
    ���(T, Z), ������������(Z, [H], L).

��������(X, G, _):-
    asserta(�������(������)),
    call(G),
    asserta(�������(X)),
    fail.
��������(_,_,L):-
    �������_���������([], M), !, L = M.
�������_���������(S, L):- ��������(X), !,
    �������_���������([X|S], L).
�������_���������(L, L).
��������(X):-
    retract(�������(X)), !, X\==������.

�������3(����, ����, ����):-
    ����������(����, ����������, �������),
    ��������(����������, ����, �������, ����).
��������(�(�����, ����), ����, _, ����):-
    ���� = [����|_].
��������(�(�����, [������|������]), ����, ����, ����):-
    ��������(
        �(D1, [Z,������|������]),
        ��������(������, ������, Z, �����, D1),
        ������),
    ������������(������, ����, �������),
    �������3(�������, ����, ����).
����������([����|����], ����������, [����|���]):-
    ����������(����, ����������, ���),
    ������(����������, ����), !.
����������([����|���], ����, ���).
������(�(M1,_), �(M2,_)):-
    M1 < M2.
��������(X, ������, Y, �����, ��������):-
    (�(X,Y,Z);�(Y,X,Z)),
    not(�����������(Y, ������)),
    �������� is �����+Z.

�������(�����, ����, ����):-
    �������3([�(0,[�����])], ����, R),
    ���(R, ����).

