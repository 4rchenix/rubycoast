class Character
  attr_accessor :name, :race, :class, :unique
  def initialize(name, rase, profession, unique)
    @name = name
    @rase = rase
    @profession = profession
    @unique = unique
  end
end
