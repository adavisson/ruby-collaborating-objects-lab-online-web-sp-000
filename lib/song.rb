class Song
  
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    
    info = filename.split(" - ")
    song = self.new(info[1])
  end
  
  def artist=(name)
    @artist = Artist.find_or_create_by_name(name)
    binding.pry
  end
  
end