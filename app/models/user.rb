class User < ApplicationRecord
	has_many :hotels
	has_many :favorites, dependent: :destroy

	def favorite(hotel)
		favorites.find_or_create_by(hotel: hotel)
	end

	def unfavorite(hotel)
		favorites.where(hotel: hotel).destroy_all
		article.reload
	end
end
