#!/usr/bin/env ruby

module Locations
  attr_accessor :intro_str, :beach_str
  def initialize
    @intro_str = "Welcome in the Ruby Coast world. It's time to begin the incredible adventure... playing game and learning Ruby in the same time. All game interaction you do will be the Ruby code in fact. Remember that you can use HELP any time you need, you just need to type: help Have a great adventure!" 
    @beach_str = "The taste of salt ... You are licking your chapped and salty lips, your face wince due the terrible discomfort. You are thirsty and pretty confused. You can hear the squeaky coastal birds sounds not so far away. Trying to open your eyes and figure out what is going out around. Salty burning sludge gets into your eyes. You are trying to wipe your eyes with wet patch of your sleeve, finally you can get your eyes opened and see the landscape contour around you."
  end
end
