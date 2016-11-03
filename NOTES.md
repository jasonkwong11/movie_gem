==== How to Build a CLI Gem ====
1. Plan your gem, imagine your interface
  - google how to build a gem 
  - create git repo, gem install bundler
  -bundle gem movie_gem
2. Start with the project structure - google
3. Start with the entry point - the file run
  -user types movie_gem
  -Shows a list of movies: 
    1. Avengers 3
    2. Batman 5
  -Which product do you want to learn more about?

4 Force that to build the CLI interface
  START HERE:
  -touch bin/movie-gem
    a. write shabang line: #!/usr/bin/env ruby
    b. write puts "Hello World"
    c. run $ruby bin/movie_gem to test that the gem works (Should see "Hello World" in terminal)
    d. try to run $./bin/movie_gem ... you'll get permission denied because the computer is trying to protect you from running arbitrary code
    e. run $ls -lah (means list of all permissions, missing executable permissions. so you need to add it)
    f. add executable permission: run $chmod +x movie_gem while in bin directory (Summary so far: taught my system how to execute the file using ruby... and given system permission to execute that file)
    
    NEXT:
      -imagine the code you had: Write the code you wish you had:     a. write: MovieGem::CLI.new.call in bin/movie_gem
    b. now go to lib/movie_gem and touch "cli.rb"   
    c. in cli.rb make the namespaced class (MovieGem::CLI) and call method (puts "Todays movies") ... the goal is to see if it will run
    d. add require './lib/movie_gem' in bin/movie_gem
    e. change to require_relative "./movie_gem/version" in lib/movie_gem/movie_gem.rb
    f. now add: require_relative "./movie_gem/cli" in lib/movie_gem/movie_gem.rb
    g. delete module MovieGem.. you dont need because this is environment 
    h. run ./bin/movie_gem and you should get "Today's Movies"


5. Stub out the interface
    a. go to cli.rb and add the list_movies method to the call method (stub out fake movies using heredoc)
    b. add the menu method to the call method and stub out a menu: puts "Enter the number of the deal you'd like more info on:"
    c. next line: add: input = gets.strip... then add the case statement
    d. enclose everything in a while loop: while input != exit    e. add goodbye method to call and define it
    f. run ./bin/movie_gem (you should get an error that "input" is undefined)
    g. set an input variable equal to nil: input = nil (test to see if it works)
    h. notice oh: the puts "Enter the number of the deal you'd like more info on:" should be recalled after you get the info... so move it under the while loop
    i. Now on your own, see if you can add a list to make the list re-appear after the More info on Movie 1...then more features on that
    
  
6. Start making things real
7. Discover Objects
8. Program



