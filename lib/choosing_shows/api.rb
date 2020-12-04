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
        businesses
        end
    end


