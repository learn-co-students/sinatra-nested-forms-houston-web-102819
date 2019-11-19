class Pirate

    @@all = []
    attr_accessor :name, :weight, :height

    def initialize(atts)
        @name = atts[:name]
        @weight = atts[:weight]
        @height = atts[:height]
        @@all << self
    end

    def self.all
        @@all
    end


end