% Nota: 10/10
% Uso de recursividade em Prolog (Caso base e Caso recursivo)
/*
Imagine que um viajante do tempo deseja explorar diferentes períodos históricos, mas precisa evitar paradoxos temporais. Para isso, ele pode viajar apenas para anos que não causem paradoxos, seguindo estas regras:

1 - O viajante pode viajar para qualquer ano no passado,  desde que seja um múltiplo do ano de nascimento dele.

2 - Ele pode viajar para o futuro, mas apenas para anos que sejam potências do seu ano de nascimento.

3 - Se o viajante tentar ir para um ano inválido, um aviso de "Paradoxo detectado!" deve ser exibido.

Implemente um programa em Prolog que permita verificar se um viajante pode viajar para

um determinado ano sem causar paradoxos. O programa deve:

-Solicitar ao usuário o ano de nascimento do viajante.

-Solicitar o ano de destino desejado.

-Verificar se a viagem é válida.

-Exibir "Viagem permitida!" se o ano for permitido.

-Exibir "Paradoxo detectado!" caso contrário.
*/

main:-
read(AnoNasc),
read(AnoDestino),
verifica_viagem(AnoNasc, AnoDestino),
halt.

verifica_viagem(AnoNasc, AnoDestino):- AnoNasc < AnoDestino, viagem_futuro(AnoNasc, AnoDestino), write('Viagem permitida!'), !.
verifica_viagem(AnoNasc, AnoDestino):- AnoNasc >= AnoDestino, viagem_passado(AnoNasc, AnoDestino), write('Viagem permitida!'), !.
verifica_viagem(_, _):- write('Paradoxo detectado!').

viagem_passado(AnoNasc, AnoDestino):- AnoNasc mod AnoDestino =:= 0.

viagem_futuro(AnoNasc, AnoDestino):- AnoDestino mod AnoNasc =:= 0, potencia(AnoNasc, AnoDestino).

potencia(AnoNasc, AnoDestino):- AnoNasc =:= AnoDestino.
potencia(AnoNasc, AnoDestino):- AnoDestino mod AnoNasc =:= 0, NovoValor is AnoDestino // AnoNasc, potencia(AnoNasc, NovoValor).






% Perceba que não utilizei a estrutura condicional if-then-else, e sim, somente regras com valores coringas, evitando a repetição desnecessária de código!
% Prolog força o programador a pensar de fato como a lógica é construída, como premissas a serem julgadas e buscadas pela base de conhecimento (respeitando
% a ordem de execução do algoritmo de busca em Prolog).