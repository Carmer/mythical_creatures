require_relative 'vampire'

describe Vampire do

  it "has a pet bat by default" do
    vamp = Vampire.new("drake")
    expect(vamp.pet).to eq("bat")
  end

  it "has a name" do
    vamp = Vampire.new("drake")
    expect(vamp.name).to eq("drake")
  end

  it "can have a pet other than bat" do
    vamp = Vampire.new("drake", "cat")
    expect(vamp.pet).to eq("cat")
  end


  it "is thirsty? by default" do
    vamp = Vampire.new("drake")
    expect(vamp.thirsty?).to eq(true)
  end

  it "is not thirsty once it drinks" do
    vamp = Vampire.new("drake" , "cat")
    vamp.drink
    expect(vamp.thirsty?).to eq(false)
  end
end
