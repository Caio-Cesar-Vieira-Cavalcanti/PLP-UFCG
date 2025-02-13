-- Nota: 10/10
{-
Escreva um programa que recebe um inteiro e soma os seus digitos repetidamente até que o resultado tenha apenas um único digito.

Por exemplo: 12345 

-> 1+2+3+4+5 = 15 

-> 1+5 = 6
-}

main:: IO ()
main = do
    numero <- readLn :: IO Int
    let resultado = somaUnicoDigito numero
    print resultado

somaUnicoDigito:: Int -> Int
somaUnicoDigito num
    | num < 10 = num
    | otherwise = somaUnicoDigito (somaDigitos num)

somaDigitos:: Int -> Int
somaDigitos 0 = 0
somaDigitos num = (num `div` 10) + (num `mod` 10)

-- Exemplos:
-- 123
-- 1,23 ; 23 é resto e 1 é e o resultado da divisão inteira
-- Faz esse processo para cada combinação de dígitos (recursivamente) pela função `somaUnicoDigito`