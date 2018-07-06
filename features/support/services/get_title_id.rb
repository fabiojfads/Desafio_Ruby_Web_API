class GetTypicode

    include HTTParty
    base_uri 'http://jsonplaceholder.typicode.com'

    #Realiza um get na api e retorna todos os dados
    def enviar_get
        @get_retorno = self.class.get('/todos')
    end

    def validastatus
        if @get_retorno.code == 200
          puts @get_retorno.code
        end
    end
    #Retorna os id e title 
    def retorna_title_id
        @get_retorno.each do |itens|
            if itens['completed'].eql?(true) and @get_retorno.code == 200
                puts itens['id']
                puts itens['title']  
            end   
        end
           

    end

end