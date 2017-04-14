class Appearance
  attr_reader :film, :character

  ALL = []

  def self.all
    ALL
  end

  def initialize(film, character)
    @film = film
    @character = character
    ALL << self
  end

end
