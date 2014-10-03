$score = 0
require_relative 'config/application'
# require_relative 'app/models/view/user'

module Login

def self.prompt
  print ">>  "
end

def self.waiting
  5.times do |x|
      sleep(0.5)
        x = (".")
        print x
      end
end

def self.login_welcome
  puts "Returning users Press 2?"
  puts "New users Press 1"
  answer = gets.chomp.to_i
    if answer == 2
      user = User.all
      user.each do |login|
        p login
        puts "What is your username?"
        user_name = gets.chomp
          if login.username == user_name
            $user = login.username
            puts "Welcome back #{$user.name}"
          else
            puts "Your high-score to beat is #{$user.score}"
          end
      end
    elsif answer == 1
      puts "What is your first name?"
      prompt
      first_name = gets.chomp
      puts "What would you like to be your username?"
      prompt
      user_name = gets.chomp
      new_person = User.new_user(first_name, user_name)
      $user = new_person
      waiting
      puts "New user creation successful!"
      puts "Welcome #{$user.name}"
    end
end

def self.clear_screen
  sleep 2
  print "\e[2J"
  print "\e[H"
end

end

require_relative 'config/application'
# Type this into the console to see what each part does.
# $LOAD_PATH.unshift(File.expand_path('.'))

# Dir["lib/*.rb"].each do |file_to_load|
#   require file_to_load
# end

# puts "Put your application code in #{File.expand_path(__FILE__)}"

class FullGame
  $user = nil
  def self.run
    puts "Welcome to our game"
    include Login
    Login::login_welcome
    Login.clear_screen
    puts "Welcome to our game"
    puts <<-eos

                                       _    _
              o                       / \\  / \\
               \\_/\\                   \\  \\/  /
              ( Oo)                    \\love/
              (_=-)  .===O-  ~~Z~A~P~~  \\  /
              /   \\_/U'                  \\/
              ||  |_/
              \\\\  |
              {K ||
               | PP
               | ||
               (__\\\\


    eos
    puts "Cute Aliens from planet Moron Mountain are invading Earth!"
    puts "And they are demanding the best of humanity to play humanity's own most idiotic games"
    puts "to save Earth from total annihilation!!!"
    gets.chomp
    Login.clear_screen
    puts <<-eos

            _.-^^---....,,--
        _--                  --_
       <                        >)
       |                         |
        \\._                   _./
           ```--. . , ; .--'''
                 | |   |
              .-=||  | |=-.
              `-=#$5&5$#=-'
                 | ;  :|
        _____.,-#5&$@5#&#~,._____


    eos
    puts "Humanity's greatest minds have come together to use"
    puts "Google's lucky Search to find the best human candidate to play these games of life and death."
    puts "And they have all agree unanimously that YOU are our best bet!"
    gets.chomp
    Login.clear_screen


    puts "The whole world is watching you as one of the cute alien hand you the new iPhone 6 and now LET'S THE GAME BEGIN!!!


    -------------------------------------------------------------------------------------------------
    "
    gets.chomp


    puts "Cute Aliens hand you game 1!"
    require_relative './lib/trivial_trivia'

    puts "Your current score is #{$score}"

    Login.clear_screen


    puts "Cute Aliens hand you game 2!"
    require_relative './lib/math_minigame'
    puts "Your current score is #{$score}"
    sleep 2
    Login.clear_screen


    puts "Cute Aliens hand you game 3!"
    puts "Welcome to Hangman!!!!!"
    puts "Here is your color. Guess away..."
    sleep 2
    require_relative './lib/hang_man'
    puts "Your current score is #{$score}"
    sleep 2
    Login.clear_screen

    puts "Cute Aliens hand you game 4!"
    require_relative './lib/high_low'
    puts "Your current score is #{$score}"
    sleep 2
    Login.clear_screen

    puts "Cute Aliens hand you game 5!"
    puts "Welcome to Flash Memory!"
    puts "A sequence of words will pop up, and its your job to remember them!"
    puts "Input each word as prompted, and good luck!"
    sleep 2
    require_relative './lib/flash_memory_medium'

    puts "Your current score is #{$score}"
    sleep 2
    Login.clear_screen


    puts "Cute Aliens hand you game 6!"
    sleep 2
    require_relative "./lib/rock_paper_scissors"
    puts "Your current score is #{$score}"
    sleep 2
    Login.clear_screen
    puts "Great job for finishing the game!"
    puts "Your final score is #{$score}!"
    puts <<-eos
    o               .        ___---___                    .
           .              .--\\        --.     .     .         .
                        ./.;_.\\     __/~ \\.
                       /;  / `-'  __\\    . \\
     .        .       / ,--'     / .   .;   \\        |
                     | .|       /       __   |      -O-       .
                    |__/    __ |  . ;   \\ | . |      |
                    |      /  \\\\_    . ;| \\___|
       .    o       |      \\  .~\\\\___,--'     |           .
                     |     | . ; ~~~~\\_    __|
        |             \\    \\   .  .  ; \\  /_/   .
       -O-        .    \\   /         . |  ~/                  .
        |    .          ~\\ \\   .      /  /~          o
      .                   ~--___ ; ___--~
                     .          ---         .

    Woah!! Great Job. You save Earth from Cute Aliens!!! Celebrate!!

    -------------------------------------------------------------------------------------------------

    eos
    $user.high_score($score)
  end
end

FullGame.run

