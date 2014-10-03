

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
            puts "Welcome back #{login.username}"
          else
            puts "Your high-score to beat is #{login.score}"
          end
    elsif answer == 1
      puts "What is your first name?"
      prompt
      first_name = gets.chomp
      puts "What would you like to be your username?"
      prompt
      user_name = gets.chomp
      user.new_user(first_name, username)
      waiting
      puts "New user creation successful!"
      puts "Welcome #{first_name}"
    end
end

def prompt
  print ">>  "
end

def self.waiting
  5.times do |x|
      sleep(0.5)
        x = (".")
        print x
      end
end