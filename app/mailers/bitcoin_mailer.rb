class BitcoinMailer < ApplicationMailer
  default from: "coincompass2016@outlook.com"
  def send_email_user(email,seller)
		@seller = seller
		attachments.inline['missing.png'] = File.read(File.join(Rails.root, 'app', 'assets', 'images', 'missing.png'))
		mail(to: email,subject: "You are about to sell your bitcoins")
	end
end
