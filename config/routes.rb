Rails.application.routes.draw do
  root 'courses#index'
  resources :courses, only: [:index]
  resources :students, only: %i[index show new edit]
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  devise_for :students, except: [:destroy]
end
