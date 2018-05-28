require 'pry'
class Song

attr_accessor :name, :artist

def initialize (name)
  @name = name

end

def self.new_by_filename(some_filename)

  filename_parts = some_filename.split(" - ")
  puts "#{filename_parts}"
  new_song = Song.new(filename_parts[1])
  puts "#{filename_parts[0]}"
  new_song.artist = Artist.find_or_create_by_name(filename_parts[0])

  new_song.artist.add_song(new_song)
  puts "made song #{new_song.name}"

end

def artist_name= (artistname)
  self.artist.name = artistname
end

end
