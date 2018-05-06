require_relative '../config'

class CLI
	
	attr_reader :windID, :tideID, :location

	def initialize (windID, tideID, location)
		@windID = windID
		@tideID = tideID
		@location = location
	end
	
	def main()
		input = nil
		puts
		puts "================================="
		puts "'Exit' will stop data collection."
		puts "================================="
		puts
		
		until (input == "exit") do
			puts "Enter 'y' to pull wind and tide measurements at the #{self.location} location."
			puts "Enter 'yd' for more detail."
			puts
			puts "The NOAA service updates every 6 minutes."
			puts

			input = gets.strip.downcase
			puts

			if input == "y"
				gwl = GetWaterLevel.new
				gwv = GetWind.new

				wl_data = gwl.pull_data
				wv_data = gwv.pull_data
				
				wl = NOAA_SOAP.most_recent(wl_data)
				wv = NOAA_SOAP.most_recent(wv_data)

				puts "At #{wv[:time_stamp]} GMT, the wind speed is #{wv[:ws]} m\/s and the wind " \
					"is from #{wv[:wd]} degrees."
				puts "Winds are gusting to ??? m\/s." if input == 'yd'
				
				
				puts
				puts "At #{wl[:time_stamp]} GMT, the tide hight is #{wl[:wl]} meters above/below sea level." \
				puts "Measurement standard deviation is ??? meters." if input == 'yd'
			end
			puts
		end
	end
end
