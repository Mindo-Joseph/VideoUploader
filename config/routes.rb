Rails.application.routes.draw do
  resources :lesson_videos
  root to: 'lessons#index'
  resources :lessons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
