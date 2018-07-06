Dado("pesquise um destino  {string} de viagem") do |cpdestinos|
    @flights_page.consulta_passagem(cpdestinos)

end

Dado("a data de consulta deve ser daqui a que três meses do atual") do
    @cpdate = Faker::Date.forward(120)
    @flights_page.data_passagem(@cpdate)

    
end

Então("sera exibido o destino pesquisados") do
    sleep 2
    expect(@flights_page.resultado_busca[0]).to have_content('SDK')
end
 