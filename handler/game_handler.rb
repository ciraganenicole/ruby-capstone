require_relative '../model/game'
require_relative '../storage'

class GameHandler
  @storage = Storage.new
  def self.add_game(app)
    puts 'Please, create your game : '
    puts 'multiplayer : '
    multiplayer = gets.chomp
    puts 'last_played_date : '
    last_played_date = Date.parse(gets.chomp)
    puts 'publish_date : '
    publish_date = gets.chomp
    game = Game.new(multiplayer, last_played_date, publish_date)
    app.create_game(game)
    puts 'game created successfully !!!'
    @storage.save_game(app)
  end

  def self.list_games(app)
    puts 'This is all the games we have : '
    app.games.each_with_index do |game, index|
      puts "#{index + 1}. [#{game.class}] - multiplayer: #{game.multiplayer} last_played: #{game.last_played_date}"
    end
    puts ''
  end
end
