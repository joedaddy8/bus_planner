class AlarmController < ApplicationController

	def new
		@alarm = Alarm.new
	end

	def create
		
		@alarm = Alarm.new
		@alarm.freq = params[:alarm][:freq]
		@alarm.count = params[:alarm][:count]
		@alarm.date = DateTime.parse(params[:alarm][:year] + "/" + params[:alarm][:month] + "/" + params[:alarm][:day] + " " + params[:alarm][:hour] + ":" + params[:alarm][:minute] + ":00")
		@alarm.contact = params[:alarm][:contact]
		@alarm.network_provider = params[:alarm][:network_provider]
		@alarm.save
		Alarm.send_out_alarms
	end
end
