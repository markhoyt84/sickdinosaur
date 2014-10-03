def clear_screen
  sleep 1
  print "\e[2J"
  print "\e[H"
end

def math_challenge

	puts 'Welcome to the Mathematics challenge.'
	puts 'You will be required to answer all three of these tricky problems to move on.'

	finished = false
	points = 0

	while !finished

		puts "A farmer has ten cows. All but seven die. How many cows are alive?"
		answer1 = gets.chomp.to_i

		if answer1 == 7
			puts "Correct!"
			clear_screen
		else
			puts "Incorrect! You lose!"
			finished = true
			clear_screen
			break
		end

		puts "You have one bucket that hold 5 gallons of water, and another which holds 19 gallons. How many buckets do you have?"
		answer2 = gets.chomp.to_i

		if answer2 == 2
			puts "Correct!"
			clear_screen
		else
			puts "Incorrect! You lose!"
			finished = true
			clear_screen
			break
		end

		puts "Bob is 18 years old, and twice the age of his sister. How old will Bob's sister be when Bob is 60?"
		answer3 = gets.chomp.to_i

		if answer3 == 51
			puts "Correct! You Win!"
			points + 100
			finished = true
			clear_screen
			break
		else
			puts "Incorrect! You lose!"
			finished = true
			clear_screen
			break
		end
	end

	puts "You have #{points} points!"

end

math_challenge