����(Oleg, Sergei).
����(Ruslan, Viktor).
����(Viktor, Oleg).
����(Oleg, Koharu).
����(Oleg, Rio).

����(Asuna, Sergei).
����(Karin, Oleg).
����(Asuna, Koharu).
����(Asuna, Rio).

�������(Oleg).
�������(Ruslan).
�������(Viktor).
�������(Sergei).

�������(Asuna).
�������(Karin).
�������(Koharu).
�������(Rio).

��������(Oleg, Sergei).
��������(Ruslan, Viktor).
��������(Viktor, Oleg).
��������(Oleg, Koharu).
��������(Asuna, Sergei).
��������(Karin, Oleg).
��������(Asuna, Koharu).
��������(Asuna, Rio).
��������(Oleg, Rio).


��������(X, Y):-
    X \= Y.

��������_�������(X):-
    ����(X, _).
��������_�����(X):-
    ����(X, _).
��������_�����(X):-
    �������(X), ��������(_, X).
��������_�������(X, Y):-
    �������(X), ��������(X, Y), ��������(Par, X), ��������(Par, Y).
�������(X, Y):-
    �������(X), ��������(Par, Y), ��������(X, Par).
�����_��������(X, Y):-
    ��������(Par, X), ��������(Par, Y).



















