require 'pry'

class RetailStore
    attr_accessor :type, :business_name, :address, :city_state, :zip_code, :phone_number

    @@all = []

    def initialize 
        @@all << self
    end

    def self.all
        @@all
    end

    def get_details
        API.get_businesses.each do |business|
            business.select {|store| store["type_of_business"] == "Retail"}
            binding.pry
        end          
        end
    end