# an array is a collection of ordered values you can store any data type in an array


# my_array = []

# my_array[0] = "hello"
# my_array[1] = 45
# my_array[2] = [1,2,3]

# puts my_array

# sometimes they are written like above but mostly they are written like this

# in terminal you can call all methods. enter array = []
#then array.methods
# you can also call all class options Array.methods

#fruits = ["Banana","Pear","Apple","Pineapple"]
#fruits.push ("Orange")
#fruits.pop



#puts fruits.sample



    puts "Rock, paper or scissor"
w = 0 and l =0 and t =0 and j=0
loop{
choice = ["paper" , "rock" , "scissor" ]
i=0

if j ==10
puts "wins : #{w}\nlosses : #{l}\ndraw:    #{t}"
       if w > l 
           puts "You won the game"
       elsif w<l 
           puts "You lost!"
       else 
           puts "The game is a draw"
       end

         gets
      break
      end     
while i == 0
human = gets.chomp.downcase
choice.each {
    |x| 
    if human == x
        i+=1 and j+=1
        break
    end
    }
    puts "-----------------please enter rock paper or scissor-----------------" if i == 0
end
computer = rand(3)
com = choice[computer]
if (com == "scissor" and human != "rock") or (human == "scissor" and computer !=1)
   v = human <=> com  
else 
   v = com <=> human 
end



puts "You chose #{human}, computer choose #{com}"
case v

    when 1
        puts "---->You win"
        w +=1
    when -1
        puts "---->Computer wins"
        l+=1
    else
        puts "---->draw"
        t+=1
end
}

#the code below is incomplete

rps = ["rock", "paper", "scissors"]

puts "Please choose rock,paper, or scissors"
user_answer = gets.chomp.downcase
comp_answer = rps.sample
comp_score = 0
user_score = 0

puts comp_answer

while user_answer != "quit"
	if user_answer == "rock" && comp_answer ==
	rps[2]
	puts "you win"

	elsif user_answer == "rock" && comp_answer
	== rps [1]
	puts "you lose"
		elsif user_answer == "scissors" && comp_answer
	== rps [1]
	puts "you lose"
		elsif user_answer == "scissors" && comp_answer
	== rps [0]
	puts "you lose"
		elsif user_answer == "paper" && comp_answer
	== rps [0]
	puts "you lose"
		elsif user_answer == "paper" && comp_answer
	== rps [1]
		else
			puts "tie"
	end
	puts "Your score is #{user_score}, comp score is #{comp_score}"
		if user_score == 1
			puts "you win the game!"
			break
		elsif comp_score == 1
			puts "You lose the game!"
			break
		end
	puts "Rock, paper or scissors, or quit to exit"
	user_answer = get.chomp.downcase
	comp_answer = rps.sample
	puts comp_answer
end
	

















