require_relative '../model/music'
require 'date'

describe Music do
  before :each do
    @music = Music.new(on_spotify: true)
  end

  it 'should return true' do
    expect(@music.on_spotify).to eq(true)
  end

  it 'should return false' do
    expect(@music.archived).to be(false)
  end

  it 'should return false' do
    @music.move_to_archive
    expect(@music.archived).to be(false)
  end
end
