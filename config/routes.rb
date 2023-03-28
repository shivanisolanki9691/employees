Rails.application.routes.draw do
  # get 'hello/index'
  root 'hello#index'
  resources :todos
  resources:students
  resources:subjects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
