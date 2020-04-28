class Artist
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select do |songinst|
      songinst.artist == self
    end
  end
  
  def genres
    self.songs.map do |song|
      song.genre
    end
  end

end
