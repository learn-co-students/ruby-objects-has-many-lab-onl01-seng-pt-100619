class Artist 
  
  attr_accessor :name, :songs 
  
  @@song_count = 0
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    @songs << song 
    song.self = name 
    @@song_count+=1 
  end 
  
  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    @songs << song_name 
    song_name.self  = name 
    @@song_count +=1 
  end 
  
  def songs 
    @songs 
  end 
  
  def self.song_count
    @@song_count.all 
  end 
  
end 
  
  class Song 
    
    attr_accessor :artist 
    
    def artist_name(name)
      if (self.artist.nil?)
        self.artist = Artist.new(name)
      else 
        self.artist.name = name 
      end 
    end 

  
  

end 



