require_relative '../model/item'

describe Item do
  before(:example) do
    @instance = Item.new(genre: 'genre', author: 'author', label: 'label', publish_date: 'publish_date')
  end

  it 'should initialize' do
    expect(@instance.genre).to eq('genre')
    expect(@instance.author).to eq('author')
    expect(@instance.label).to eq('label')
    expect(@instance.publish_date).to eq('publish_date')
  end

  it 'should move item to archive if item can be archived' do
    @instance.move_to_archive if @instance.can_be_archived?
    expect(@instance.archived).to be(true)
  end

  it 'should give unique id to each instance' do
    @id = Random.rand(1..1000)
    another_instance = Item.new(genre: 'genre', author: 'author', label: 'label', publish_date: 'publish_date')
    expect(another_instance.id).to be(another_instance.id)
  end
end