require 'pry'

class RetailStore 

    attr_accessor :business_type

    @@all = []

    def initialize(hash)
        hash.each do |key, value|
            self.class.attr_accessor key
            self.send("#{key}=" , value) 
        end
        self.class.all << self
    end

    def self.all
        @@all
    end

end