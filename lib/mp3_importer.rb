class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def self.files
    file_list = DIR["#{@path}/*.mp3"]
  end
  
  def self.import
    
  end
  
end