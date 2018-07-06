class HomePage < SitePrism::Page
    set_url 'https://www.phptravels.net'

    element :label_fligths, 'a[href="https://www.phptravels.net/flights"]'
    
    def click_fligths
        label_fligths.click
    end 
end