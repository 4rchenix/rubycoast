#!/usr/bin/env ruby

require_relative 'Test'
#require_relative 'Rubycoast'

FastGettext.available_locales = [ 'en', 'pl' ]
FastGettext.add_text_domain('rubycoast', :path=>'locale', :type=>:po)
FastGettext.text_domain = 'rubycoast'
FastGettext.locale = 'en'
include FastGettext::Translation
