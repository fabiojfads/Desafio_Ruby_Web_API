## Introdução

    Projeto de automação para Web e API com Ruby.
---

## Tecnologias

* *Para documentar os cenários especificados seguindo BDD*: **Cucumber**
* *Para descrever ações que são executadas pelo driver*: **Capybara**
* *Para desenvolvimento do projeto*: **Visual Studio Code**
* *Para facilitar a criação de page objects*: **Site_prism**
* *Linguagem de programação*: **Ruby**
* *Bibliotecas*: 
    gem "rspec"
    gem "httparty"
    gem 'capybara'
    gem 'selenium-webdriver'
    gem 'cucumber'
    gem 'faker'
    gem 'site_prism'

---
## Pré-Requisitos:
    Realizar o download do Ruby: https://rubyinstaller.org/downloads/

## Instalação e configuração do Ruby

    1- No windows dar dois cliques no arquivo de instalação do ruby. 
    1.1 Após a instalação utilizar o comando ruby -v para ver se foi instalado corretamente.

    2- Após a instalação do ruby criar uma pasta: C:\Ruby23-x64\DevKit, dentro da pasta coloque o arquivo do devkit e descompacte ele.

    3- Após descompactar, entre no CMD e digita o comando: C:\Ruby23-x64\DevKit, para direcionar ao     diretório do devkit.

    4- Dentro do diretório digite o comando: ruby dk.rb install init, para realizar a configuração.

    5- Após a execução do comando ser realizada com sucesso, verificar se na pasta C:\Ruby23-x64\DevKit,o arquivo config.yml foi criado com sucesso.

    6- Abrir o arquivo e verificar se o caminho de instalação do ruby está dentro do mesmo.

    7- Após confirmar que o arquivo está correto, voltar ao cmd e digitar o comando: ruby dk.rb install

    8- Realizar a configuração para download das gems *** No windows por algum motivo o protocolo https não é aceito, então devemos realizar as configurações das gems.

    9- No prompt de comando (CMD) digitar o comando: gems source -a http://rubygems.org/ e selecionar a opção Y.

    10- Após isso, executar o comando: gems source -r https://rubygems.org/
    10.1 Em seguida, executar o comando: gems source -u

---
## Instalando as Gems do bundler
    Digitar o comando no CMD: gem install bundler

## Estrutura de arquivos

    1- Criar pasta principal do projeto
        1.1 Dentro da pasta principal criar uma pasta para execução e estrutura do cucumber.
            No prompt de comando instalar a gem do Cucumber com o comando: gem install cucumber
        1.2 Após a instalação da gem do cucumber executar o comando: cucumber --init
            Serão criada as pastas:
            features
                steps_definitions
                    Adicionar os arquivos_steps.rd
                suport
                    Adicionar pasta page e inserir os arquivos_page.rb
                    Adicionar pasta services e inserir os arquivos_services.rb
                    env.rb
    2- Criar pasta spec dentro da pasta featute e adicionar os arquivos.feature.
    3- Criar a pasta log dentro da pasta principal do arquivo.
    4- Criar pasta screenshots dntro da pasta log
        4.1 Criar arquivo features.html
        4.2 Criar arquivo features.jason
    5- Criar na pasta principal do projeto os arquivos:
        5.1 cucumber.yaml
        5.2 Executar o comando:
            5.2.1 bundle init
            Sera gerado o arquivo Gemfile, logo após as configurações do mesmo e salvo sera gerado o arquivo Gemfile.lock
    6- Criar arquivo readme.md

            
## Instalação das outras gems
    Executar os no prompt de comando:
        gem install rspec
        gem install httparty
        gem install capybara
        gem install selenium-webdriver
        gem install cucumber
        gem install faker 
        gem install site_prism 

---

## Executando o projeto
    Após ter todo ambiente configurado execute os comandos no prompt:

    1- Rodar todas os arquivos features
        1.1 No prompt de comando dentro do diretório da pasta para execução e estrutura do cucumber:
        1.2 Comando: cucumber 
    2- Para rodar apenas um cenário:
        2.1 Comando: cucumber -t <TAG> do cenario
        
---