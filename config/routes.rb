Rails.application.routes.draw do
  resources :brewqueues
  resources :breweries
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#when logged in will give the user their show page
get '/profile/:id', to: 'users#profile', as: 'profile'

get '/', to: 'searches#home', as: 'home'
# get '/results:q', to: 'searches#results'
# get '/results', to: 'searches#results'

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
post '/logout' => 'sessions#destroy'

end
