class Favorite < ApplicationRecord
  belongs_to :user
	# belongs_to :hotel, counter_cache: true
	belongs_to :hotel
end
