# - A client should have a name.
# - A client should have an age.
# - A client can have multiple pets (animals), but it doesn't start with any.

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

end
