require "spec_helper"

RSpec.describe Team do
describe "#initialize" do
  let(:testTeam) {Team.new("Simpson Slammers")}
  it "accepts a name that can be read" do
    expect(testTeam.name).to eq("Simpson Slammers")
  end
end
describe "the Team.all instance method" do
  it "Returns an array of all teams" do
    expect(Team.all.class).to be(Array)
    expect(Team.all.count).to eq(4)
  end
end
describe "#players" do
  let(:testTeam) {Team.new("Simpson Slammers")}
  it "Returns an array of all players from the team formatted as player objects" do
    expect(testTeam.players.class).to be(Array)
    expect(testTeam.players.count).to eq(9)
    expect(testTeam.players[0].class).to be(Player)
  end
end
end
