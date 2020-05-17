class MP3Importer
  attr_accessor
  def initialize (path)
    @path = path
  end
  
  def files 
    files = Dir.entries(path)
    files.select!
  end
  
  def import 
  end

end 