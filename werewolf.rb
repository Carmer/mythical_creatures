class Werewolf

  attr_reader :name, :location

  def initialize(name, location = nil)
    @name = name
    @location = location
    @human = true
  end

  def human?
    @human
  end

  def werewolf?
    !@human
  end

  def change!
    @human = !@human
  end
end
