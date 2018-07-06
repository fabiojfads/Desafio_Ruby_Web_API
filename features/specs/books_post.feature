#language: pt

Funcionalidade: Cadastro de livro

    @cad_book_post
    Cenario: Cadastro de um novo livro
    Dado que eu sou um cliente e informou os dados de um novo livro:
        | ID          | 0                        |
        | Title       | Livro Teste              |
        | Description | Livro referente a testes |
        | PageCount   | 200                      |
        | Excerpt     | Livros Teste 2           |
        | PublishDate | 2018-06-23T17:32:23.435Z |
    Quando envio uma requisicao POST para o serviço BOOKS
    Então devo receber o código de resposta "200"