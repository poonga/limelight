Rails.application.routes.draw do
  resources :locations
  resources :applicants
  resources :job_postings
  resources :users
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'home', to: 'static_pages#landing'
  get 'authentication', to: 'static_pages#authentication'
  root 'static_pages#landing'
end
