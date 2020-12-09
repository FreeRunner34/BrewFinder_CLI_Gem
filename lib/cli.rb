# require 'pry'

class Cli

    def menu
        
        Brewfinder.new.breweries
        running_loop
        
        # puts "option 1: see a list of Breweries"
        # #other options to be updated and created later. 
        # # puts "option 2: search a Brewery by Name"
        # # puts "option 3: search a Brewery by City"
        # # puts "option 4: search a Brewery by State"
        # # puts "option 5: search a Brewery by Postal Code"
    end 

    def list_breweries
        counter = 1 
        Brewery.all.each do |brewery| 
           puts "#{counter}" + ". " + brewery.name
           counter += 1 
        end 
    end 

    def running_loop
        loop do 
            list_breweries
            puts"Choose a number you'd like to see more about or type exit to quit."
            input = gets.chomp
            if input == "exit"
                break
            elsif input.to_i.between?(1,Brewery.all.size)
                brewery_details(input)
                sleep(5)
            else 
                puts "invalid input try again"
            end 
            sleep(1)
        end 
    end 

    def brewery_details(input)
        selected_brewery = Brewery.all[input.to_i-1]
        puts selected_brewery.phone 
        puts selected_brewery.website_url
        puts selected_brewery.street
        puts selected_brewery.city
        puts selected_brewery.state
    end 
end 
