class Artist
  attr_accessor :name

  @@all = []

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

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.count
  end
end



















# class Artist
#   attr_accessor
  
#   @@all = []
  
#   def initialize(name)
#     @name = name 
#     @@all << self 
#   end 
  
#   def self.all
#     @@all 
#   end
  
#   def songs 
#     Song.all.select do |song|
#       song.artist == self 
#     end 
#   end 
  
#   def add_song(song)
#     song.artist = self 
#   end 
  
#   def self.find_by_name
#     self.all.find {|artist| artist.name == name}
#   end 
  
#   def self.find_or_create_by_name(name)
#     if self.find_by_name(name)
#       self.find_by_name(name)
#     else 
#       self.new(name)
#   end 
# end 