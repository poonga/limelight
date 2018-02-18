Rails.application.routes.draw do
  resources :companies, only: [:edit, :update, :show] do
    resources :users, only: [:edit, :update, :show]
    resources :teams
    resources :locations
    resources :job_postings
  end

  resources :job_postings, only: [] do
    resources :applicants
  end

  # authentication
  get 'login', to: redirect('/auth/google_oauth2')
  get 'logout', to: 'sessions#revoke'
  get 'auth/:provider/callback', to: 'sessions#auth'
  get 'auth/failure', to: redirect('/')
  get 'authentication', to: 'static_pages#authentication'

  scope via: :all do
    match '/400', to: 'errors#bad_request'
    match '/404', to: 'errors#not_found'
    match '/406', to: 'errors#unknown_format'
    match '/422', to: 'errors#unprocessable_entity'
    match '/500', to: 'errors#internal_server_error'
  end

  root 'static_pages#landing'
end
