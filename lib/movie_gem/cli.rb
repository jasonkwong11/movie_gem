# Our CLI Controller
class MovieGem::CLI

  def call
    puts "Today's Movies..."
    list_movies
    menu
    goodbye
  end

  def list_movies
    puts <<-DOC
      1. Avengers 3
      2. Batman 
      3. Spiderman
    DOC
  end

  def menu
    puts "Enter the number of the deal you'd like more info on:"
    input = nil
    while input!= "exit" 
      input = gets.strip.downcase 
      case input
        when "1"
          puts "More info on Avengers 3..."
        when "2"
          puts "More info on Batman..."
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more movies!"
  end

end