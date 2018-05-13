Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/api/events', to: 'events#show'
  post '/api/event', to: 'events#create'
  delete '/api/event/:id', to: 'events#destroy'
  put '/api/event/:id', to: 'events#update'
end
