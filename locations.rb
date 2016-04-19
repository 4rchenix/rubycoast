#!/usr/bin/env ruby

require_relative 'Classes/Locations'
require_relative 'Translate'
require_relative 'Test'
#require_relative 'Rubycoast'

include FastGettext::Translation

# Locations
intro = Location.new('intro', _("Welcome in the Ruby Coast world. It's time to begin the incredible adventure... playing game and learning Ruby in the same time. All game interaction you do will be the Ruby code in fact. Remember that you can use HELP any time you need, you just need to type: help Have a great adventure!"))

beach = Location.new('beach', _("The taste of salt ... You are licking your chapped and salty lips, your face wince due the terrible discomfort. You are thirsty and pretty confused. You can hear the squeaky coastal birds sounds not so far away. Trying to open your eyes and figure out what is going out around. Salty burning sludge gets into your eyes. You are trying to wipe your eyes with wet patch of your sleeve, finally you can get your eyes opened and see the landscape contour around you."))
