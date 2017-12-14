require "spec_helper"

RSpec.describe Player do
  # Player specs go here.
  describe "#initialize" do
    let(:testPlayer) { Player.new("Joe", "Catcher", "Dummy Team") }
    it "Has a name, position, and team name that are readable" do
      expect(testPlayer.name).to eq("Joe")
      expect(testPlayer.position).to eq("Catcher")
      expect(testPlayer.teamName).to eq("Dummy Team")
    end
  end
  describe "Player#all" do
    it "has an instance method called all that returns an array of all players formatted as player objects" do
      expect(Player.all.class).to be(Array)
      expect(Player.all.count).to eq(36)
    end
  end
end
