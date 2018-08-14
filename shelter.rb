# - A shelter should have a name
# - A shelter can have multiple animals, but it doesn't start with any.
# - A shelter can have multiple clients, but it doesn't start with any.
# - A shelter should be able to display all of its clients.
# - A shelter should be able to display all of its animals.
# - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
# - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)

class Shelter

    attr_accessor :name, :animals, :clients

    def initialize(name)
        @name = name
        @animals = []
        @clients = []
    end

    def change_name(name)
        @name = name
    end

    def add_client(client)
        @clients << client
    end

    def add_animal(animal)
        @animals << animal
    end

    def adopt(client, animal)
        client.add_pet(animal)
        remove_animal(animal)
    end

    def remove_animal(animal)
        @animals.delete(animal)
    end

    def return(client, animal)
        client.return_pet(animal)
        add_animal(animal)
    end
end