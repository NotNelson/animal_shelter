class Client
    attr_accessor :name, :age, :pets

    def initialize(name, age)
        @name = name
        @age = age
        @pets = []
    end

    def change_name(name)
        @name = name
    end

    def add_pet(animal)
        @pets << animal
    end

    def return_pet(animal)
        @pets.delete(animal)
    end

    def find_animal(animal_name)
        @pets.find do |pet|
            pet.name == animal_name
        end
    end
end
