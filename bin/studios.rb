#installer line --tells program what language to use
#!/usr/bin/env ruby

#load relevant files
require './lib/Anime_Suggestor/'

#only necessary line to start program
Anime_Suggestor::CLI.new.call
