class Artist
  
  attr_accessor :name, :songs
  @@artists = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end
  
  def find_or_create_by_name(name)
    
  
end