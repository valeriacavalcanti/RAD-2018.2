Rails.application.routes.draw do
  resources :students
  get 'home/index'
  resources :registrations
  resources :courses

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
