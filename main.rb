require './app'
require './input'
require './storage'
require './options'

def main
  app = App.new
  app.populate_app
  app.populate_author
  storage = Storage.new
  storage.prepare_storage
  storage.load_data(app)
  options(app)
  puts 'Thank you for using our service :)'
end

main
