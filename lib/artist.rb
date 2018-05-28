class Artist

  @@all = []
  attr_accessor :name, :songs


  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)

    match = 0
    @@all.each do |artist|
      if artist.name == name
        match =1
      end
    end

    if match==0
      new_artist = Artist.new(name)
    end
    match
  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end


end
