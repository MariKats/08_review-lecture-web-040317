class Character
  attr_reader :name

  ALL = []

  def self.all
    ALL
  end

  def initialize(name)
    @name = name
    ALL << self
  end

  def appearances
    Appearance.all.select {|appearance| appearance.character == self }
  end

  def films
    # return an array of all of the films that this character has appeared in
    appearances.collect {|appearance| appearance.film }
  end

  def add_film(film)
    Appearance.new(film, self)
  end

end

character = Character.new('Leia Organa')
film = Film.new('Rogue One')

character.add_film(film)

character.films #=> [film]
film.characters #=> [character ]
