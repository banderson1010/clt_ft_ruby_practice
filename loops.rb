#for loop only uses intergers

# puts "1! Bird on wire. HA-HA-HA"

# for n in 2...100
# 	puts "#{n}! Bird on wire. HA-HA-HA"
# end


#while loop can do strings and intergers

# x = 0 continuoeus loop

# 	while x <= 10
# 		puts "#{x} is the lonliest number."

# 	end


# x = 0 

# 	while x <= 10
# 		puts "#{x} is the lonliest number."
# 		x = x + 1
# 	end
# puts x


# until loop string and intergers

# x = 0 

# 	until x == 10
# 		puts "#{x} isn't 10 yet!"
# 	x += 1 
# 	# (same way as writting x = x + 1; but it is the conventional way and how you should write it)
# end
	

# times do loop only does intergers conventinal to use i as the description

# 5.times do |i|
# 	puts "We are at number #{i + 1}"
# end

# #this is the same as above just written differently

# 5.times { |i| puts "we are at number #{i + 1}" }


# 3.times do
# 	puts "She loves you yeah, yeah, yeah"
# end

#upto loop

# 1.upto(60) do |n|
# 	puts "We are at number #{n}"
# end


1.upto(100) do |i|
      if i % 5 == 0 and i % 3 == 0
        puts "FizzBuzz"
      elsif i % 5 == 0
        puts "Buzz"
      elsif i % 3 == 0
        puts "Fizz"
      else
        puts i
      end
    end

    x = 1

    while x < 100
      if x % 3 == 0 && % 5 == 0
          puts "fizzbuzz"
        elsif  x % 3 == 0
          puts "Fizz"
        elsif x % 5 == 0
          puts "Buzz"
        else
          puts x
        end

      x += 1
            
          





























