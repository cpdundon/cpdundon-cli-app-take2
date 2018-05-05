require_relative '../config'
require 'savon'
require 'time'

class GetWaterLevel
	attr_accessor :station_id
	attr_reader :client	

	def initialize(station_id=8454000)
		self.station_id = station_id
		self.create_client
	end

	def create_client
		client = Savon.client(wsdl: \
			"https://opendap.co-ops.nos.noaa.gov/axis/webservices/waterlevelrawsixmin/wsdl/WaterLevelRawSixMin.wsdl", \
				open_timeout: 30, \
				read_timeout: 30, \
				log: false, \
				follow_redirects: true)

		@client = client
		self.client
	end
	
	def pull_response
		message = {stationId: self.station_id.to_s, beginDate: gmt_less_1h, endDate: gmt_now_str, \
			datum: "MLLW", unit: 0, timeZone: 0}
		
		response = self.client.call(:get_wl_raw_six_min_and_metadata, message: message)
		response
	rescue Savon::SOAPFault => error
	    fault_code = error.to_hash[:fault][:faultcode]
	    raise CustomError, fault_code
	end

private

	def gmt_now_str
		t = Time.now.gmtime
		t.utc.strftime "%Y%m%d %H:%M"
	end

	def gmt_less_48h
		t = Time.now.gmtime - (2 * 24 * 60 * 60)
		t.utc.strftime "%Y%m%d %H:%M"			
	end
	
	def gmt_less_1h
		t = Time.now.gmtime - (60 * 60)
		t.utc.strftime "%Y%m%d %H:%M"			
	end
	
end
