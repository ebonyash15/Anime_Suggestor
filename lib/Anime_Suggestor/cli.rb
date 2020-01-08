#CLI Controller file - responsible for user interraction
class AnimeSuggestor::CLI
  def call
    list_studios
    menu
    goodbye
  end
  def list_studios
    puts "Anime-Planet's Top 5 Anime Studios:"
    puts " studio1\n studio2\n studio3\n studio4\n studio5"
    #get top 5 studios
    @studios = AnimeSuggestor::Studios.today
  end
  def menu
    puts "Which studio's shows would you like to view?\nPlease enter the correlating number:"
    input = nil
    while input != "exit"
      input=gets.strip.downcase
      case input
      when "1"
        puts "studio1 stuff"
      when"2"
        puts "studio2 stuff"
      when "3"
        puts "studio3 stuff"
      when "4"
        puts "studio4 stuff"
      when "5"
        puts "studio5 stuff"
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
