require_relative '../config/application.rb'

12.times do
  new_name = Faker::Name.first_name
	User.create!(:name => "#{new_name}",:username => "#{new_name}isaboss", :score => rand(100))
end

# 12.times do
# 	Phrase.create!(:name => "#{Faker::Name.first_name}", :score => rand(100))
# end