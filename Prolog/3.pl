�����(N) :- �����������(N, �����, �������, ������).

�����������(0, _, _, _) :- !.
�����������(N, A, B, C) :-
    M is N-1,
    �����������(M, A, C, B),
    ��������(A, B),
    �����������(M, C, B, A).

��������(X, Y) :-
    write([�����������, ����, ��, �����, X, ��, �����, Y]), nl.



