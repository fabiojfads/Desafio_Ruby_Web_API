

Dado("que eu sou um cliente e informou os dados de um novo livro:") do |table|
    
    @request = table.rows_hash
    @obj_books.body_books(@request[:ID], @request[:Title], @request[:Description], @request[:PageCount], @request[:Excerpt], @request[:PublishDate])

end
  
Quando("envio uma requisicao POST para o serviço BOOKS") do
    
  @obj_books.post_books

end
  
Então("devo receber o código de resposta {string}") do |code_status|
    
  expect($retorno.code).to eql code_status.to_i

end
  

