#! /usr/bin/env ruby
##****************************************************************************
# RUBY - @NameOfTheProgram
#****************************************************************************
#   Ruby's Program - Name of the program
#   Written by: Guillaume CHRISTE
# 	Date: Date of modification
#   
#   Description:
# 		- 
# 		- 
# 		
# 	Gems:
		require 'rubygems'
		require 'dotenv'
		Dotenv.load 
		require 'rubocop'
		require 'nokogiri'
		require 'open-uri'
		require 'watir'
		require 'selenium-webdriver'
#
#****************************************************************************
def watir
	browser = Watir::Browser.new
	browser.goto 'google.com'
	search_bar = browser.text_field(class: 'gsfi')
	search_bar.set("Hello World!")

#méthode de la barre d'entrée
#search_bar.send_keys(:enter)

#méthode du clic
submit_button = browser.button(type:"submit")
submit_button.click

end

def perform
	watir
end

perform

# End of Program's name
#.............................................................................
#.............................................................................