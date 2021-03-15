Rails.application.routes.draw do
  devise_for :tenants, controllers: {
    sessions:      'tenants/sessions',
    passwords:     'tenants/passwords',
    registrations: 'tenants/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  root to: "shops#index" 
  resources :shops, only: [:index]
end
