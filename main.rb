require './app'
require './input'
require './storage'
def main
  # Add some logic for the database
  app = App.new
  storage = Storage.new
  storage.load_data(app)
  loop do
    puts 'Welcome to : Catalog of my things ! :)'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List of games'
    puts '4 - List all genres'
    puts '5 - List all labels'
    puts '6 - List all authors'
    puts '7 - Add a book'
    puts '8 - Add a music album'
    puts '9 - Add a game'
    puts '0 - Exit'
    input = gets.chomp.to_i
    Input.check_input(input, app)
  end
  puts 'Thank you for using our service :)'
end

main
