class Storage
  attr_reader :files

  def initialize
    @files = %w[books.json games.json albums.json]
  end

  def prepare_storage
    @files.each do |filename|
      File.new(filename, 'w+') unless File.file?(filename)
    end
  end

  # this method is called to save all data
  def save_data(app); end

  # this method is called to load all data
  def load_data(app); end

  # Implement your own logic to save your data
  def save_book(app); end
end
