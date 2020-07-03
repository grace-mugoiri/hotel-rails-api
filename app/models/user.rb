class User < ApplicationRecord
	has_many :hotels
	has_many :favorites, dependent: :destroy

	def favorite(hotel)
		fav = Favorite.new({hotel_id:hotel.id, user:self})
		puts fav.save
	end

	def unfavorite(hotel)
		unfav = Favorite.find_by({hotel_id:hotel.id, user:self})
		unfav.destroy if unfav
	end
end
