#require_relative '../todo'


def clear_screen
  sleep 1
  print "\e[2J"
  print "\e[H"
end

def trivial_trivia

	puts 'Welcome to the Trivial Trivia challenge.'
	puts 'You will be required to answer all three of these tricky problems to move on.'

	finished = false
	points = 0

	while !finished

		puts "What is the name for Japanese currency?"
		answer1 = gets.chomp.downcase

		if answer1.include?("yen")
			puts "Correct!"
			clear_screen
		else
			puts "Incorrect! You lose!"
			finished = true
			clear_screen
			break
		end

		puts "How any squares are there on a chess board?"
		answer2 = gets.chomp.to_i

		if answer2 == 64
			puts "Correct!"
			clear_screen
		else
			puts "Incorrect! You lose!"
			finished = true
			clear_screen
			break
		end

		puts "Which planet is closest to the sun?"
		answer3 = gets.chomp.downcase

		if answer3 == "mercury"
			puts "Correct! You win!"
			points + 100
			finished = true
			clear_screen
			puts "You have earned 100 points!"
			$score += 100
			break
		else
			puts "Incorrect! You lose!"
			finished = true
			clear_screen
			break
		end
	end

end

trivial_trivia
