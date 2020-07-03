class FavoritesController < ApplicationController
	before_action :find_hotel!
	# before_action :authenticate_user!

	def create
		un_authenticated_user.favorite(@hotel)
		puts @hotel
		# render 'hotels/show'
	end

	def destroy
		current_user.unfavorite(@hotel)
		render 'hotels/show'
	end

	private

	def un_authenticated_user
		User.find_by_id(params[:user_id])
	end

	def find_hotel!
		# @hotel = Hotel.find_by_slug!(params[:hotel_slug])
		@hotel = Hotel.find_by_id(params[:hotel_id])
	end
end


