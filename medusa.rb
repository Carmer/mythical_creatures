class Medusa

    attr_reader :name

    def initialize(name)
      @name = name
      @statues = []
    end

    def empty?
      @statues.count == 0
    end

    def stare(victim)
      @statues.push(victim)
      victim.change
    end

    def statues
      @statues
    end
end

class Person
    attr_reader :name,
                :stoned

    def initialize(name)
      @name = name
      @stoned = false
    end

    def change
      @stoned = true
    end

    def stoned?
      @stoned
    end
end

# class Demon
#
#   attr_reader :name,
#               :stoned
#
#   def initialize(name)
#     @name = name
#     @stoned = false
#   end
#
#   def change
#     puts "NOPE"
#   end
#
# end
#
#
#
# person1 = Person.new
