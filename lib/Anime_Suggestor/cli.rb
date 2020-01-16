#CLI Controller file - responsible for user interraction
require_relative './studios.rb'
class AnimeSuggestor::CLI
  def call
    list_studios
    menu
    goodbye
  end
  def list_studios
    puts "Anime-Planet's Top 5 Anime Studios:"
    Studios.today
  end
  def menu
    puts "Which studio's shows would you like to view?\nPlease enter the correlating number:"
    input = nil
    while input != "exit"
      input=gets.strip.downcase
      case input
      when "1"
        puts studio_1.name
        puts studio_1.animes
      when"2"
        puts studio_2.name
        puts studio_2.animes
      when "3"
        puts studio_3.name
        puts studio_3.animes
      when "4"
        puts studio_4.name
        puts studio_4.animes
      when "5"
        puts studio_5.name
        puts studio_5.animes
      when "list"
        self.list_studios
      else
        puts "Which studio would you like to explore? You may type \'list\' to see the list again or \'exit\' to quit program."
      end
    end
  end
  def goodbye
    puts "Hope you found an anime you'll enjoy! Come back later to see if the leaderboard has changed."
  end
end
