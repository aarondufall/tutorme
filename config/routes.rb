Tutorme::Application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  root to: 'static_pages#home'

  resources :profiles

end
