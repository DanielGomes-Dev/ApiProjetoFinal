Rails.application.routes.draw do
  resources :subscriptions
  put '/students' ,to: 'students#update'
  resources :coordinators
  resources :relation_course_and_subjects
  resources :departments
  resources :workers
  resources :courses
  resources :grades
  resources :school_years
  resources :students
  resources :classrooms
  resources :subjects
  resources :professors
  resources :users

  post '/login' ,to: 'authentication#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
