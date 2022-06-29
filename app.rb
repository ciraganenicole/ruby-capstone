require './model/label'
require './model/author'
class App
  attr_reader :genres, :authors, :labels, :books, :music_album, :games

  def initialize
    @genres = []
    @authors = []
    @labels = []
    @books = []
    @music_album = []
    @games = []
  end

  def populate_app
    labels = [Label.new(title: 'Drama', color: 'red'), Label.new(title: 'Fantasy', color: 'green')]
    labels.each { |label| @labels.push(label) }
  end

  def populate_author
    authors = [Author.new('Stephan', 'King'), Author.new('Kait', 'Cham')]
    authors.each { |author| @authors.push(author) }
  end

  def add_genre(item)
    # @genre.add_item(item)
  end

  def add_author(item)
    @author.add_item(item)
  end

  # Add a book
  def create_book(book)
    @books << book
  end

  # Add a game
  def create_game(game)
    @games << game
  end

  # Label part
  def add_label(item)
    @labels.add_item(item)
  end

  def list_labels
    @labels.each_with_index do |label, index|
      puts "#{index}. [#{label.class}] - Title: #{label.title}, Color: #{label.color}"
    end
  end

  def list_authors
    @authors.each_with_index do |author, index|
      puts "#{index + 1} - #{author.first_name} #{author.last_name}"
    end
  end
end
