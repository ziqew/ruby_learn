class Song
  @@plays=0
  attr_reader :name, :artist 
  attr_writer:duration
 
 def inspect
  super
 end
 
 def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end

  def durationInMinutes
    @duration/60.0   # force floating point
  end

  def durationInMinutes=(value)
    @duration = (value*60).to_i
  end

end

#inheritance
class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end

  
  #def to_s
  #  "KS: #{@name}--#{@artist} (#{@duration}) [#{@lyrics}]"
  #end
  

  def to_s
    super + " [#{@lyrics}]"
  end  
  
end



song = Song.new("Bicylops", "Fleck", 260)

song.duration=60
puts song.duration
puts song.name
puts "duration in minute"
puts song.durationInMinutes

song.durationInMinutes = 2
puts "duration after set value in durationInMinutes"
puts song.duration

ks = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")

puts ks.to_s
song.inspect  #!to_s!