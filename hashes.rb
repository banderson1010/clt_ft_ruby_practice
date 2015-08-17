# hash is unordered and has key value pairs
# arrays are ordered

# hash = {}

# #These are examples of different ways to write hashes

# #first one is good for forum entries
# #example to get input for name
# # gender = gets.chomp
# # hash["gender"] = gender

# hash["name"] = "Tracey"
# hash["age"] = 22

# # this is good if you already know the answers
# my_hash = {"name" => "Tracey", "age" => 22}
# #use this one not the one below
# another_hash = {:name => "Tracey", :age => 22}

# yet_another_hash = {name: "Tracey", age: 22}

# # just name is....
# # puts hash["Tracey"]

# #this is the each.do loop
# # hash.each do |key, value|
# # 	puts "They key is #{key} and the value is #{value}"
# # end


# puts "Please enter a new name"
# answer = gets
# hash["name"] = answer
# puts hash["name"]

#or call for a new key dynamically 

# puts "Please enter a new key"
# new_key = gets.chomp
# puts "Please enter a value for the key"
# answer = gets.chomp
# hash[new_key] = answer
# puts hash[new_key]
#puts hash


# .each do example
# hash.each do |key, value|
# 	if hash[key] == "Tracey"
# 		puts "Hey Tracey"
# end
# end


#create a inventory list

# car_inventory = {"mustang" => 4, "Tesla S" => 2, "Prius" =>35}

# puts "Press 1 to check inventory"
# puts "Press 2 to edit inventory"
# puts "Press 3 to add new item to inventory"

# answer = gets.chomp

# if answer == "1"
# 	puts car_inventory
# elsif  answer == "2"
# 	puts "What inventory item would you like to edit?"
# 	puts car_inventory.keys
# 		edit_answer = gets.chomp
# 		car_inventory.each do |key, value|
# 			if edit_answer != key
# 				puts "That is not a valid entry"
# 			else
# 					puts "How many do you have?"
# 					count = gets.to_i
# 					car_inventory[edit_answer] = count
# 					puts car_inventory
# 				break
# 			end
# 		end
	
# 		elsif answer == "3"
# 			puts "Please enter a new car"
# 			new_key = gets.chomp
# 			puts "PLease enter how many you have"
# 			count = gets.to_i
# 			car_inventory[new_key] = count
# 			puts car_inventory



# end



my_inventory = {}

def add_vehicle(my_inventory, vehicle, stock)
	if my_inventory.has_key?(vehicle) == 
		false
		my_inventory[vehicle] = stock
	else
		puts "Sorry, that item is already in your inventory"
	end
end

def inventory_edit(my_inventory,vehicle)
	if my_inventory.has_key?(vehicle)
		count = my_inventory[vehicle]

		puts "\n Previous number of #{vehicle.capitalize}'s in stock were #{count}"
		puts "Did you sell or buy any #{vehicle.capitalize}'s \n 1. Sell \n 2. Buy"
		choice = gets.chomp
	while choice != "1" && choice != "2"
		puts "Please enter either 1 for sell or 2 for buy"
		choice = get.chomp
		end
case choice
	when "1"
		puts "PLease enter how many you sold:"
		sold = gets.chomp.to_i
		while sold  > count.to_i
			puts "You only have #{count} #{vehicle.capitalize}'s please enter correct number you sold:"
			sold = gets.chomp.to_i
		end
		count = count.to_i - sold
		my_inventory[vehicle] = count
	when "2"
		puts "Please enter how many you bought:"
		bought = gets.chomp.to_i
		count = count.to_i + bought
		my_inventory[vehicle] = count
	end

	if count > 1
		puts "There are now #{count} #{vehicle.capitalize}'s in inventory. \n"
	else
		puts "There is now #{count} #{vehicle.capitalize} in inventory. \n"
end

	else
		puts "Sorry, you did not choose an item in your inventory"
	end
end

def hash_list(my_inventory)
	counter = 0
	my_inventory.each do |key, value|
		counter += 1
		if value.to_i >1
			puts "\n#{counter}. There are #{value} #{key.capitalize}'s in inventory.\n"
		else
			puts "\n.#{counter}. There is #{value} #{key.capitalize} in inventory. \n"
		end
	end

		
end
	
puts "lot Inventory Tracker"
puts "PLease add a vehicle:"
vehicle = gets.chomp
puts "Please enter how many you have in stock:"
stock = gets.chomp.to_i

add_vehicle(my_inventory, vehicle, stock)

while true
	puts "\nPlease select an option:"
	puts "1. Add New vehicle"
	puts "2. Edit Inventory"
	puts "3. Check Inventory"
	puts "Enter 'Exit' to leave inventory manager\n"
choice = gets.chomp
case choice
when "1"
	puts "PLease enter name of vehicle"
	vehicle = gets.chomp.downcase
	puts "PLease enter how many you have in stock:"
	stock = gets.chomp.to.i
	add_vehicle(my_inventory, vehicle, stock)

	when "2"
		puts my_inventory.keys
		puts "PLease enter a new vehicle to edit"
		vehicle = gets.chomp.downcase
		inventory_edit(my_inventory,vehicle)
	when "3"
		hash_list(my_inventory)
	when "Exit", "exit"
		break
				
end

end

































