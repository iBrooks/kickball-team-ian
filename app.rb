require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"
# require_relative "sinatra-reloader"
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do
  @teamList = Team.all
  erb :teams
end
get "/teams/:teamName" do
  @teamName = params[:teamName]
  @team = Team.new(@teamName)
  erb :teamPage
end
get "/positions" do
  @positions = []
  TeamData::ROLL_CALL[:"Simpson Slammers"].each_key do |position|
    @positions.push(position)
  end

  erb :positions
end
get "/positions/:position" do
  @position = params[:position]
  @players = {}
  Team.all.each do |team|
    team.players.each do |player|
      if player.position.to_s == @position
        @players[team.name] = player.name
      end
    end
  end

  erb :positionPlayers
end
