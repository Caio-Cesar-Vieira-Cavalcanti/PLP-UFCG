-- Nota: 10/10
{-
Uma empresa de passeios com cachorros precisa de um programa que calcule o trajeto 
percorrido por um cachorro durante seu passeio e verifique se ele atingiu sua meta 
diária de passos.

O sistema deve funcionar com as seguintes regras:

- Cada cachorro começa com zero passos acumulados.

- O dono do cachorro deve informar os passos dados em cada trecho do trajeto.

- A meta diária do cachorro é 1.000 passos.

Quando a soma acumulada de passos atinge exatamente os 1.000 passos, o programa deve imprimir: "Meta de passos alcançada com precisão!".

Quando a soma acumulada de passos for maior que 1.000 passos, o programa deve imprimir: "Meta de passos excedida por <diferenca> passos." onde <diferenca> é a quantidade 
de passos acima da meta.

Antes de atingir a meta, após cada registro, o programa deve exibir a mensagem: 
"Passos acumulados: <total>".
-}

main:: IO ()
main = do
    putStrLn "Sistema de rastreamento de passeios para cachorros"
  
    passosAcum 0
    
    
passosAcum:: Int -> IO ()
passosAcum num = do
    putStrLn ("Passos acumulados: " ++ show num)
    
    putStrLn "Informe os passos dados pelo cachorro:"
    input <- readLn
    let soma = num + input
    
    if soma == 1000 then putStrLn "Meta de passos alcançada com precisao!"
    else if soma > 1000 then putStrLn ("Meta de passos excedida por " ++ show (soma - 1000) ++ " passos.")
    else passosAcum soma