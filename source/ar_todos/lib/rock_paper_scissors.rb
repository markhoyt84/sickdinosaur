class RPS
  @@user_score = 0
  @@computer_score = 0
  def rock_paper_scissors
    @@user_score = 0
    @@computer_score = 0
    array = ['rock', 'paper', 'scissors']
    until @@user_score == 3 || @@computer_score == 3
      system('clear')
      puts "Rock, Paper, or Scissors"
      print ">> "
      choice = gets.chomp.downcase
      computer_choice = array.sample
        case
          when choice == computer_choice
            puts "You both chose #{choice}"
            sleep_clear
          when choice == 'rock'
            if computer_choice == 'scissors'
              puts "Rock smashes scissors, YOU WIN!"
              @@user_score += 1
              sleep_clear
            elsif computer_choice == 'paper'
              puts "Paper wraps rock, YOU LOSE!"
              @@computer_score += 1
              sleep_clear
            end
          when choice == 'paper'
            if computer_choice == 'scissors'
              puts "Scissors cut paper, YOU LOSE!"
              @@computer_score += 1
              sleep_clear
            elsif computer_choice == 'paper'
              puts "Paper wraps rock, YOU LOSE!"
              @@user_score += 1
              sleep_clear
            end
          when choice == 'scissors'
            if computer_choice == 'rock'
              puts "Rock smashes scissors, YOU LOSE!"
              @@computer_score += 1
              sleep_clear
            elsif computer_choice == 'paper'
              puts "Scissors cut paper, YOU WIN!"
              @@user_score += 1
              sleep_clear
            end
          end
        end
      if @@user_score == 3
        puts "CONGRATULATIONS YOU WON!!!"
      else
        puts "YOU LOST TO A COMPUTER HOW EMBARRASING!"
      end
  end


  def sleep_clear
    puts "You:   Computer:"
    puts " #{@@user_score}       #{@@computer_score}"
    sleep(3)
    system('clear')
  end
end

new_game = RPS.new

new_game.rock_paper_scissors