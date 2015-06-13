class Listing < ActiveRecord::Base
validates :currency, :bank, :price, :min, :max, presence: true
validates :price,:min, :max, numericality: {greater_than: 0}

end
