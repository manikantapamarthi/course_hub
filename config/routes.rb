Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  
  namespace :admin do
    resource :users
    resources :courses
    get '/dashboard', to: "dashboard#index"
    post "assign_instructor", to: "courses#assign_instructor"
  end
  
  get "students", to: "students#index"

  post "create_enrollment", to: "enrollments#create_enrollment"

  get "instructors", to: "instructors#welcome"
end
