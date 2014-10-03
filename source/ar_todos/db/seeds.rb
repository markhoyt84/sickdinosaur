require_relative '../config/application.rb'

12.times do
	User.create!(:name => "#{Faker::Name.first_name}", :score => rand(100))
end

# 12.times do
# 	Phrase.create!(:name => "#{Faker::Name.first_name}", :score => rand(100))
# end