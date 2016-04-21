class Character
  attr_accessor :name, :race, :profession, :trait
  def initialize(name, race, profession, trait)
    @name = name
    @race = race
    @profession = profession
    @trait = trait
  end
end
