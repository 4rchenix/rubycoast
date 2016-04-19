#!/usr/bin/env ruby
# beach.rb
# Gems
require 'rubygems'
require 'fast_gettext'

# Classes
require_relative 'Classes/Locations'
require_relative 'Classes/Help'
require_relative 'Locations'
require_relative 'Man'
require_relative 'Translate'

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
    whisper = [ beach_start, _(", you whispered hoarsely voice.") ].join
    puts whisper
    break
  elsif beach_start == "help"
    puts puts.usage
  else
    puts _("Did you stucked dumb? If you need any help just type \"help\"")
  end
end
