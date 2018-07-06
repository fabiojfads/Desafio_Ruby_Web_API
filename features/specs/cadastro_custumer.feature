# language: pt

Funcionalidade: Cadostro de Customer

    @customer
    Cenario: Realizar o cadastro de um novo customer
        Dado que eu realize o login
        E preencha os campos de cadastro
            | pais   | Brazil |
            | senha  | 123456 |
        Quando realizo o cadastro
        Entao um novo customer sera exibido na grid
