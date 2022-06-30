require_relative './item'
class Label
  attr_reader :id, :items
  attr_accessor :title, :color

  def initialize(title:, color:)
    @title = title
    @color = color
    @id = Random.rand(1..1000)
    @items = []
  end

  def to_json(*_args)
    JSON.dump({
                title: @title,
                color: @color
              })
  end

  def add_item(item)
    @items << item
    item.label = self
  end
end
