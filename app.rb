require './model/label'
class App
  attr_reader :genres, :authors, :labels

  def initialize
    @genres = []
    @authors = []
    @labels = []
  end

  def populate_app
    labels = [Label.new(title: 'Drama', color: 'red'), Label.new(title: 'Fantasy', color: 'green')]
    labels.each { |label| @labels.push(label) }
  end

  def add_genre(item)
    # @genre.add_item(item)
  end

  def add_author(item)
    # @author.add_item(item)
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
end
