
def clear_screen
  sleep 1
  print "\e[2J"
  print "\e[H"
end

def high_low

	puts "Welcome to High/Low, an interactive guessing game"
	puts "We will select a random number from one to one hundred. You have four guesses to select it"
	sleep(2)
	our_number = rand(1..100)
	guesses = 0
	finished = false
	points = 0

	until finished

		while guesses < 5 && !finished

			puts "Guess a number!"
			input = gets.chomp.to_i

			if input == our_number
				puts "You got it! Our number was #{our_number}"
				$score += 100
				finished = true
				clear_screen
				break
			elsif guesses == 4
				puts "You lose. Our number was #{our_number}"
				finished = true
				clear_screen
				break
			elsif input > our_number
				puts "Too high, guess again."
				guesses += 1
				clear_screen
			elsif input < our_number
				puts "Too low, guess again."
				guesses += 1
				clear_screen
			end

		end


	end

	puts "You have #{points} points!"
end

high_low
