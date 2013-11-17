Tutorme::Application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  root to: 'profiles#index'

  resources :profiles

end
