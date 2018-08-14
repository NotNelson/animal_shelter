# - A client should have a name.
# - A client should have an age.
# - A client can have multiple pets (animals), but it doesn't start with any.

class client
    attr_accessor :name, :age, :pets

    def initialize(name, age)
        @name = name
        @age = age
        @pets = []
    end

    def change_name(name)
        @name = name
    end

    def add_pet(pet)
        @pets << pet
    end

    def return_pet(pet)
        @pets.delete(pet)
    end

end
