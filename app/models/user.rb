class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  apply_simple_captcha
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: :true
  has_many :listings, dependent: :destroy
  has_many :sellers, dependent: :destroy



end
