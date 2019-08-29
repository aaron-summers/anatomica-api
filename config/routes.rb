Rails.application.routes.draw do
  namespace :api do
    resources :users, only: [:create, :show, :index]
    post '/login', to: 'auth#create'
    get '/validate', to: 'auth#validate_token'
  end
end
