class Dragon

  attr_reader   :name,
                :color,
                :rider

  def initialize(name, color, rider)
    @name   = name
    @color  = color
    @rider  = rider
    @food   = 0

  end

  def hungry?
    @food < 3
  end

  def eat
    @food += 1
  end
end
