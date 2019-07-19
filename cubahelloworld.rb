require "cuba"
require "cuba/safe"

Cuba.use Rack::Session::Cookie, :secret => "__a_very_long_string__"

Cuba.plugin Cuba::Safe

Cuba.define do
  on get do
    on "hello" do
      res.write "Hello world!"
    end
    

    
        # /search?q=barbaz
    on "search", param("q") do |query|
      c = "#{query}"
      res.write "Searched for #{query}" #=> "Searched for barbaz"
      res.write "c is equal to " + c
    end

    on root do
      res.redirect "/hello"
    end
  end
end
