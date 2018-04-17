Rails.application.routes.draw do
  resources :companies, only: [:edit, :update, :show, :stats] do
    get 'stats'
    resources :users, only: [:edit, :update, :show, :destroy]
    resources :teams
    resources :locations
    resources :job_postings
  end

  resources :job_postings, only: [] do
    resources :applicants do
      get :thank_you
    end
  end

  # authentication
  get 'login', to: redirect('/auth/google_oauth2')
  get 'logout', to: 'sessions#revoke'
  get 'auth/:provider/callback', to: 'sessions#auth'
  get 'auth/failure', to: redirect('/')
  get 'authentication', to: 'static_pages#authentication'
  get 'pricing', to: 'static_pages#pricing'
  get 'contact_us',to: 'static_pages#contact_us'
  get 'about_us',to: 'static_pages#about_us'
  post'contact_us',to: 'static_pages#contact_us_confirmation'
  get 'services',to: 'static_pages#services'
  get 'landing',to:'static_pages#landing'
  root 'static_pages#landing'
end
