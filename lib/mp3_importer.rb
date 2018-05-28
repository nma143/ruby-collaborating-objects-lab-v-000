class MP3Importer

  attr_accessor :path, :files


  def initialize(path)
    @path = path
    files
  end

  def files
    @files = Dir["#{@path}/**/*.mp3"]
    @files.each do |fullname|
      fullname.slice! "./spec/fixtures/mp3s/"

    end

  end

  def import

    @files.each do |filename|
      puts "heyo #{filename}"
      Song.new_by_filename(filename)

    end
    puts "lalala"
    binding.pry
  end


end
