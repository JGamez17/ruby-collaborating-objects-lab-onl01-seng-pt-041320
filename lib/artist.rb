class Artist
  attr_accessor :name
  
  @@all = []  #stores all instances of Artist 

  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all
  end 

  def add_song(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all.select {|x| x.artist == self}
  end
  
  def find_or_create_by_name (name)
    artist_name = self
  end
    
end
