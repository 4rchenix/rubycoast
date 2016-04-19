# HELP man pages

require_relative 'Classes/Help'
require_relative 'Translate'
require_relative 'Test'
#require_relative 'Rubycoast'

include FastGettext::Translation

# convention: man_name = ('name', 'describtion', _(usage), 'tag')
help = Help.new('help', 'Man page: man', _("Did you stucked dumb? If you need any help just type \"help\". You can also display particular man page with help.man_name\n Example:\n help\n help.puts"), 'game-help')

puts = Help.new('puts', 'Man page: puts', _("Usage: puts\n puts \"string to be displayed\"\n So you can print any string you type inside the quotes without any modification\n Example: puts \"I see the scary purpleeye dragon just next to me!\"\n After press enter you will see on the screen:\n I see the scary purpleeye dragon just next to me!"), 'ruby-syntax')
