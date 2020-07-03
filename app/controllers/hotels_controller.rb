class HotelsController < ApplicationController
	

	def index
		@hotels = Hotel.all
		render json: @hotels
	end

	def show
		render json: @hotel
	end

	def create
		@hotel = Hotel.new(hotel_params)
		if @hotel.save
			render json: @hotel
		else
			render error: { error: 'Unable to create hotel!'}, status: 400
		end
	end

	def update
		@hotel = Hotel.find(params[:id])
		if @hotel
			@hotel.update(hotel_params)
			render json: { messages: 'Hotel successfully updated.'}, status: 200
		else
			render json: {error: 'Unable to update hotel.'}, status: 400
		end
	end

	def destroy
		@hotel = Hotel.find(params[:id])
		if @hotel
			@hotel.destroy
			render json: {messages: 'Hotel successfully deleted'}, status: 200
		else
			render json: {error: 'Unable to delete hotel!'}, status: 400
		end
	end

	private
	def hotel_params
		params.require(:hotel).permit(:rooms, :bedrooms, :roomservice, :favCount, :user_id)
	end

end
