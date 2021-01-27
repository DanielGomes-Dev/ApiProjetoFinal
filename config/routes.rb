Rails.application.routes.draw do
  resources :classrooms
  resources :subjects
  resources :professors
  resources :users
  post '/login' ,to: 'authentication#login'
  post '/register',to: 'authentication#register'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
