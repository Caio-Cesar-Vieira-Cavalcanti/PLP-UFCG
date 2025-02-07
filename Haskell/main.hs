-- Exemplo de "Hello, World!"
main :: IO ()
main = do
  putStrLn "Hello, World"

-- Questões dos slides
soma :: Int -> Int -> Int
soma x y = x + y

incrementa :: Int -> Int
incrementa x = x + 1

-- As questões abaixo já existem na linguagem, e para diferenciá-las na
-- execução do `ghci`, precisa inserir o nome do módulo da função (esse arquivo)
-- para deixar explícito o uso DESTA função, e não da própria linguagem 
-- Ex: Main.abs ...

abs :: Integer -> Integer
abs n =
  if n > 0
    then n
    else -n

succ :: Int -> Int
succ x = x + 1