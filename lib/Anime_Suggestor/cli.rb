#CLI Controller file - responsible for user interraction
require_relative './studios.rb'
studio1 = Studio.new(0)
studio2 = Studio.new(1)
studio3 = Studio.new(2)
studio4 = Studio.new(3)
studio5 = Studio.new(4)
class CLI
  def call
    list_studios
    menu
    goodbye
  end
  def list_studios
    puts "Anime-Planet's Top 5 Anime Studios:"
    Studio.all.each_with_index{|studio, index|puts "#{index+1}. #{studio.name}"}
  end
  def menu
    puts "From which studio would you like a recommendation?\nPlease enter the correlating number:"
    input = nil
    while input != "exit"
      input=gets.strip
      index= input.to_i-1
      if input.downcase != "list" && index == 0..4
        puts "Of #{Studio.all[index].name}\'s #{Studio.all[index].anime_count}s, your recommendation is #{Studio.all[index].anime}."
      elsif "list"
        self.list_studios
      elsif index != 0..4
        puts "Unfortunately, that is not a valid entry, please select a number between 1 and 5. You can enter \"list\" to see the studios again."
      else
        puts "Which studio would you like to explore?"
        puts "If you like the studio you already selected, but not the show please re-enter that studio's number for a new recommendation!"
        puts "You may type \'list\' to see the list again or \'exit\' to quit program."
      end
    end
  end
  def goodbye
    puts "Hope you found an anime you'll enjoy! Come back later to see if the leaderboard has changed."
  end
end
