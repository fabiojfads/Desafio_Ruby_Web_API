

class BooksPost
    include HTTParty
 
    base_uri 'http://fakerestapi.azurewebsites.net'

    def body_books(id, title, description, pagecount, excerpt, publishdate)
        @body = {
            "ID" => id,
            "Title"=> title,
            "Description"=> description,
            "PageCount"=> pagecount,
            "Excerpt"=> excerpt,
            "PublishDate"=> publishdate
          }
     end

    def post_books
        $retorno = self.class.post('/api/Books', body: @body, headers: { 'Content-Type' => 'application/json'})
    end

end
