#!/usr/bin/env ruby
# beach.rb
# Gems
require 'rubygems'
require 'fast_gettext'
#require 'i18n'

# Classes
require_relative 'Classes/Locations'
require_relative 'Classes/Help'

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
intro = Location.new('intro', _("Welcome in the Ruby Coast world. It's time to begin the incredible adventure... playing game and learning Ruby in the same time. All game interaction you do will be the Ruby code in fact. Remember that you can use HELP any time you need, you just need to type: help Have a great adventure!"))

beach = Location.new('beach', _("The taste of salt ... You are licking your chapped and salty lips, your face wince due the terrible discomfort. You are thirsty and pretty confused. You can hear the squeaky coastal birds sounds not so far away. Trying to open your eyes and figure out what is going out around. Salty burning sludge gets into your eyes. You are trying to wipe your eyes with wet patch of your sleeve, finally you can get your eyes opened and see the landscape contour around you."))

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
puts beach.desc

puts _("Look around and describe what you see. Please type: puts \"I see ...\" ")
while beach_start = (STDIN.gets)
  beach_start.chop!
  if beach_start.match(/^puts\ "/)
    beach_start.slice! "puts "
    puts beach_start _(", you whispered hoarsely voice.")
    break
  elsif beach_start == "help"
    puts help.usage
  else
    puts _("Did you stucked dumb? If you need any help just type \"help\"")
  end
end
