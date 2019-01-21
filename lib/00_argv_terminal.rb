#! /usr/bin/env ruby
##****************************************************************************
# RUBY - Play With Terminal ARGV
#****************************************************************************
#   Ruby's Program - argv_terminal
#   Written by: Guillaume CHRISTE
# 	Date: 20-Jan-2019
#   
#   Description:
# 		- Program to check ARGV attributes
# 		- Check also the automation of shell commands 
# 		
# 	Gems:
		require 'rubygems'
		require 'dotenv'
		Dotenv.load 
		require 'rubocop'
		require 'nokogiri'
		require 'open-uri'
		require 'watir'
#
#****************************************************************************
def playwith_file_folder
	#Create a dossier in folder where terminal is 
	Dir.mkdir ("nom_du_dossier")

	#Create folder in dedicated folder
	Dir.mkdir("/chemin/nom_du_dossier")

	#Read file in dedicated folder
	file = File.open("/chemin/nom_du_fichier", "droits")
	# Concernant les droits, ils définissent et limitent ce que tu vas faire dans ton fichier. Il existe 6 types de droits :
	# 	r, pour "reading" : tu vas pouvoir lire le fichier, voir ce qu'il y a écrit dedans.
	# 	a, pour "append" : tu vas pouvoir ajouter des lignes à ton fichier.
	# 	w, pour "write" : tu vas réécrire intégralement ton fichier. S'il y a déjà un fichier, il efface tout pour repartir de 0. S'il n'y a pas de fichier, il en crée un.
	# 	w+, pour "write and read" : tu vas pouvoir réécrire intégralement ton fichier (cf. ci-dessus), et tu peux aussi lire ce qu'il y a dedans.
	# 	a+, pour "append and read" : tu vas pouvoir ajouter des lignes à ton fichier, et aussi pouvoir lire ce qu'il y a dedans.
	# 	r+, pour "read and write" : tu vas pouvoir modifier ton fichier sans tout effacer

	# Voici quelques méthodes qui peuvent te faire interagir avec ton fichier lié à la variable file :
	# 	file.puts(string) : permet d'insérer la ligne string dans ton fichier lié à file.
	# 	file.read : te retourne le fichier comme étant un grand string où les retours à 
	# 				la ligne sont remplacés par \n (c'est comme ça que l'on fait un retour
	# 				à la ligne en langage code).
	# 	file.close : permet de fermer le fichier et de ne plus le rendre disponible en 
	# 				lecture/écriture via file.
	# 	file.each : la variable file peut être considérée comme un array dont chaque 
	# 				élément est un string contenant une ligne de ton fichier. Avec .each 
	# 				tu peux travailler sur chaque ligne
end

def playwith_terminal
	system("clear") #Clear content of the terminal
	system("pwd") #Display current pwd
	system("ruby ~/Documents/Coding/Templates/Ruby/init.rb")
end

def playwith_argv
	puts "Début du programme"
	puts ARGV
	puts "Fin du programme"
end

def check_if_user_gave_input
  abort("mkdir: missing input") if ARGV.empty?
end

def get_folder_name
  return folder_name = ARGV.first
end

def create_folder(name)
  Dir.mkdir(name)
end

def perform
	check_if_user_gave_input
	create_folder(get_folder_name)
end

perform
# perform
# End of argv_terminal .......................................................
#.............................................................................
#.............................................................................
