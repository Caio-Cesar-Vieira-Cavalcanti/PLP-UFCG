% Nota: 10/10
/*
O salto triplo, introduzido nos Jogos Olímpicos de Paris em 1896, é uma prova em que o atleta realiza três saltos consecutivos, começando com um salto, seguido por um passo (consideremos que também é um salto) e terminando com um terceiro salto, para alcançar a maior distância possível. 

Escreva um programa que valida uma tentativa de salto, recebendo as seguintes entradas:

1 - Pé de Impulsão

2 - Distância do primeiro salto

3 - Pé onde anterrisou do primeiro salto

4 - Distância do segundo salto

5 - Pé onde aterrisou do segundo saltos

6 - Distância do terceiro salto

As regras são as seguintes:

- O pé que se usou para aterrissar do primeiro salto precisa ser o pé de impulsão.

- O pé que se usou para aterrissar do segundo salto precisa ser o pé oposto ao de impulsão.

Caso nenhuma dessas regras seja quebrada, imprima na tela a distância total dos saltos.

ATENÇÃO: Você deve obrigatoriamente criar a regra de partida "main".

DICAS: A regra term_string(X,Y) transforma o termo X na string Y.
*/

main:- 
read(PeImpulsao),
read(Dist1), 
read(PeAterrPrimeiro),
read(Dist2),
read(PeAterrSegundo),
read(Dist3),

verifica_salto(PeImpulsao, PeAterrPrimeiro, PeAterrSegundo),

DistTotal is Dist1 + Dist2 + Dist3,
salto_valido(DistTotal), halt.
    
% Regras e Fatos auxiliares

verifica_salto(PeImpulsao, PeAterrPrimeiro, PeAterrSegundo):-
PeImpulsao == PeAterrPrimeiro,
pe_oposto(PeAterrSegundo, PeImpulsao).

salto_valido(DistTotal):- 
write('Salto valido: '), write(DistTotal).

pe_oposto(esq, dir).
pe_oposto(dir, esq).