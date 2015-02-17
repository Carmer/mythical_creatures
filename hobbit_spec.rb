require_relative "hobbit"
  describe do
  before do
    @hob = Hobbit.new("Samwise")
  end

  it "has a name" do
    expect(@hob.name).to eq("Samwise")
  end

  it "has a default disposition of homebody" do
    expect(@hob.disposition).to eq("homebody")
  end

  it "has a default age of 0" do
    expect(@hob.age).to eq(0)
  end

  it "increases age by 1 when celebrate_birthday" do
    3.times do
      @hob.celebrate_birthday
    end
    expect(@hob.age).to eq(3)
  end

  it "is a child until it is age 32" do
    32.times do
      @hob.celebrate_birthday
    end
    expect(@hob.adult?).to be_falsey
  end

  it "is an adult when it is age 33" do
    33.times do
      @hob.celebrate_birthday
    end
    expect(@hob.adult?).to be_truthy
  end
end
