require_relative '../model/music'
require_relative '../model/genre'
require_relative '../storage'

class MusicHandler
  @storage = Storage.new
  def self.add_music(app)
    print 'Is it on spotify? [Yes/No]: '
    on_spotify = gets.chomp
    music = Music.new(on_spotify: on_spotify)
    app.create_music(music)
    puts 'Music created successfully !!!'
    @storage.save_music(app)
  end

  def self.list_musics(app)
    puts 'This is all the musics we have : '
    app.musics.each_with_index do |music, _index|
      puts music.on_spotify.to_s
    end
  end
end
