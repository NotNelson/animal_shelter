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
        if client.class == Catlady
            client.adopt_cat(animal)
        else
            client.add_pet(animal)
        end
        remove_animal(animal)
    end

    def remove_animal(animal)
        @animals.delete(animal)
    end

    def return(client, animal)
        client.return_pet(animal)
        add_animal(animal)
    end

    def find_animal(animal_name)
        @animals.find do |animal|
            animal.name == animal_name
        end
    end

    def find_client(client_name)
        @clients.find do |client|
            client.name == client_name
        end
    end
end