require './app'
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
    when 2
      #  List all music albums
    when 3
      #  List of games
    when 4
      #  List all genres
    when 5
      puts 'List all labels'
      app.list_labels
    when 6
      #  List all authors
    else
      puts 'invalid input'
    end
  end

  def self.add_data(input, _app)
    case input
    when 7
      #  Add a book
    when 8
      #  Add a music album
    when 9
      #  Add a game
    else
      puts 'invalid input'
    end
  end
end
