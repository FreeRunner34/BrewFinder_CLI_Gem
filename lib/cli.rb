require_relative 'api.rb'
require_relative 'brewfinder.rb'
# require 'pry'

class Cli

    def menu
        puts "option 1: see a list of Breweries"
        #other options to be updated and created later. 
        # puts "option 2: search a Brewery by Name"
        # puts "option 3: search a Brewery by City"
        # puts "option 4: search a Brewery by State"
        # puts "option 5: search a Brewery by Postal Code"

        input = gets.chomp  
        if input == "1"
            option_1
            puts "Please select the number of a brewery you'd like to see more about"
            prompt = gets.chomp.to_i
            selected_brewery = Brewery.all[prompt-1]
                puts selected_brewery.website_url
        else 
            exit 
        end 
    end 

    def option_1
        counter = 1 
        Brewery.all.each do |brewery| 
           puts "#{counter}" + ". " + brewery.name
           counter += 1 
        end 
    end 

end 
