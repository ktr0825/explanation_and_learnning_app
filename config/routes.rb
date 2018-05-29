Rails.application.routes.draw do
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main_pages#home'
  get '/help', to: 'main_pages#help'
  get '/signup', to: 'users#new'

  resources :users
end
