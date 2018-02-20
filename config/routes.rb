Rails.application.routes.draw do

  get '/login' =>  'sessions#new'
  post '/login' => 'sessions#create'

  get '/candidates' => 'candidates#index'
  get '/candidates/new' => 'candidates#new'
  get '/candidates/:id/edit' => 'candidates#edit'
  post '/candidates' => 'candidates#create'
  put '/candidates/:id' => 'candidates#update'

  get '*unmatched_route', to: 'application#route_not_found'
end
