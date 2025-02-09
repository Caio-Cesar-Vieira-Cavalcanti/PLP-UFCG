-- Utilizaremos o conceito matemático de MDC (Máximo Divisor Comum)
-- Algoritmo de Euclides
-- Nota: 10/10
{-
Ricardo e Vicente, apaixonados por figurinhas, criaram uma brincadeira onde, ao trocar figurinhas com amigos,
cada um divide suas figurinhas em pilhas do maior tamanho comum possível. Por exemplo, se Ricardo possui 8 figurinhas e Vicente 12,
a conjugaração com as maiores pilhas é aquela onde cada pilha possui 4 figurinhas. Em seguida, cada um escolhe uma pilha do amigo para trocar. 
Desenvolva um programa que baseado que recebe 2 entradas, o número de figurinhas cada jogador possuí, e retorna a maior pilha de figurinhas possível
para estes fazerem a troca. 
-}

mdc:: Int -> Int -> Int
mdc a 0 = a
mdc a b = mdc b (a `mod` b)

main:: IO ()
main = do
   numA <- readLn
   numB <- readLn
   
   let result = mdc numA numB
 
   putStrLn (show result ++ " eh o maior bolo de figurinhas possivel.")
