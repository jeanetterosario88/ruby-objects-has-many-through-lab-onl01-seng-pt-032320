class Genre
  attr_reader :name

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |songinst|
      songinst.genre == self
    end
  end
  
  def artists
    self.all.songs.map do |songinst|
      songinst.artist
    end
  end
  
  

  
end
  