


#this is how it should be done
puts 'What is todays Temperature'

temp=gets.chomp.to_i

def going_hicking(temp)

	if temp >= 105||temp<= -5
		puts "Please put in a real number"
	elsif temp == 23
		puts "This is perfect"
	elsif temp >= 50
		puts "Let's go hiking"
				
else
	 temp < 50
		puts 'Screw this Im sleeping'
	end
end


going_hicking(temp)



