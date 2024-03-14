:- use_module(library(clpfd)).

divisivel(N, D) :-
    N mod D =:= 0.    

divisiveis(N, L) :-
    P is N - 1,
    findall(K, (between(1, P, K), divisivel(N, K)), L).

perfeito(N) :-
    divisiveis(N, L),
    sum(L, #=, X),
    X =:= N.
