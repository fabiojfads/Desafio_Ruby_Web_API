Before do
    @obj_get = GetTypicode.new
    @obj_books = BooksPost.new
    @login_page = LoginPage.new
    @cadastro_page = CadastroPage.new
    @home_travels_page = HomePage.new
    @flights_page = ConsultaPage.new
    page.current_window.resize_to(1280, 800)
  end
  
  After do |scenario|
    nome_cenario = scenario.name.tr(' ', '_').downcase!
    nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '_')
    screenshot = "log/shots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Clique aqui para ver a evidência!')
  end