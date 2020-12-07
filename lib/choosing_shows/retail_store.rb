require 'pry'

class RetailStore 

    @@all = []

    def initialize(hash)
        
        hash.each do |key, value|
            
            self.class.attr_accessor key
            self.send("#{key}=" , value) 
            binding.pry
        end
        self.class.all << self
    end

    def self.all
        @@all
    end

end