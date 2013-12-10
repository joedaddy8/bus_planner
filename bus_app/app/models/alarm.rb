class Alarm < ActiveRecord::Base

	attr_accessor :month, :day, :year, :hour, :minute
	NETWORK_PROVIDERS = ["Verizon", "Sprint", "T-Mobile", "AT&T"]
	FREQUENCIES = ["Once", "Weekly", "Bi-Weekly", "Monthly", "Bi-Monthly"]

	def self.send_out_alarms
		alarms = Alarm.where(date: Time.now.beginning_of_minute-5.hours-1.second..Time.now.end_of_minute-5.hours).all
		alarms.each {|a| AlertMailer.send_alert(a).deliver}
	end
end
