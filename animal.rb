class Animal
    attr_accessor :name, :species, :toys

    def initialize(name, species)
        @name = name
        @species = species
        @toys = []
    end

    def change_name(name)
        @name = name
    end

    def change_species(species)
        @species = species
    end

    def give_toy(toy)
        @toys << toy
    end

end
