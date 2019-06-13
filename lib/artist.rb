class Artist
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    if @@all.length <= 0
      @@all << self
    elsif !@@all.include?(self)
      @@all << self
    end
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    match = nil
    if @@all.length <= 0
      match = self.new(name)
    else
      @@all.each do |artist|
        if artist.name == name
          match = artist
        else
          match = self.new(name)
        end
      end
    end
    match
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
end