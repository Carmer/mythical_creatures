require_relative 'unicorn'
# require "rspec"

describe Unicorn do

  it "has a name" do
    unicorn =  Unicorn.new("Wendy")
    expect(unicorn.name).to eq("Wendy")
  end

  it "is white by default" do
    unicorn = Unicorn.new("Wendy")
    expect(unicorn.color).to eq("white")
  end

  it "does not have to be white" do
    unicorn = Unicorn.new("Wendy", "purple")
    expect(unicorn.color).to eq("purple")
  end

  it "says sparkly stuff" do
    unicorn = Unicorn.new("Wendy")
    expect(unicorn.say("hello")).to eq("**;* hello **;*")
  end

end
