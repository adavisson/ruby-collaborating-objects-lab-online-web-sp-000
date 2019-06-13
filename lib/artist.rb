class Artist
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def add_song(song)
    @songs << song
  end
  
  def find_or_create_by_name(name)
    match = false
    @@all.each do |artist|
      if artist.name == name
        match = true
      else
        self.new(name)
      end
    end
    match
  end
  
end