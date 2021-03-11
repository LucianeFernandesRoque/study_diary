Rails.application.routes.draw do
  get "study_items/search", to: "study_items#search"
  root to: 'study_items#index'
  resources :study_items do
  resources :comments
  post 'check', on: :member
  end
  resources :categories
end
