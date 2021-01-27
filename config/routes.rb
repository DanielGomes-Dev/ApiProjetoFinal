Rails.application.routes.draw do
  resources :courses
  resources :grades
  resources :school_years
  resources :students
  resources :classrooms
  resources :subjects
  resources :professors
  resources :users
  post '/login' ,to: 'authentication#login'
  post '/register',to: 'authentication#register_student'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
