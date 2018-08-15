require_relative "shelter"
require_relative "client"
require_relative "animal"
require_relative "catlady"

class Seed
    attr_accessor :new_shelter

    def create_data
        animals = [
            ["Fido", "Dog"],
            ["Pluto", "Dog"],
            ["Felix", "Cat"],
            ["Dumbo", "Elephant"],
            ["Pikachu", "Pokemon"],
            ["Top Cat", "Cat"],
            ["Benny the Ball", "Cat"],
            ["Choo-Choo", "Cat"],
            ["Brain", "Cat"],
            ["Fancy-Fancy", "Cat"]
        ]

        clients = [
            ["Nelson", 31],
            ["Nico", 37],
            ["Cooper", 26],
            ["Carlos", 20],
            ["G", 34]
        ]

        catladies = [
            ["Monica", 58],
            ["Zaida", 70]
        ]

        @new_shelter = Shelter.new("Stout and Pizza Animal Shelter")

        clients.each do |client|
            new_client = Client.new(client[0], client[1])
            new_shelter.add_client(new_client)
        end

        catladies.each do |catlady|
            new_catlady = Catlady.new(catlady[0], catlady[1])
            new_shelter.add_client(new_catlady)
        end

        animals.each do |animal|
            new_animal = Animal.new(animal[0], animal[1])
            new_shelter.add_animal(new_animal)
        end
    end
end