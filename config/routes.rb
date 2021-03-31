Rails.application.routes.draw do
  root to: 'lessons#index'
  resources :lessons
  resources :videos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
