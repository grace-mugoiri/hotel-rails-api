class Hotel < ApplicationRecord
	belongs_to :user
	has_many :favorites
end
