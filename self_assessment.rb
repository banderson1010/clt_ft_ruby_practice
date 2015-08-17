# 1.  Write a script that takes user input and passes it to a method as an argument and then displays it into the following concatenated string.

#   "Hello (name).  Nice to meet you."


my_name = gets.chomp

def intro(name)
	puts "Hello #{name}. Nice to meet you."
	
end

intro(my_name)


# 2.  Correct the code below so it displays the sum of x, y, and z

#  def sum_numbers(x,y)

#         x+y+z

#     end


def sum_numbers(x, y, z)
	x+y+z
	
end

puts sum_numbers(6,12,55)


# 3.  Add to the code below so it displays "Don't forget to (to do item)." for each item.

#  to_do = ["wash the car", "buy groceries", "finish homework", "pay the bills"]

 to_do = ["wash the car", "Buy groceries", "finish homework", "pay the bills"]

 	to_do.each do |x|
 		puts "Don't forget to #{x}!"
 end


#  4.  What is the return value of the following:

#  def avg(a, b, c, d)

#          total =a + b + c + d

#          avg = total / 4

#          return c + d
# end

#     avg(5, 8, 6, 10)


4.  What is the return value of the following:

 

    def avg(a, b, c, d)
#juts get rid of this one line
         # total =a + b + c + d

         avg = total / 4

         return c + d

    end

    puts avg(5, 8, 6, 10)

   # 5.  What is the return value of the following

   #   names = ['David', 'Trevor', 'Sarah', 'Mason']

   #   names[2]

     Answer = Sarah

6.  How do you add "bobcat" to this list of wild cat species?

 

     wild_cats= ['cheetah', 'lion', 'leopard', 'tiger']




7.  How do you retrieve the birthplace of user1?

 

      user1= {:firstname=> "Johnny", :lastname => "Begood", :gender => "male",

                       :dob => "08/21/1981", :birthplace => "Seattle, WA"}



8.  How do you add "Atlanta, GA " as the current city for user1 in the hash from question 7?




9.  How would you retrieve "y" in the following array?

 

      alpha_soup= ["c", "k", "y", "u"]




10.  How would you retrieve "14" in the following hash?

 

       alphabits= {"d" =>4, "k" => 14, "u" => 52}





11. Write a loop that continues to display random numbers between 1 and 10 until the number generated is 7.



 

12.  Continuing from question 11 above, push each randomly generated number to an array.  Then use an each loop and a conditional statement inside to display the total amount of numbers that are under 6.  Then display a statement that reads: "There are (total) numbers under 6."

 



 13.  Write code to create a new instance of a Vehicle object and make it honk.

 

      Class Vehicle

           def initialize(color, type)

                   @color = color

                   @type = type   # car, truck, motorcyle, scooter, van

            end

           def honk

                  puts "Beep!"

            end

      end






















































