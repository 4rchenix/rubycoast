#!/usr/bin/env ruby

module Man
  attr_accessor :help_str, :puts_str
  def initialize
    @help_str = "Did you stucked dumb? If you need any help just type \"help\". You can also display particular man page with help.man_name\n Example:\n help\n help.puts" 
    @puts_str = "Usage: puts\n puts \"string to be displayed\"\n So you can print any string you type inside the quotes without any modification\n Example: puts \"I see the scary purpleeye dragon just next to me!\"\n After press enter you will see on the screen:\n I see the scary purpleeye dragon just next to me!"
  end
end

class Mod_man
  include Man
end
