-- Nota: 10/10
{-
Faça um programa que simule a batalha de tripulações onde as tripulações possuem uma quantidade de  membros e uma força de combate específica. Durante uma batalha entre duas tripulações, a força de combate de cada tripulação é representada por uma lista de números inteiros, onde cada número corresponde à força de um membro. O objetivo é determinar qual tripulação tem a maior força de combate somando as forças dos membros da tripulação.

Dada a força de combate de duas tripulações, calcule a soma das forças de cada tripulação. Com base na soma total, determine qual das tripulações venceu a batalha. Considere a seguinte lógica:

1 - Se a soma das forças da primeira tripulação for maior que a soma da segunda tripulação, a primeira tripulação venceu.

2 - Se a soma das forças da segunda tripulação for maior que a soma da primeira tripulação, a segunda tripulação venceu.

3 - Se as somas forem iguais, a batalha foi empatada. 



A entrada será composta por duas listas de inteiros (forças dos membros de cada tripulação)  e o resultado será exibido no formato:

    "Tripulacao 1 venceu"

    "Tripulacao 2 venceu"

    "Empate"
-}

main:: IO ()
main = do
    print "Digite as forcas da Tripulacao 1:"
    input <- getLine
    let tripulacao1 = map (read :: String -> Int) (words input)

    print "Digite as forcas da Tripulacao 2:"
    input <- getLine
    let tripulacao2 = map (read :: String -> Int) (words input)

    let tripVencedora = ehVencedora tripulacao1 tripulacao2

    print tripVencedora

ehVencedora:: [Int] -> [Int] -> String
ehVencedora trip1 trip2
    | pontosTrip1 > pontosTrip2 = "Tripulacao 1 venceu"
    | pontosTrip2 > pontosTrip1 = "Tripulacao 2 venceu"
    | otherwise = "Empate"
    where
        pontosTrip1 = sum trip1
        pontosTrip2 = sum trip2

-- A função `words` transforma uma string em uma lista de string, com a diferença que os espaços em branco não são adicionados nessa lista
-- Separando cada elemento, devido ao delimitador do espaço em branco (white space)