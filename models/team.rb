require_relative "./team_data"
require_relative "./player"
require 'pry'
class Team
attr_reader :name, :players
def initialize(name)
  @name = name
  @players = []
  teamNameSymbol = :"#{@name}"
  playerList = TeamData::ROLL_CALL[teamNameSymbol]
  playerList.each do |position, playerName|
    @players.push(Player.new(playerName, position, name))
  end
end
def self.all
  allTeams =[]
  TeamData::ROLL_CALL.each do |teamName, players|
    allTeams.push(Team.new(teamName))
  end
  return allTeams
end
end
