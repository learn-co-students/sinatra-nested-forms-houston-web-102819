class Ship

    attr_accessor :name, :type, :booty
    @@all = []

    def initialize(atts)
        @name = atts[:name]
        @type = atts[:type]
        @booty = atts[:booty]
        @@all << self
    end

    def self.clear
        @@all = []
    end

    def self.all
        @@all
    end


end