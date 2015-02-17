require_relative "medusa"

  describe do
    before do
      @med    = Medusa.new("Cassapolis")
      @victim = Person.new("Joe")
    end

    it "has a name" do
      expect(@med.name).to eq("Cassapolis")
    end

    it "has no statues at first" do
      expect(@med.statues.empty?).to be_truthy
    end

    it "can stare at a victim" do
      expect(@med).to respond_to(:stare)
    end

    it "has statues" do
      expect(@med).to respond_to(:statues)
    end

    it "gains a statue when she stares at a victim" do
      @med.stare(@victim)
      expect(@med.statues.empty?).to be_falsey
    end

    it "turns a victim to stone when stared at by medusa" do
      @med.stare(@victim)
      expect(@victim.stoned?).to be_truthy
    end

end
