require 'pry'

class RetailStore
    # attr_accessor :type, :business_name, :address, :city_state, :zip_code, :phone_number

    @@all = []

    def initialize(hash)
        hash.each do |key, value|
            # binding.pry
            self.class.attr_accessor key
            self.send("#{key}=" , value) 
        end
        self.class.all << self
    end

    def self.all
        @@all
    end

    def get_details
        API.get_businesses.each do |business|
            business.select {|store| store["type_of_business"] == "Retail"}
           # binding.pry
        end          
        end
    end