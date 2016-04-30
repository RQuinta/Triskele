class Mailer

	require 'sendgrid-ruby'

	API_KEY = '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'
	FROM = 'no-reply@triskele.me'

	def build_email
		SendGrid::Mail.new()
	end

	def create_recipient(recipient_hash)
		recipient = SendGrid::Recipient.new(recipient.email)
		recipients = []
		recipient_hash.each do |key, value|
  			recipient.add_substitution(key, value)
  		end
  		return recipient
	end

	def send(subject, template, recipients)
		mail_defaults = {
  			from: FROM,
  			subject: subject
		}
		mailer = SendGrid::TemplateMailer.new(client, template, recipients)
		mailer.mail(mail_defaults)
	end

end

