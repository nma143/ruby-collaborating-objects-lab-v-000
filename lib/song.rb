class Song

attr_accessor :name, :artist

def initialize (name)
  @name = name

end

def new_by_filename(some_filename)

  filename_parts = some_filename.split(" - ")
  new_song = Song.new(filename_parts[1])
  new_song.artist = Artist.new(filename_parts[0])
end

def artist_name= (artistname)
  self.artist.name = artistname
end

end
