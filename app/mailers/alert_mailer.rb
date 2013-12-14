class AlertMailer < ActionMailer::Base
  default from: "btalertsdaemon@gmail.com"

  def send_alert(alert)
  	
  	mail(to: "4135750879@vtext.com", subject: "Alert", body: "You're Bus is Arriving Soon")
  end
end
