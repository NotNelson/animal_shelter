require_relative "shelter"
require_relative "client"
require_relative "animal"

new_shelter = Shelter.new("New Shelter")

new_client = Client.new("Nelson", 31)

new_animal = Animal.new("A dog", "Beagle")

new_shelter.add_client(new_client)

new_shelter.add_animal(new_animal)

new_shelter.adopt(new_client, new_animal)

# puts new_shelter.animals

# puts new_shelter.clients