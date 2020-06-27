class ApplicationController < ActionController::API
	include ActionController::Helpers

	helper_method :current_user

	private

	def current_user
		@curent_user ||= User.find(session[:user_id]) if session[:user_id]
	end
end
