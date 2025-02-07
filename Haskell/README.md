# Haskell - Paradigma Funcional

Este repositório aborda questões e arquivos de códigos vistos e feitos durante as aulas da disciplina, exclusivas para as discussões do paradigma funcional e da linguagem Haskell em específico.

## Uso da IDE VPL no PVAE
As questões devem ser enviadas como arquivo de código - Haskell - criadas na IDE - VPL - utilizada no PVAE (plataforma que armazena os conteúdos e as questões da disciplina).

-> Pontos importantes a serem lembrados:
* A IDE não permite colagem de código externo (tudo precisa ser feito na **própria IDE**)
* Não esqueça de salvar o arquivo de código - símbolo de disquete
* No símbolo de "foguete" é possível executar o código e testar algumas entradas ao seu critério.
> Para enviar/submeter a sua resposta, basta salvar o arquivo, e clicar no símbolo de *task* com o nome "Avaliar", no qual, será executado todos os testes da questão, e emitirá uma mensagem com o histórico de cada teste individual, e se falhou ou não.

## Modelo de questão em Haskell
Abaixo estará escrito um pequeno código em Haskell, como um exemplo de resposta a ser produzida para uma determinada questão.

A interação com os testes se dará pela **entrada e saída** do seu programa.
* Ou seja, deve existir a função `main`.
* Pode, além da função principal, existir diversas outras funções **auxiliares**, e isso é totalmente recomendado!

__Exemplo de questão:__ Escreva um program que recebe um inteiro e retorna seu dobro.

```haskell
dobro:: Int -> Int
dobro num = num * 2

-- Função principal
main::IO()
main = do
    input <- readLn::IO Int
    print (dobro input)
```

## Outros
Para mais informação acerca da linguagem, estará abaixo, os links de acesso a documentação oficial e um guia do básico ao avançado - em português e inglês - da linguagem.
* [Documentação de Haskell](https://www.haskell.org/)
* [Guia em Português](https://haskell.tailorfontela.com.br/)
* [Guia em Inglês](https://learnyouahaskell.com/)