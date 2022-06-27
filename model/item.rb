class Item
  attr_reader :id, :archived
  attr_accessor :genre, :author, :label, :publish_date
  def initialize(genre:, author:, label:, publish_date:)
    @genre = genre
    @author = author
    @label = label
    @publish_date = publish_date
    @id = Random.rand(1..1000)
    @archived = false
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    true if (Time.now - @publish_date) > 10
  end
end
