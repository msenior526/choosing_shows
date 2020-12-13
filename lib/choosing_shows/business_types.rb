class BusinessType
    attr_accessor :type

    @@all = []

    def initialize(type)
        self.type = type
        self.class.all << self
    end

    def self.all
        @@all
    end

    def retail_stores
        RetailStores.all.select do |store|
            store.business_type == self
        end
    end
    
    def self.find_by_type(type)
        self.all.detect do |business|
            business.type == type
        end
    end

    def self.find_or_create_by_type(type)
       self.find_by_type(type) || self.new(type)
    end

end

 