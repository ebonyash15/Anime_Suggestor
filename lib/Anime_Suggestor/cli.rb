#CLI Controller file - responsible for user interraction
require_relative './studios.rb'
require_relative './concerns.rb'
class CLI
  def call
    Scraper.scrape_studios
    list_studios
    menu
    goodbye
  end
  def list_studios
    puts "Anime-Planet's Top 5 Anime Studios:"
    puts " 1. #{Studio.all[0].name}\n 2. #{Studio.all[1].name}\n 3. #{Studio.all[2].name}\n 4. #{Studio.all[3].name}\n 5. #{Studio.all[4].name}"
  end
  def menu
    puts "From which studio would you like a recommendation?\nPlease enter the correlating number:"
    input = nil
    while input != "exit"
      input=gets.strip
      index= input.to_i-1
      if input.downcase == "list"
        self.list_studios
      elsif index.between?(0,Studio.all.length)
        puts "Of #{Studio.all[index].name}\'s #{Studio.all[index].anime_count}s, your recommendation is #{Studio.all[index].anime}."
        puts "If you like the studio you already selected, but not the show please re-enter that studio's number for a new recommendation! Or select another studio."
      else
        puts "Unfortunately, that is not a valid entry, please select a number between 1 and 5. You can enter \"list\" to see the studios again or \'exit\' to quit program."
      end
    end
  end
  def goodbye
    puts "Hope you found an anime you'll enjoy! Come back later to see if the leaderboard has changed."
  end
end
