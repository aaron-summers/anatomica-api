Rails.application.routes.draw do
  namespace :api do
    resources :users, only: [:create, :show, :index]
    resources :quizzes
    resources :categories
    resources :questions
    resources :options
    post '/login', to: 'auth#create'
    get '/validate', to: 'auth#validate_token'
  end
end
