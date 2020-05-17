class MP3Importer
  attr_accessor :path
  def initialize (path)
    @path = path
  end
  
  def files 
    files = Dir.entries(path)
    files.select {|x| x[/\.mp3$/]}
  end
  
  def import 
    files.each do |filename|
      Song.new_by_filename (filename)
    end
  end

end 