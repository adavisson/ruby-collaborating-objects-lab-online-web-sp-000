class Song
  
  attr_accessor :artist
  
  def initialize(name)
    @name = name
    
  end
  
  def new_by_filename(filename)
    
    info = filename.split(" - ")
    song = self.new(info[1])
    
  end
  
  def artist
    
  end
  
  def artist_name=(name)
    self.artist.name = name
  end
  
end