class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    file_list = Dir["#{@path}/*.mp3"]
    file_list.collect do |line|
      line.split("/")
      puts line.last
    end
    
  end
  
  def import
    
  end
  
end