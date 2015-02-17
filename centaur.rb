class Centaur

    def initialize(name,breed)
      @name = name
      @breed = breed
      @cranky = 0
      @standing = true
    end

    def name
      @name
    end

    def breed
      @breed
    end

    def shoot
      if laying? || cranky?
        "NO!"
      else
        @cranky += 1
        "Twang!!!"
      end
    end

    def run
      if laying? || cranky?
        "NO!"
      else
        @cranky += 1
        "Clop clop clop clop!!!"
      end
    end

    def stand_up
      @standing = true
    end

    def lay_down
      @standing = false
    end

    def cranky?
      @cranky > 2
    end

    def laying?
      !@standing
    end

    def standing?
      @standing
    end

    def sleep
      standing? ? "NO!" : @cranky = 0
      end
end
