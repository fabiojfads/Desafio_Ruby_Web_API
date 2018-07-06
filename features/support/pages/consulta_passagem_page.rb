class ConsultaPage < SitePrism::Page
    #Fligts
    element :campo_destinos, '#s2id_autogen1'
    elements :seletor_destinos, '.select2-results > li'
    element :campo_data_partida, 'input[placeholder="Depart"]'
    element :botao_search, 'div[class="bgfade col-md-1 col-xs-12 search-button"]'
    elements :resultado_busca, 'div[class="col-md-4 col-sm-3 col-xs-4"]'

    def consulta_passagem(cpdestinos)
        find('#s2id_autogen1').set cpdestinos
        find('.select2-results', text: cpdestinos).select_option
    end

    def data_passagem(cpdate)
        campo_data_partida.set cpdate     
        find('div[class="bgfade col-md-1 col-xs-12 search-button"]').click
        
    end
end