class RichPerson
    def money
        100000
    end
end

class PoorPerson
    def money
        1000
    end
end

class Person < PoorPerson
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def introduce
        puts "Olá #{@name}, você tem #{@age} anos e é um PAU NO CU"
    end

    def adult?
        @age >= 18
    end

    def adult!
        @age = 18
    end
end