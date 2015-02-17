
require_relative 'dragon'

describe do

  before do
    @drag = Dragon.new("Reggie", :gold, "Syd" )
  end
  it "has a name" do
    expect(@drag.name).to eq("Reggie")
  end

  it "has a color" do
    expect(@drag.color).to eq(:gold)
  end

  it "has a rider" do
    expect(@drag.rider).to eq("Syd")
  end

  it "is born hungry?" do
    expect(@drag.hungry?).to be_truthy
  end

  it "is not hungry after it eats 3 times" do
    3.times do
      @drag.eat
    end
    expect(@drag.hungry?).to be_falsey
  end

end
