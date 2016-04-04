class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  apply_simple_captcha
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  validates :name, presence: :true
  has_many :listings, dependent: :destroy
  has_many :sellers, dependent: :destroy
  has_many :buyers, dependent: :destroy
  has_many :items
	def self.find_for_oauth(auth)
	  where(auth.slice(:provider, :uid)).first_or_create do |user|
	    user.provider = auth.provider
	    user.uid = auth.uid
	    user.email = auth.info.email
	    user.name = auth.info.name
	    user.create_credentials! :user => user, :credentials => auth.credentials
	  end
	end

	def forem_name
	  email
	end

	def forem_email
	  #email_address
	end
end
