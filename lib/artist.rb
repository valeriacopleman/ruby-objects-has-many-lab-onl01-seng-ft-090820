#made class and named Artist
class Artist 
  #getters and setters for variables to use on methods on the class
  attr_accessor :name
  #counter is set at 0 
  @@song_count = 0
  #initialize instance variable and an empty array 
  def initialize(name)
    @name = name
    @songs = []
  end
  #has many songs 
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
    def add_song(song)
    @songs << song
    song.artist = self
    @@song_count +=1 
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
    @@song_count +=1 
  end
  
  def self.song_count
    @@song_count
  end
  
end