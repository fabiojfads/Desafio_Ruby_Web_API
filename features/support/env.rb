require "rspec"
require "httparty"
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'cucumber'
require 'faker'
require 'site_prism'
require 'pry'

#Configurando o navegador que vai subir
Capybara.configure do |config|
    config.default_driver = :selenium   #Se quiser Chrome : selenium se quiser firefox
    config.app_host = 'https://www.phptravels.net'
end
  
  #Espera pelo element por 5 segundos
 Capybara.default_max_wait_time = 15.to_i


