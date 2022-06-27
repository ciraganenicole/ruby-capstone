require './input'
def main
  # Add some logic for the database
  loop do
    puts 'Welcome to : Catalog of my things ! :)'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List of games'
    puts '4 - List of genres'
    puts '5 - List of authors'
    puts '6 - Add a book'
    puts '7 - Add a music album'
    puts '8 - Add a game'
    puts '0 - Exit'
    input = gets.chomp.to_i
    Input.check_input(input)
  end
  puts 'Thank you for using our service :)'
end

main
