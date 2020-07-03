class FavoritesController < ApplicationController
	before_action :find_hotel!

	def create
		un_authenticated_user.favorite(@hotel)
		puts @hotel
	end

	def destroy
		hotel = Hotel.find_by_id(params[:id])
		un_authenticated_user.unfavorite(hotel)
	end

	private

	def un_authenticated_user
		User.first
	end

	def find_hotel!
		@hotel = Hotel.find_by_id(params[:hotel_id])
	end
end


