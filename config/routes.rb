Rails.application.routes.draw do
  resources :reviews, only: [:create, :edit, :update, :destroy]
  resources :brewqueues, only: [:create,:destroy, :show]
  resources :breweries, only: [:show]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#Show and Edit Profile
get '/profile', to: 'users#profile', as: 'profile'
# get '/profile/edit', to: 'users#edit_profile', as: 'edit_profile'

get '/', to: 'searches#home', as: 'home'
# get '/results:q', to: 'searches#results'
# get '/results', to: 'searches#results'

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
post '/logout' => 'sessions#destroy'

get '/stats' => 'searches#stats'

end
