#CLI Controller file - responsible for user interraction
class AnimeSuggestor::CLI
  def call
    list_studios
    menu
  end
  def list_studios
    puts "Anime-Planet's Top 5 Anime Studios:"
    puts " studio1\n studio2\n studio3\n studio4\n studio5"
    #get top 5 studios
  end
  def menu
    puts "Which studio's shows would you like to view?\nPlease enter the correlating number:"
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
      when "menu"
        self.list_studios
      else
        puts "Invalid command. Which studio would you like to explore? You may type \'menu\' to see the list again."
    end
  end
end
