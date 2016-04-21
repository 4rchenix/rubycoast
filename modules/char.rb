#!/usr/bin/env ruby

module Char
  attr_accessor :character_str, :addclass_str, :exhelp_str
  def initialize
    @character_str = "You are going to create your game character right now. The first thing you are going to do is preparing the character class which will hold the basic information about your character. Lets say that the character will...\n -have a name\n -have a race\n -have a class (profession)\n -have character trait (trait)\n To collect all this attributes associated with your character we will need a class definition. Lets try to write one now:\n At first we need a class name. Create you own class as folowing: class Character\n"
    @addclass_str = "you just created class: "
    @exhelp_str = "Probably you need some help. To see man page for this exercise type: help"
  end
end

class Mod_char
  include Char
end 
