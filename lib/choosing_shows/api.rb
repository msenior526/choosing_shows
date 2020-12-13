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
                type_business = BusinessType.find_or_create_by_type(business["type_of_business"])
                hash = {business_type: type_business, parsed_address: business["parsed_address"], city_state: business["city_state"],zip_code: business["zip_code"], phone_number: business["phone_number"], business: business["business"]   }
                RetailStore.new(hash)
            end
            # && business["type_of_business"] == "Apparel and Footwear" || business["type_of_business"] == "Beauty"
        end
    end
end


