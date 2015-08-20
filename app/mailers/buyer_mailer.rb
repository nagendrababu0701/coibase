class BuyerMailer < ApplicationMailer
	default from: "rordeveloper@outlook.com"
  def buyer_email(buyer, seller)
    @seller = seller
    @buyer = buyer
    mail(to: buyer.email, subject: "Buy Your BitCoins Today")
  end
end
