class Seller < ActiveRecord::Base
	dragonfly_accessor :qr_code
	belongs_to :user
	has_many :buyers
	# validates_acceptance_of :tos, :acceptance => true
	#validates :bank_name, :credname, :seller_account_number,
	#        :sell_amount, :minsell_amount, :seller_email,
	#          :deletepin, :currency, presence: true, on: :create
  #validates_confirmation_of :seller_account_number, :seller_email
  #validates_numericality_of :seller_account_number, :sell_amount,
   #                         :minsell_amount, :deletepin, on: :create
	# before_save :bitcoin_address_generate

	# def bitcoin_address_generate
  #    key = Bitcoin::generate_key
  #    #binding.pry	
  #    self.bit_address = Bitcoin::pubkey_to_address(key[1])
  #    self.save
	# end

end
