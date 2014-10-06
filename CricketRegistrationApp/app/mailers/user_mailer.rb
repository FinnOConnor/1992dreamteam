class UserMailer < ActionMailer::Base
	def email_one(entity, subject, content)
		mail(to: entity.email, body: content, content_type: "text/html", subject: subject)
	end
end
