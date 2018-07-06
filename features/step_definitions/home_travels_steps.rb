Dado("que eu esteja na pagina home travels") do
    @home_travels_page.load
    expect(@home_travels_page.label_fligths.text).to eql 'FLIGHTS'
end

Dado("acesse a aba flights") do
    @home_travels_page.click_fligths
end