require_relative "shelter"
require_relative "client"
require_relative "animal"

new_shelter = Shelter.new("New Shelter")

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
    #The end
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
    if input == "1"
        puts "Client name:"
        client_name = gets.chomp

        puts "Client Age:"
        client_age = gets.chomp.to_i

        new_client = Client.new(client_name, client_age)

        add_client(new_shelter, new_client)
    elsif input == "2"
        puts "Animal name:"
        animal_name = gets.chomp

        puts "Animal species"
        animal_species = gets.chomp

        new_animal = Animal.new(animal_name, animal_species)

        add_animal(new_shelter, new_animal)
    elsif input == "3"
        new_shelter.clients.each do |client|
            puts "name: " + client.name + ", Age: " + client.age.to_s
        end
    elsif input == "4"
        new_shelter.animals.each do |animal|
            puts "name: " + animal.name + ", Species: " + animal.species
        end
    elsif input == "5"
        puts "Input animal name:"

        animal = new_shelter.find_animal(gets.chomp)
        puts "input client name:"

        client = new_shelter.find_client(gets.chomp)

        new_shelter.adopt(client, animal)

        new_shelter.remove_animal(animal)
    elsif input == "6"
        puts "input client name:"
        client = new_shelter.find_client(gets.chomp)

        puts "input animal name:"
        animal = 

        new_shelter.return(client, animal)
    else
        graciously_end_execution
    end

    show_menu

    input = get_input
end
