$score = 0

module Login
def self.login_welcome
  puts "Returning users Press 2?"
  puts "New users Press 1"
  answer = gets.chomp
    if answer == 2
      user = User.all
      user.each do|login|
        puts "What is your username?"
        user_name = gets.chomp
          if user_name == login.username
            $user = login.username
            puts "Welcome back #{$user.username}"
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
      new_person = user.new_user(first_name, username)
      $user = new_person
      waiting
      puts "New user creation successful!"
      puts "Welcome #{$user.first_name}"
    end
end

end


def clear_screen
  sleep 2
  print "\e[2J"
  print "\e[H"
end

require_relative 'config/application'
puts "Welcome to our game"
# Type this into the console to see what each part does.
# $LOAD_PATH.unshift(File.expand_path('.'))

# Dir["lib/*.rb"].each do |file_to_load|
#   require file_to_load
# end

# puts "Put your application code in #{File.expand_path(__FILE__)}"

class FullGame
  $user = nil
  def self.run

    include Login
    Login::login_welcome
    clear_screen

    puts "You are walking around and then you play game 1!"
    require_relative './lib/trivial_trivia'

    puts "Your current score is #{$score}"

    clear_screen


    puts "You are walking around and then you play game 2!"
    require_relative './lib/math_minigame'
    puts "Your current score is #{$score}"

    clear_screen


    puts "You are walking around and then you play game 3!"
    require_relative './lib/hang_man'
    puts "Your current score is #{$score}"

    clear_screen

    puts "You are walking around and then you play game 4!"
    require_relative './lib/high_low'
    puts "Your current score is #{$score}"

    clear_screen

# p "You are walking around and then you play game 5!"
# p "Welcome to Flash Memory!"
# p "A sequence of words will pop up, and its your job to remember them!"
# p "Input each word as prompted, and good luck!"

# require_relative './lib/flash_memory_medium'

# puts "Your current score is #{$score}"

# clear_screen

# puts "You are walking around and then you play game 6!"
# load "./lib/rock_paper_scissors"
# puts "Your current score is #{$score}"

# clear_screen
  end
end

FullGame.run

