class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    file_list = Dir["#{@path}/*.mp3"]
    song_array = []
    file_list.collect do |line|
      song_array = line.split("/")
      puts song_array[song_array.length -1]
    end
    
  end
  
  def import
    
  end
  
end