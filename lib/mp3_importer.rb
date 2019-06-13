class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    file_list = Dir["#{@path}/*.mp3"]
    song_array = []
    file_list.collect do |line|
      line.split("/")
      puts
    end
    
  end
  
  def import
    
  end
  
end