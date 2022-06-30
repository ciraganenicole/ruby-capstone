require './model/label'
require './model/author'
require './model/music'
require './model/genre'
class App
  attr_reader :genres, :authors, :labels, :books, :musics, :games

  def initialize
    @genres = []
    @authors = []
    @labels = []
    @books = []
    @musics = []
    @games = []
  end

  def populate_app
    labels = [Label.new(title: 'Drama', color: 'red'), Label.new(title: 'Fantasy', color: 'green')]
    labels.each { |label| @labels.push(label) }

    genres = [Genre.new(name: 'Comedy'), Genre.new(name: 'Thriller'), Genre.new(name: 'Pop'),
              Genre.new(name: 'Hip-hop and Rap'), Genre.new(name: 'Rock'),
              Genre.new(name: 'Reggae'), Genre.new(name: 'Rhumba'), Genre.new(name: 'Country'),
              Genre.new(name: 'Dance and Electronic'), Genre.new(name: 'Other')]
    genres.each { |genre| @genres.push(genre) }
  end

  def populate_author
    authors = [Author.new('Stephan', 'King'), Author.new('Kait', 'Cham')]
    authors.each { |author| @authors.push(author) }
  end

  # Add a music
  def create_music(music)
    @musics << music
  end

  # Genre part
  def add_genre(item)
    @genres.add_item(item)
  end

  def list_genres
    @genres.each_with_index do |genre, index|
      puts "#{index}. ID: #{genre.id} Name: #{genre.name}"
    end
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
