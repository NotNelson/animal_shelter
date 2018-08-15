require_relative "shelter"
require_relative "client"
require_relative "animal"
require_relative "seed"

# This looks dodgy... I know...
data_creator = Seed.new
data_creator.create_data
new_shelter = data_creator.new_shelter

def show_menu
    puts "
    ========
    MENU
    ========

    (1) Create a client
    (2) Create an animal
    --
    (3) List clients
    (4) List animals
    --
    (5) Adopt animal
    (6) Give animal back
    --
    (9) Exit
    "
end

def graciously_end_execution
    # The end
    # There was a division by zero in here, and it was a lot of fun.
end

def get_input
    return gets.chomp
end

def add_animal(shelter, animal)
    shelter.add_animal(animal)
end

def add_client(shelter, client)
    shelter.add_client(client)
end

show_menu

input = get_input

while input != "9"
    if input == "1" # Add a client
        puts "Client name:"
        client_name = gets.chomp

        puts "Client Age:"
        client_age = gets.chomp.to_i

        new_client = Client.new(client_name, client_age)

        add_client(new_shelter, new_client)
    elsif input == "2" # Add an animal
        puts "Animal name:"
        animal_name = gets.chomp

        puts "Animal species"
        animal_species = gets.chomp

        new_animal = Animal.new(animal_name, animal_species)

        add_animal(new_shelter, new_animal)
    elsif input == "3" # List customers
        new_shelter.clients.each do |client|
            puts "Name: " + client.name + ", Age: " + client.age.to_s
        end
    elsif input == "4" # List animals in the shelter
        new_shelter.animals.each do |animal|
            puts "Name: " + animal.name + ", Species: " + animal.species
        end
    elsif input == "5" # Adopt and animal
        puts "Input animal name:"
        animal = new_shelter.find_animal(gets.chomp)

        puts "Input client name:"
        client = new_shelter.find_client(gets.chomp)
        puts client.pets.count.to_s
        if client.pets.count+1 <= 2
            new_shelter.adopt(client, animal)

            new_shelter.remove_animal(animal)
        else
            puts "HANG ON! HOW MANY PETS CAN YOU TAKE CARE OF?"
        end
    elsif input == "6" # Return an animal
        puts "Input client name:"
        client = new_shelter.find_client(gets.chomp)

        # List animals for the selected client, if any
        if client.pets.count > 0
            client.pets.each do |pet|
                puts pet.name + ", " + pet.species
            end

            puts "Input animal name:"
            pet_name = gets.chomp
            animal = client.find_animal(pet_name)

            new_shelter.return(client, animal)
            client.return_pet(animal)
        else
            puts "This guy doesnt have any pets :("
        end
    else # Sleep now in the fire
        graciously_end_execution
    end

    show_menu

    input = get_input
end
