class Animal

    @@all = []

    attr_accessor :weight, :zoo
    attr_reader :species, :nickname

    def initialize(species,weight,nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
    end 

    def self.all
        @@all
    end

    def zoo
        @zoo
    end

    def self.find_by_species(species)
        @@all.select do |animal|
            animal.species == species
        end
    end


end
