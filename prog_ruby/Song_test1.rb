class Song
  #@@plays=0

  attr_reader :name, :artist, :duration 
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

  def play # instance method
    @plays += 1
    @@plays += 1
    "This  song: #@plays plays. Total #@@plays plays."
  end

  def Song.foo     # class method
    puts "foo"
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

Song.foo

song = Song.new("Bicylops", "Fleck", 260)

song.duration=60

puts song.duration

puts song.name
puts "duration in minute"
puts song.durationInMinutes

song.durationInMinutes = 2
puts "duration after set value in durationInMinutes"
#puts song.duration

#puts "play:"
#puts song.play

ks = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")

puts ks.to_s
song.inspect  #!to_s!