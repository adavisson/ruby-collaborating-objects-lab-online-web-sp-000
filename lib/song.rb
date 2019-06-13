require 'pry'

class Song
  
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    
    info = filename.split(" - ")
    song = self.new(info[1])
  end
  
  def artist=(artist)
    @artist = artist
    binding.pry
  end
  
end