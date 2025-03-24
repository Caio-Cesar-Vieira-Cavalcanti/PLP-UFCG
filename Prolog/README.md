# Prolog - Paradigma Lógico

Este repositório aborda questões e arquivos de códigos vistos e feitos durante as aulas da disciplina, exclusivas para as discussões do paradigma lógico e da linguagem de programação Prolog.

## Uso da IDE VPL no PVAE
As questões devem ser enviadas como arquivo de código - Prolog (.pl) - criadas na IDE - VPL - utilizada no PVAE (plataforma que armazena os conteúdos e as questões da disciplina).

-> Pontos importantes a serem lembrados:
* A IDE não permite colagem de código externo (tudo precisa ser feito na **própria IDE**)
* Não esqueça de salvar o arquivo de código - símbolo de disquete
* No símbolo de "foguete" é possível executar o código e testar algumas entradas ao seu critério.
> Para enviar/submeter a sua resposta, basta salvar o arquivo, e clicar no símbolo de *task* com o nome "Avaliar", no qual, será executado todos os testes da questão, e emitirá uma mensagem com o histórico de cada teste individual, e se falhou ou não.

## Modelo de questão em Prolog
Abaixo estará escrito um pequeno código em Prolog, como um exemplo de resposta a ser produzida para uma determinada questão.

A interação com os testes se dará pela **entrada e saída** do seu programa.
* Ou seja, deve existir a relação `main`.
* Pode, além da relação principal, existir diversas outras regras **auxiliares**, e isso é totalmente recomendado!
* Em algumas questões, será necessário o uso de **cortes** ou do predicado `halt`, para impedir que o Prolog continue buscando mais de um solução durante sua execução (encerrando o programa na primeiro caso verdadeiro e que satisfaça a regra).

__Exemplo de questão:__ Escreva um program que recebe um inteiro e retorna seu dobro.

```prolog
dobro(X, Y) :- Y is X * 2.

main :- read(X), dobro(X, Y), write(Y).
```

## Outros
Para mais informação acerca da linguagem, estará abaixo, os links de acesso a documentação oficial e dois guias do básico ao avançado - em inglês - da linguagem.
* [Documentação de Prolog](https://www.swi-prolog.org/pldoc/doc_for?object=root)
* [A Concise Introduction to Prolog](http://matuszek.org/prolog/prolog.html)
* [Learn Prolog Now!](https://www.let.rug.nl/bos/lpn//)