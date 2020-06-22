class FavoritesController < ApplicationController

	def create
		current_user.favorite(@hotel)
		render 'hotels/show'
	end

	def destroy
		current_user.unfavorite(@hotel)
		render 'hotels/show'
	end
	
	private
	def find_hotel!
		@hotel = Hotel.find_by_slug!(params[:hotel_slug])
	end
end


