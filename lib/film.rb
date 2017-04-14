class Film
  attr_reader :title, :characters, :release_year

  ALL = []

  def self.all
    ALL
  end

  def initialize(title)
    @title = title
    @characters = []
    ALL << self
  end

  def add_character(character)
  end

  def characters
  end

end

Film.all #=> [film instances]
