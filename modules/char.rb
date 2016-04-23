#!/usr/bin/env ruby

module Char
  attr_accessor :character_str, :addclass_str, :exhelp_str, :classattr_str, :classinit_str, :clattrlist_str, :classends_str
  def initialize
    @character_str = "You are going to create your game character right now. The first thing you are going to do is preparing the character class which will hold the basic information about your character. Lets say that the character will...\n -have a name\n -have a race\n -have a class (profession)\n -have character trait (trait)\n To collect all this attributes associated with your character we will need a class definition. Lets try to write one now:\n At first we need a class name. Create you own class as folowing: class Character\n"
    @addclass_str = "You just created class: "
    @exhelp_str = "Probably you need some help. To see man page for this exercise type: help"
    @classattr_str = "Now we need to create class attributes, you can do this exacly like shown below or use your own attributes:\n attr_accessor :name, :race, :profession, :trait\n"
    @classinit_str = "To initioalize attributes write:\n def initialize(name, race, profession, trait)\n"
    @clattrlist_str = "Now you are going to describe your attributes. It is nothing else like telling what the attribute does or what the attribute is. For this exercise we have four attributes which will need to store a string so it will looks similar to this:\n @name = name\n @race = race\n @profession = profession\n @trait = trait\n\n For more information please see class man page (type help)\n" 
    @classends_str = "Finally you need to remember to close all class sections. There are already two sections you opened: def and class itself so you have to remember to put two ends so it looks similar:\n class Name\n \  attr_accessor :name, :description\n def initialize(name, description)\n \    @name = name\n \    @description = description\n \  end\n end"
  end
end

class Mod_char
  include Char
end 
