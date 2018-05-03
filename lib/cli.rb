class CLI
	
	attr_reader :windID, :tideID

	def initialize (windID, tideID)
		@windID = windID
		@tideID = tideID
	end
	
	def main()
		input = nil
		puts "'Exit' will stop the program."
		do until (input = "exit")
			puts "Are you ready for the most recent wind and tide measurement? (y/n)"
			input = gets.strip.downcase
			puts "At HH:MM:SS EST on 03-May-2018, the wind speed is 10 knots and the wind " \
				"angle is 180 degrees."  if input == "y"
			puts "At HH:MM:SS EST on 03-May-2018, the tide hight is 4 feet above sea level." \
				if input == "y"
		end
	end
end
