class User < ApplicationRecord
	has_many :hotels
	has_many :favorites, dependent: :destroy
end
