% Prova 23.2

/********
QUESTÃO 3
*********/

% Regra principal
elementos_unicos(L1, L2, R) :- 
    append(L1, L2, ListaRepetidos),
    remove_duplicata(ListaRepetidos, [], R).

% Caso Base
remove_duplicata([], _, []).

% Se houver repetido
remove_duplicata([H | T], Repetidos, R) :-
    member(H, T), !,
    remove_duplicata(T, Repetidos, R).

% Se não houver repetido
remove_duplicata([H | T], Repetidos, [H | R]) :-
    remove_duplicata(T, [H | Repetidos], R).

/********
QUESTÃO 4
*********/

% Caso Base
substituir_elemento([], _, _, []).

substituir_elemento([H | T], Alvo, Troca, [Troca | R]) :- 
    H = Alvo, !,
    substituir_elemento(T, Alvo, Troca, R).

substituir_elemento([H | T], Alvo, Troca, [H | R]) :-
    substituir_elemento(T, Alvo, Troca, R).

%----------------------------------------------------------------------------------------------------------------------------------------------------------

% Prova --.-

/********
QUESTÃO 2
*********/

intervalo_decrescente(A, B, _) :-
    A < B,
    write('Não Existe!'), !, fail.

intervalo_decrescente(A, B, R) :-
    intervalo_aux(A, B, R).

% Caso base
intervalo_aux(A, B, [A]) :-
    A =:= B, !.

intervalo_aux(A, B, [A | R]) :-
    A > B,
    A1 is A - 1,
    intervalo_aux(A1, B, R).

/********
QUESTÃO 3
*********/

% Caso Base
consolida([], []).

consolida([L | LL], R) :-
    consolida(LL, R1),
    append(L, R1, R).

%----------------------------------------------------------------------------------------------------------------------------------------------------------

% Prova 24.1

/********
QUESTÃO 3
*********/

% Caso Base
remove([], []).

remove([H | [H | T]], R) :- 
    !, remove([H | T], R).

remove([H | T], [H | R]) :- 
    remove(T, R).

/********
QUESTÃO 4
*********/

% Caso Base
separa([], [[], []]).

separa([H | T], [[H | R1], R2]) :-
    number(H),
    separa(T, [R1, R2]), !.

separa([H | T], [R1, [H | R2]]) :-
    separa(T, [R1, R2]).

%----------------------------------------------------------------------------------------------------------------------------------------------------------

% Prova 24.2

/********
QUESTÃO 3
*********/

conta_distintos(L, R) :-
    conta_aux(L, [], R).

conta_aux([], Vistos, R) :-
    length(Vistos, R), !.

conta_aux([H|T], Vistos, R) :-
    member(H, Vistos),
    conta_aux(T, Vistos, R), !.

conta_aux([H|T], Vistos, R) :-
    \+ member(H, Vistos),
    append([H], Vistos, VistosAtual),
    conta_aux(T, VistosAtual, R).

/* Testes
conta_distintos([a,b,a,c,a,b], R) -> R=3
conta_distintos([a,a,a,a], R) -> R=1
*/

/********
QUESTÃO 4
*********/

inserir_ordenado(X, [], [X]).

inserir_ordenado(X, L, R) :-
    inserir_ordenado_aux(X, L, [], R).

inserir_ordenado_aux(X, [], L2, R) :-
    (member(X, L2) -> R = L2 ; append(L2, [X], R)), !.

inserir_ordenado_aux(X, [Y|T], L2, R) :-
    X =< Y, append(L2, [X, Y|T], R), !.

inserir_ordenado_aux(X, [Y|T], L2, R) :-
    append(L2, [Y], L3), inserir_ordenado_aux(X, T, L3, R).

/* Testes
inserir_ordenado(3, [1, 2, 4, 5], R) -> R = [1, 2, 3, 4, 5]
inserir_ordenado(0, [1, 2, 4, 5], R) -> R = [0, 1, 2, 4, 5]
*/
