Tutorme::Application.routes.draw do

  root to: 'profiles#index'

  resources :profiles

  devise_for :users
end
