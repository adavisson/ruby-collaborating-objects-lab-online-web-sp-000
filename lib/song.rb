class Song
  
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
  end
  
  def new_by_filename(filename)
    
    info = filename.split(" - ")
    song = self.new(info[1])
    
  end
  
  def artist=(name)
    Artist.find_or_create_by_name(name)
  end
  
  def artist_name=(name)

  end
  
end