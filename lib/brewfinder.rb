class Brewery

  attr_accessor :id, :name, :brewery_type, :street, :address_2, :address_3, :city, :state, :county_province, :postal_code, :country, :longitude, :latitude, :phone, :website_url, :updated_at, :created_at

  @@all = []

  def initialize(attributes)
      attributes.each do |key, value| 
          self.class.attr_accessor(key)
          self.send(("#{key}="), value)
          end
          @@all << self 
  end 

  def self.all 
      @@all 
  end

  def save 
      @@all << self 
  end 

  def self.reset_all
      @@all.clear
  end 

  def self.count 
      @@all.size
  end 
  
    def micro_breweries
    Brewery.all.select do |b|
        if b.brewery_type == "micro"
            puts b.name
        end 
    end 
  end 

end 

# id
# name
# brewery_type
# street
# address_2
# address_3
# city
# state
# county_province
# postal_code
# country
# longitude
# latitude
# phone
# website_url
# updated_at
# created_at
