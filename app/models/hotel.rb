class Hotel < ApplicationRecord
	belongs_to :user
	before_create :set_slug
	has_many :favorites, dependent: :destroy
	scope :favorited_by, -> (username) {joins(:favorites).where(favorites: { user: User.where(username: username) }) }

	private
	def set_slug
		loop do
			self.slug = SecureRandom.uuid
			break unless Hotel.where(slug: slug).exists?
		end
	end
end
