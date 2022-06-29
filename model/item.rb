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
  end

  def set_author(author:)
    @author = author
  end

  def set_label(label:)
    @label = label
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    true if (Date.today.to_time.year - @publish_date.to_time.year) > 10
  end
end
