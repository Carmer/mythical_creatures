require_relative "pirate"

describe do
  before do
    @pirate = Pirate.new("Syd")
  end

  it "has a name" do
  expect(@pirate.name).to eq("Syd")
end

  it "has a default job of Scallywag" do
  expect(@pirate.job).to eq("Scallywag")
end

  it "can have a different job than scallywag" do
    pirate = Pirate.new("Blackbeard", "Captain")
    expect(pirate.job).to eq("Captain")
  end

  it "starts not cursed" do
    expect(@pirate.cursed?).to be_falsey
  end

  it "is cursed after 3 commit_heinous_act" do
    3.times do
      @pirate.commit_heinous_act
    end
    expect(@pirate.cursed?).to be_truthy
  end
end
