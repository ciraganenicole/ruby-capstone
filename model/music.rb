require 'date'
require_relative './item'
class Music < Item
    attr_accessor :on_spotify

  def initialize(on_spotify:)
    super(publish_date: Date.today.to_s)
    @on_spotify = on_spotify
  end

  def to_json(*_args)
    JSON.dump({
                on_spotify: @on_spotify
              })
  end

  private

  def can_be_archived?
    return true if super && @on_spotify
  end
end