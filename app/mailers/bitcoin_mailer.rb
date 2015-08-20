class BitcoinMailer < ApplicationMailer
  default from: "rordeveloper@outlook.com"
  def send_email_user(email,seller)
		@seller = seller
		attachments.inline['missing.png'] = File.read(File.join(Rails.root, 'app', 'assets', 'images', 'missing.png'))
		mail(to: email,subject: "Test welcome email")
	end
end
