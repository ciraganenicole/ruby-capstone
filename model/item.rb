class Item
  attr_reader :id, :archived
  attr_accessor :genre, :author, :label, :publish_date
  def initialize(genre:, author:, label:, publish_date: DateTime.now.to_s.slice(0, 10))
    @genre = genre
    @author = author
    @label = label
    @publish_date = publish_date
    @id = Random.rand(1..1000)
    @archived = false
  end

  def can_be_archived?
    @can_be_archived = true
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

end
