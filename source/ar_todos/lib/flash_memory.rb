require 'faker'

def flash_memory

  user_score = 0
  difficulty = 0
  word_list = []
  until difficulty == 3
  difficulty += 1
  system('clear')
     if difficulty == 1
      level = 3
      word_number = rand(0..2)
    elsif difficulty == 2
      level = 4
      word_number = rand(0..3)
    elsif difficulty == 3
      level = 5
      word_number = rand(0..4)
    end
    level.times do |word|
      word = Faker::Commerce.color
      word_list << word
    end
  string = word_list.join(" ")
  p string
  sleep(3)
  system('clear')
    if word_number == 0
      number = "1st"
    elsif word_number == 1
      number = "2nd"
    elsif word_number == 2
      number = "3rd"
    elsif word_number == 3
      number = "4th"
    elsif word_number == 4
      number = "5th"
    elsif word_number == 5
      number = "6th"
    end
  puts "What was the #{number} word?"
  answer = gets.chomp
    if answer == word_list[word_number]
      user_score += 1
      puts "You are correct!"
      puts "Score: #{user_score}"
      sleep(2)
      word_list.clear
    else
      puts "You are terrible at this!"
      puts "The word was #{word_list[word_number]}"
      puts "Score: #{user_score}"
      sleep(2)
      word_list.clear
    end
  end
end

flash_memory
