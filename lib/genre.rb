class Genre 
  
  attr_accessor :name, 
  
  def initialize(name)
    @name = name 
    @@all << name 
  end 
  
  @@all = [] 
  
  def self.all 
    @@all 
  end 
  
  def songs
    songs.select do |song|
      Song.all.genre == self 
    end
  end 
  
  def artists 
    songs.map do |song|
      self.songs.artist 
    end 
  end 
  
end 