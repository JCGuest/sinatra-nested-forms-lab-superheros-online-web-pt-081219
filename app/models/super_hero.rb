class SuperHero

attr_accessor :name, :power, :bio

@@all = []

def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    @@all << self
end

def self.all
    @@all
end

end