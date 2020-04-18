# essais à partir de la doc ProgrammingRuby.doc
# titre : Implementing a SongList Container pge 43..46
# Le programme ne plante pas, mais pour l'instant, il me fait comprendre 
# que je ne maitrise pas encore les classes.
# j'ai du créer une method pour voir le contenu de l'objet dont j'avais l'id ("le pointeur?")
# je vois le "pointeur" de l'objet mais pas son contenu.

class SongList
    attr_accessor :songs
  def initialize
    @songs = Array.new
  end

  def append(aSong)
    @songs.push(aSong)
    self
  end
# method [] définie pour la classe SongList. assez déroutante
  def [](key)
    if key.kind_of?(Integer)
    result =  @songs[key]
    else
    result     = @songs.find { |aSong| key == aSong.name }
    end
    return result
  end
  
  def deleteFirst
    @songs.shift
  end
  def deleteLast
    @songs.pop
  end

  def deleteFirst
    @songs.shift
  end
  def deleteLast
    @songs.pop
  end
  

    
end

class Song
  @@plays = 0
  attr_accessor :name, :artist, :duration
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
    @plays    = 0
  end

  def voir    
    "Song: #{@name}--#{@artist} (#{@duration})" 
  end

  def play
    @plays += 1
    @@plays += 1
    "This  song: #@plays plays. Total #@@plays plays."
  end
end

list = SongList.new
puts list.
  append(Song.new('title1', 'artist1', 1)).
  append(Song.new('title2', 'artist2', 2)).
  append(Song.new('title3', 'artist3', 3)).
  append(Song.new('title4', 'artist4', 4))
# affiche #<SongList:0x042c47b8>

 puts list.inspect
 # essai avec un indice de l'array
 puts list[0].voir
 # affiche  Song: title1--artist1 (1)

 # essai avec la clef
 puts list["title2"].voir
 # affiche Song: title2--artist2 (2)

