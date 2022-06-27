require './input'
def main
  # Add some logic for the database
  loop do
    puts 'Welcome to : Catalog of my things ! :)'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List a movies'
    puts '4 - List a games'
    puts '5 - List a genres'
    puts '6 - List a labels'
    puts '7 - List a authors'
    puts '8 - List a sources'
    puts '9 - Add a book'
    puts '10 - Add a music album'
    puts '11 - Add a movie'
    puts '12 - Add a game'
    puts '0 - Exit'
    input = gets.chomp.to_i
    Input.check_input(input)
  end
end

main
