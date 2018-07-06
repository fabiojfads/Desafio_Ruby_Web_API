#language:pt

Funcionalidade: Consulta de passagens
    Eu como um usuário do sistema
    Quero consultar passagens aéreas    

    @consulta_passagens
    Cenário: Consulta de passagens futuras

        Dado que eu esteja na pagina home travels
        E acesse a aba flights
        E pesquise um destino  "SDK" de viagem
        E a data de consulta deve ser daqui a que três meses do atual
        Então sera exibido o destino pesquisados