class User < ApplicationRecord
	has_many :hotels
	has_many :favorites, dependent: :destroy

	def favorite(hotel)
		# favorites.find_or_create_by(hotel: hotel)
		# fav = hotel.favorites.build({user: self})
		fav = Favorite.new({hotel_id:hotel.id, user:self})
		puts fav.save
	end

	def unfavorite(hotel)
		favorites.where(hotel: hotel).destroy_all
		hotel.reload
	end
end
