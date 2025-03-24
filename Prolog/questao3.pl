% Nota: 10/10

/*
Em eventos culturais, pessoas de diferentes idades podem pagar meia-entrada ou entrada completa com base nos seguintes critérios:

- Crianças com 13 anos ou menos pagam meia-entrada

- Idosos com 60 anos ou mais pagam meia-entrada

- Pessoas entre 14 e 59 anos pagam entrada completa, a menos que possuam carteira de estudante

Implemente um programa que receba como entrada uma lista com as idades de todas as pessoas que comparacerão, número de pessoas com carteira de estudante e o valor da entrada completa em reais e que faça o cálculo de quanto irá custar para pagar o ingresso de todos.
*/

main:-
read(Idades),
read(Estudante),
read(Entrada),
calcular_ingresso(Idades, Estudante, Entrada),
halt.

calcular_ingresso(Idades, Estudante, Entrada):-
qntd_meia(Idades, MeiaParcial),
length(Idades, TamListaIdades),
MeiaTotal is MeiaParcial + Estudante,
InteiraTotal is TamListaIdades - MeiaTotal,
ValorTotal is (MeiaTotal * (Entrada/2)) + (InteiraTotal * Entrada),
format('Meias entradas: ~d~n', [MeiaTotal]),
format('Entradas completas: ~d~n', [InteiraTotal]),
format('Preço total: ~2f reais~n', [ValorTotal]).

qntd_meia([], 0).

qntd_meia([Idade|Resto], MeiaParcial):-
(Idade =< 13 ; Idade > 60),
qntd_meia(Resto, MeiaParcialAcc),
MeiaParcial is MeiaParcialAcc + 1.

qntd_meia([_|Resto], MeiaParcial):-
qntd_meia(Resto, MeiaParcial).
