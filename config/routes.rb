Rails.application.routes.draw do
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	resources :users, only: [:create, :show, :index, :delete]
	resources :hotels, param: :slug, except: [:edit, :new] do
		resources :favorites, only: [:create, :destroy]
	end
	# resources :favorites, only: [:created, :destroy]
	resources :sessions, only: [:create]
	resources :registrations, only: [:create]
	delete :logout, to: "sessions#logout"
	get :logged_in, to: "sessions#logged_in"
end
