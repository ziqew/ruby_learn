class SongList
  def initialize
    @songs = Array.new
  end

  def append(aSong)
    @songs.push(aSong)
    self
  end

  def deleteFirst
    @songs.shift
  end

  def deleteLast
    @songs.pop
  end

  def [](key)
    if key.kind_of?(Integer)
      return @songs[key]
    else
      
      for i in 0...@songs.length
        return @songs[i] if key == @songs[i].name
      end

      #block
      #result = @songs.find { |aSong| key == aSong.name }
    end
    return nil
  end

=begin
  def [](key)
    return @songs[key] if key.kind_of?(Integer)
    return @songs.find { |aSong| aSong.name == key }
  end
=end



end

class Song
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
    @plays    = 0
  end

  def to_s
  	"Song: #@name--#@artist (#@duration)"
  end	
end	

list = SongList.new
list.
  append(Song.new('title1', 'artist1', 1)).
  append(Song.new('title2', 'artist2', 2)).
  append(Song.new('title3', 'artist3', 3)).
  append(Song.new('title4', 'artist4', 4))

puts list[0]  