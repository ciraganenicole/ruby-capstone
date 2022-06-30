require 'date'
class Item
  attr_reader :id, :archived
  attr_accessor :genre, :author, :label, :publish_date

  def initialize(publish_date:)
    @publish_date = Date.parse(publish_date)
    @id = Random.rand(1..1000)
    @archived = false
  end

  def set_genre(genre:)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def set_author(author:)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def set_label(label:)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    true if (Date.today.to_time.year - @publish_date.to_time.year) > 10
  end
end
