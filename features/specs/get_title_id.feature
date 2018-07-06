#language: pt

Funcionalidade: Get typicode

    @get_title_id
    Cenario: Exibir Get com dados title e id
      Quando eu enviar um GET para o serviço typecode
      Entao deve retornar ID e TITTLE de todos os itens com status completed = true
      E deve ser retornado o código de resposta "200"
   