require_relative '../Classes/Character'
require_relative '../Modules/Char'
require_relative '../Modules/Man'

c_character = Mod_char.new
c_addclass = Mod_char.new
c_exhelp = Mod_char.new
character = _("#{c_character.character_str}")
addclass = _("#{c_character.addclass_str}")
exhelp = _("#{c_character.exhelp_str}")
puts character

if File.exist?('classes/ex001.rb')
  FileUtils.mv('classes/ex001.rb', 'classes/ex001.bck')
end
character_file = File.open("./classes/ex001.rb", "w")
character_file.puts("#!/usr/bin/env ruby\n")

while ex001 = (STDIN.gets)
  ex001.chop!
  var = nil
  if (ex001.match(/^class\ /))
    var1 = true
  end
  ex001.slice! "class "
  if [(var1.eql? true), (ex001.eql? ex001.capitalize), (!ex001.empty?)].all?
    puts "#{addclass}"+"class "+"#{ex001}"
    break
  elsif ex001 == "help"
    puts ruby_class.usage
  else
    puts exhelp
  end
end
character_file.puts("class #{ex001}\n")
Ex001 = Character
