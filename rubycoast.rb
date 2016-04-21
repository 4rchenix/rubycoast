#!/usr/bin/env ruby
# beach.rb
# Gems
require 'rubygems'
require 'fast_gettext'

# Classes
require_relative 'Classes/Locations'
require_relative 'Classes/Help'
require_relative 'Modules/Locations'
require_relative 'Modules/Man'

c_intro = Mod_locations.new
c_beach = Mod_locations.new
c_help = Mod_man.new
c_puts = Mod_man.new

FastGettext.available_locales = [ 'en', 'pl' ]
FastGettext.add_text_domain('rubycoast', :path=>'locale', :type=>:po)
FastGettext.text_domain = 'rubycoast'
FastGettext.locale = 'en'
include FastGettext::Translation

puts "Choose your language: en pl\n"
while FastGettext.locale.replace(STDIN.gets.downcase)
  FastGettext.locale.chop!
    if FastGettext.locale.match(/en|pl/)
      break
    else
      puts _("Sorry but language you choose is not supported, try again. Acceptable languages: en pl")
    end
end

# Locations
intro = Location.new('intro', _("#{c_intro.intro_str}"))
beach = Location.new('beach', _("#{c_beach.beach_str}"))

# Man
puts = Help.new('puts', 'Man page: puts', _("#{c_puts.puts_str}"), 'ruby-syntax')
help = Help.new('help', 'Man page: help', _("#{c_help.help_str}"), 'ruby-syntax')

puts intro.desc
puts "Redy? y/n"
while start = STDIN.gets.downcase
  start.chop!
  if start == "y"
    break
  else
    exit
  end
end

puts "You are going to create your game character right now. The first thing you are going to do is preparing the character class which will hold the basic information about your character. Lets say that the character will...\n -have a name\n -have a race\n -have a class (profession)\n -have character trait (unique)\n To collect all this attributes associated with your character we will need a class definition. Lets try to write one now:\n At first we need a class name. Create you own class as folowing: class Character\n"

while ex001 = (STDIN.gets)
  ex001.chop!
  var = nil
  if (ex001.match(/^class\ /))
    var1 = true
  end
  ex001.slice! "class "
  if [(var1.eql? true), (ex001.eql? ex001.capitalize), (!ex001.empty?)].all?
    puts "you just created class: class #{ex001}"
    break
  elsif ex001 == "help"
    puts ruby_class.usage
  else
    puts "Probably you need some help. To see man page for this exercise type: help"
  end
end
