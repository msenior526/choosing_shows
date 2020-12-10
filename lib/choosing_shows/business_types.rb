class BusinessType
    attr_accessor :type

    @@all = []

    def initialize
        @type = type
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
    binding.pry

end

 