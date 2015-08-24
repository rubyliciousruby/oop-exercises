class Rover
	DIRECTIONS = ["N", "E", "S", "W"]

	def initialize(x, y, direction)
		@x = x
		@y = y
		@dir = direction
		@current_facing = DIRECTIONS.index(@dir)
	end

	def read_instruction(instruction)
		if instruction == "L"
			turn_left
		elsif instruction == "R"
			turn_right
		elsif instruction == "M"
			move
		end
	end

	def turn_left
		if @dir == "N"
			@dir = "W"
		elsif @dir == "W"
			@dir = "S"
		elsif @dir == "S"
			@dir = "E"
		elsif @dir == "E"
			@dir = "N"
		end
	end

	def turn_right
		if @dir == "N"
			@dir = "E"
		elsif @dir == "E"
			@dir = "S"
		elsif @dir == "S"
			@dir = "W"
		elsif @dir == "W"
			@dir = "N"
		end
	end

	def move
		if @dir == "N"
			@x += 1
		elsif @dir == "W"
			@y -= 1
		elsif @dir == "S"
			@x -= 1
		elsif @dir == "E"
			@y += 1
		end
	end


end


puts "What's the plateau size?"
plateau = gets.chomp.split.map { |x| 5.to_i }
puts plateau.inspect

# puts "Enter the plateau size, not the sandman:"
# plateau1 = gets.chomp
# puts "[5,5]"

puts "Enter initial coordinates and direction:"
initial_coord = gets.chomp.split

x = initial_coord[0].to_i
y = initial_coord[1].to_i
direction = initial_coord[2]

rover1 = Rover.new(x, y, direction)
rover2 = Rover.new(x, y, direction)

puts "Enter a string of commands"
commands = gets.chomp.split ("")
puts commands.inspect

commands.each do |command|
	rover1.read_instruction(command)
	puts rover1.inspect
end

puts "Second pair of Rovers, what are your commands? First Rover, go first:"
commands = gets.chomp.split ("")
puts commands.inspect

commands.each do |command|
	rover1.read_instruction(command)
	puts rover1.inspect
end

puts "Second Rover, now it's your turn."
commands = gets.chomp.split ("")
puts commands.inspect


commands.each do |command|
	rover2.read_instruction(command)
	puts rover2.inspect
end

puts "Now that the first bot is done, the second pair of rovers can go ahead. Rover A, it's your turn."
commands = gets.chomp.split ("")
puts commands.inspect

commands.each do |command|
	rover1.read_instruction(command)
	puts rover1.inspect

	end

	puts "Okay rover 2 b, it's your turn to give me coordinates."
	commands = gets.chomp.split ("")
	puts commands.inspect

	commands.each do |command|
	rover2.read_instruction(command)
	puts rover2.inspect

end














