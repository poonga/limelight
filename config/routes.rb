Rails.application.routes.draw do
  resources :locations
  resources :applicants
  resources :job_postings
  resources :users
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#landing'
end
