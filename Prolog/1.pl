отец(Oleg, Sergei).
отец(Ruslan, Viktor).
отец(Viktor, Oleg).
отец(Oleg, Koharu).
отец(Oleg, Rio).

мать(Asuna, Sergei).
мать(Karin, Oleg).
мать(Asuna, Koharu).
мать(Asuna, Rio).

мужчина(Oleg).
мужчина(Ruslan).
мужчина(Viktor).
мужчина(Sergei).

женщина(Asuna).
женщина(Karin).
женщина(Koharu).
женщина(Rio).

родитель(Oleg, Sergei).
родитель(Ruslan, Viktor).
родитель(Viktor, Oleg).
родитель(Oleg, Koharu).
родитель(Asuna, Sergei).
родитель(Karin, Oleg).
родитель(Asuna, Koharu).
родитель(Asuna, Rio).
родитель(Oleg, Rio).


различны(X, Y):-
    X \= Y.

является_матерью(X):-
    мать(X, _).
является_отцом(X):-
    отец(X, _).
является_сыном(X):-
    мужчина(X), родитель(_, X).
является_сестрой(X, Y):-
    женщина(X), различны(X, Y), родитель(Par, X), родитель(Par, Y).
дедушка(X, Y):-
    мужчина(X), родитель(Par, Y), родитель(X, Par).
общие_родители(X, Y):-
    родитель(Par, X), родитель(Par, Y).



















