require 'date'
require_relative './item'
class Book < Item
  attr_accessor :cover_state, :publisher

  def initialize(cover_state:, publisher: nil)
    # super(publish_date: '2020-10-14')
    super(publish_date: Date.today.to_s)
    @cover_state = cover_state
    @publisher = publisher
  end

  def to_json(*_args)
    JSON.dump({
                cover_state: @cover_state,
                publisher: @publisher
              })
  end

  private

  def can_be_archived?
    super || cover_state == 'bad'
  end
end
