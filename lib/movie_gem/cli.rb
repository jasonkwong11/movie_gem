# Our CLI Controller
class MovieGem::CLI

  def call
    puts "Today's Movies..."
    list_movies
  end

  def list_movies
    puts <<-DOC
      1. Avengers 3
      2. Batman 
      3. Spiderman
    DOC
  end

end