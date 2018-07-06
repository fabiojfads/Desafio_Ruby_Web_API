Dado("que eu realize o login com {string} e senha {string}") do |login, senha|
    @login_page.load
    @login_page.login(login, senha)
    sleep 2
  end

  Entao("sera exibida a area logada") do
    expect(@login_page.area_logada.text).to eql 'DASHBOARD'
  end
