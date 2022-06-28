require_relative '../model/item'
require_relative '../model/label'
require 'date'

describe Label do
  before :each do
    @item = Item.new(publish_date: '2010-10-14')
    @label = Label.new(title: 'The title', color: 'red')
  end

  it 'should have empty item list' do
    expect(@label.items.length).to eq(0)
  end

  it 'Should return item list equal to 1' do
    @label.add_item(@item)
    expect(@label.items.length).to eq(1)
  end
end
