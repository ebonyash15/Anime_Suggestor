#CLI Controller file - responsible for user interraction
require_relative './studios.rb'
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
      input=gets.strip.downcase
      case input
      when "1"
        puts "Of #{studio1.name}\'s #{studio1.anime_count} animes, your recommendation is #{studio1.recommended_anime}."
      when"2"
        puts "Of #{studio2.name}\'s #{studio2.anime_count} animes, your recommendation is #{studio2.recommended_anime}."
      when "3"
        puts "Of #{studio3.name}\'s #{studio3.anime_count} animes, your recommendation is #{studio3.recommended_anime}."
      when "4"
        puts "Of #{studio4.name}\'s #{studio4.anime_count} animes, your recommendation is #{studio4.recommended_anime}."
      when "5"
        puts "Of #{studio5.name}\'s #{studio5.anime_count} animes, your recommendation is #{studio5.recommended_anime}."
      when "list"
        self.list_studios
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
