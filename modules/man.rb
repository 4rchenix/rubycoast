#!/usr/bin/env ruby

module Man
  attr_accessor :help_str, :puts_str, :class_str
  def initialize
    @help_str = "Did you stucked dumb? If you need any help just type \"help\". You can also display particular man page with help.man_name\n Example:\n help\n help.puts" 
    @puts_str = "Usage: puts\n puts \"string to be displayed\"\n So you can print any string you type inside the quotes without any modification\n Example: puts \"I see the scary purpleeye dragon just next to me!\"\n After press enter you will see on the screen:\n I see the scary purpleeye dragon just next to me!"
    @class_str = "Usage: class\n 1. Class name neends to be capitalized.\n 2. class_accessor lists all class attributes.\n 3. Next you need initialize class attributes.\n class Class_name\n \  attr_accessor :name, :description\n \    @name = \"attr name\"\n \    @description = \"some description or short name\"\n \  end\n end\n" 
  end
end

class Mod_man
  include Man
end
