require './app'
require './handler/book_handler'
require './handler/music_handler'
require './handler/game_handler'
class Input
  def self.check_input(input, app)
    case input
    when 1..6
      list_data(input, app)
    when 7..9
      add_data(input, app)
    when 0
      puts 'Goodbye!'
      raise StopIteration
    else
      puts "You input #{input}"
    end
  end

  def self.list_data(input, app)
    case input
    when 1
      #   List all books
      BookHandler.list_books(app)
    when 2
      #  List all music albums
      puts 'List all musics'
      MusicHandler.list_musics(app)
    when 3
      GameHandler.list_games(app)
    when 4
      #  List all genres
      puts 'Here is genres list: '
      app.list_genres
    when 5
      puts 'List all labels'
      app.list_labels
    when 6
      puts 'List of authors'
      app.list_authors
    else
      puts 'invalid input'
    end
  end

  def self.add_data(input, app)
    case input
    when 7
      #  Add a book
      BookHandler.add_book(app)
    when 8
      #  Add a music album
      MusicHandler.add_music(app)
    when 9
      #  Add a game
      GameHandler.add_game(app)
    else
      puts 'invalid input'
    end
  end
end
