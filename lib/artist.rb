class Artist 
  
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << name 
  end 
  
  def self.all 
    @@all
  end 
  
  def new_song(name, genre)
    new_song = Song.new(name, genre)
    new_song.artist = self 
  end 
  
  def songs 
    Song.all.select do |song|
      song.artist = self 
    end 
  end 
  
  def genres 
    Song.all.map do |song|
      song.genre 
    end 
  end 
    
end