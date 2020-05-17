class MP3Importer
  attr_accessor
  def initialize (path)
    @path = path
  end
  
  def files 
    files = Dir.entries(path)
    files.select {|x| x[/\.mp3$/]}
  end
  
  def import 
  end

end 