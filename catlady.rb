class Catlady < Client
    attr_accessor :name, :age, :pets

    def initialize(name, age)
        @name = name
        @age = age
        @pets = []
    end

    def adopt_cat(yet_another_cat)
        @pets << yet_another_cat
    end
end