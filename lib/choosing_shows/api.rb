require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class API

    URL = "https://data.cityofnewyork.us/resource/p6bh-gqsg.json"

    def self.get_businesses
       uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        businesses = JSON.parse(response.body)
        businesses.each do |business|
            if business["category"] == "Retail"
                hash = {type_of_business: business["type_of_business"], parsed_address: business["parsed_address"], city_state: business["city_state"],zip_code: business["zip_code"], phone_number: business["phone_number"]   }
                RetailStore.new(hash)
                
            end
        end
    end

   # def self.get_business_types
    #    uri = URI.parse(URL)
     #   response = Net::HTTP.get_response(uri)
      #  businesses = JSON.parse(response.body)
       # businesses.each do |business|
        #    binding.pry
         #   if business["type_of_business"] == ("Apparel and Footwear" || "Office Supplies and Stationary" || "Home Furnishings" || "Beauty" || "Books and News" || "Electronics and Video" || "Entertainment, Music & Games" || "Gifts and Florists" || "Optical" || "Pharmacies")
          #  end
    #    end
    #end
    # binding.pry
end


