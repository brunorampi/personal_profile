Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'pages#index'


get '/topics/search', to: 'topics#search'

get '/contact', to: 'contacts#index'

get '/topics/new', to: 'topics#new'

post '/topics/new', to: 'topics#new'

end
