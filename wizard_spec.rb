require_relative "wizard"

  describe do
    before do
      @wiz = Wizard.new("Merlin", bearded: false)
    end

    it "has a name" do
      expect(@wiz.name).to eq("Merlin")
    end

    it "is bearded by default" do
      wiz = Wizard.new("Syd")
      expect(wiz.bearded?).to be_truthy
    end

    it "has root powers with incantation" do
      expect(@wiz.incantation("chown ~/bin")).to eq("sudo chown ~/bin")
    end

    it "has super root powers with incantation" do
      expect(@wiz.incantation("rm -rf /home/mirandax")).to eq("sudo rm -rf /home/mirandax")
    end
end
