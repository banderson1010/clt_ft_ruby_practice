def draw
	card_array = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"]

	card_draw = card_array.sample

	case card_draw
	when "J", "Q", "K"
		card_draw = 10
	end

	return card_draw
end



def hand(player)
	all_cards =[]

	card_array = ["first","second", "third", "fourth", "fifth"]

	card_array.each do |element|
		element_card = draw

		all_cards.push(element_card)

		puts "#{player}'s #{element} card is #{element_card} "

		if all_cards.length >= 2 && all_cards.include?('A')
			all_cards.map! { |element|  
				if element == "A"
					while true
						puts "Would you like your Ace to be a 1 or an 11?"
						card = gets.chomp.to_i
							if card == 1
								break
							elsif card == 11
								break
									end

					end
						card
				else
					element
				end
			} 

	end

	if all_cards.length >= 2
		if all_cards.inject(:+) > 21
			puts "\n#{player} Busted"
			return all_cards.inject(:+)
		elsif all_cards.inject(:+) == 21
			puts "\n#{player} has 21!"
			return all_cards.inject(:+)
				end
			end
		if all_cards.length >= 2
			puts "\nWould you like to hit? press y or n"
			hit = gets.chomp.downcase
			if hit == "n"
				return all_cards.inject(:+)
			end
		end
	end
end

player1_score = 0
player2_score = 0

	# This is the beginning of the program
while true
	# Here we are calling the hand method and passing it a string, in this case "player1 or 2"
	# The parameter being passed is for the hand method so it know's which message to display
	# We are saving the answer to the hand method into the varibles player1_hand and player2_hand
	# These are the final total's for each player
	player1_hand = hand("Player 1")
	player2_hand = hand("Player 2")

	# Here we are just displaying the total's for each player
	puts "\nPlayer 1's hand #{player1_hand}"
	puts "Player 2's hand #{player2_hand}"

	# Here is just some control flow (if statements) that display's certain messages based off of the comparison between
	# Player 1's hand and Player 2's hand. We are also adding to each player's score based on who win's
	if player1_hand == player2_hand || player1_hand > 21 && player2_hand > 21
		puts "\nIt's a tie"
	elsif player1_hand > player2_hand
		# In here we have to add some extra checks because even though player 1's hand is bigger than player 2's
		# They should still lose if their hand is over 21
		if player1_hand <= 21
			puts "\nPlayer 1 win's the hand"
			player1_score += 1
		else
			puts "\nPlayer 2 win's the hand" 
			player2_score += 1
		end
	elsif player1_hand < player2_hand
		if player2_hand <= 21
			puts "\nPlayer 2 win's the hand"
			player2_score += 1
		else
			puts "\nPlayer 1 win's the hand"
			player1_score += 1
		end
	end

	# Here we are just diplaying the current score's after each play
	puts "\nPlayer 1's score: #{player1_score}"
	puts "Player 2's score: #{player2_score}"

	# We want the program to end when one of the player's have 5 win's
	if player1_score == 5
		puts "\nYou win!"
		break
	elsif player2_score == 5
		puts "\nYou Lose!"
		break
	end

	# This is just a stop so that the program doesn't just run the whole program in one shot,
	# This way it will stop after each hand and wait for you to press enter to continue
	puts "\nPress 'Enter' for next hand"
	enter = gets.chomp

	# Nifty little trick here, This actually clears your command prompt so it doesn't get cluttered. 
	# for mac user's use 'clear' instead of 'cls'
	system('cls')
end














