Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get '/', to: 'searches#home', as: 'home'
# get '/results:q', to: 'searches#results'
# get '/results', to: 'searches#results'

end
