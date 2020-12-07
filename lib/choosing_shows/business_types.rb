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

end