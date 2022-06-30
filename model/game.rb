require 'date'
require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_date, :publish_date

  def initialize(multiplayer, last_played_date, publish_date)
    super(publish_date: publish_date)
    @multiplayer = multiplayer
    @last_played_date = last_played_date
  end

  def to_json(*_args)
    JSON.dump({
                multiplayer: @multiplayer,
                last_played_date: @last_played_date,
                publish_date: @publish_date
              })
  end

  def can_be_archived?
    current_year = Time.new.year
    last_played_year = @last_played_date.split('-')
    last_played_at = current_year - last_played_year[0].to_i
    super && last_played_at > 2
  end
end
