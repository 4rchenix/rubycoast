#!/usr/bin/env ruby
# beach.rb
# Gems
require 'rubygems'
require 'fast_gettext'
require 'fileutils'

# Classes
require_relative 'Classes/Locations'
require_relative 'Classes/Help'
require_relative 'Modules/Locations'
require_relative 'Modules/Man'

# Dirs required
#Dir['./classes/*.rb'].each{ |f| require f }

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

#system("ruby ex01.rb")
load 'quests/ex001.rb'
