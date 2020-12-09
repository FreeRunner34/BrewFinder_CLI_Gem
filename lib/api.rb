#https://api.openbrewerydb.org/breweries

class Brewfinder
    include HTTParty

    base_uri "api.openbrewerydb.org"

    def breweries
        brews = self.class.get("/breweries")
        brews.each do |array|
            Brewery.new(array)
        end
        #binding.pry
    end 
end  
