% Nota: 10/10

% Uso do predicado de lista `findall` (um `filter`)

/*
É Natal e você está colocando no carrinho presentes para todos os seus amigos. Ao chegar no caixa, você percebeu que não tem limite para levar tudo!
Implemente um programa que, dada a lista de preços (valor inteiro) de todos os seus itens e seu limite disponível no cartão, 
retorne uma lista com os produtos que você poderá comprar consumindo exatamente todo o seu limite.
*/

main:-
read(Lista),
read(Limite),
findall(Combinacao, combina(Lista, Limite, Combinacao), Resultado),
write(Resultado), halt.

% Caso base
combina(_, 0, []).

% Recursão (incrementando o head da lista)
combina([H|T], Limite, [H|CombResto]):-
X is Limite-H,
X >= 0,
combina(T, X, CombResto).

% Recursão (não incrementando o head da lista)
combina([_|T], Limite, Combinacao):-
combina(T, Limite, Combinacao).
