
Quando("eu enviar um GET para o serviço typecode") do
    @obj_get.enviar_get
  end
  
  Entao("deve retornar ID e TITTLE de todos os itens com status completed = true") do
    @obj_get.retorna_title_id
  end
  
  Entao("deve ser retornado o código de resposta {string}") do |status_code|
    validarstatus = @obj_get.validastatus
    expect(validarstatus) == status_code
  end

