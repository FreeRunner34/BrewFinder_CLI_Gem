require_relative 'brewfinder'
require 'rubygems'
require 'httparty'
require 'pry'

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

Brew_list = Brewfinder.new
Brew_list.breweries
