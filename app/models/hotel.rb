class Hotel < ApplicationRecord
	belongs_to :user
	has_many :favorites
	# scope :favorited_by, -> (username) {joins(:favorites).where(favorites: { user: User.where(username: username) }) }

end
