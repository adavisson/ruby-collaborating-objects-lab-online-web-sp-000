class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    file_list = DIR["#{@path}/*.mp3"]
  end
  
  def import
    
  end
  
end