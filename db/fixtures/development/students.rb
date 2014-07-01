30.times do 
	Student.seed do |s|
		s.first_name = Faker::Name.first_name
		s.last_name = Faker::Name.last_name
		s.group = "VO11"
	end
end