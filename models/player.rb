require_relative "./team_data"

class Player
  attr_reader :name, :position, :teamName
  def initialize(name, position, teamName)
    @name = name
    @position = position
    @teamName = teamName
  end
  def self.all
    playerList = []
    TeamData::ROLL_CALL.each do |teamName, players|
      players.each do |position, name|
        playerList.push(Player.new(name, position, teamName))
      end
    end
    return playerList
  end
end
