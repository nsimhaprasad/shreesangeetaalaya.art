Rails.application.routes.draw do
  devise_for :users

  # Public routes
  root "home#index"
  get "about", to: "home#about"
  get "courses", to: "home#courses"
  get "contact", to: "home#contact"
  post "contact", to: "home#create_contact"

  # Admin routes (accessible via admin.shreesangeetaalaya.art subdomain or /admin path)
  constraints subdomain: 'admin' do
    namespace :admin do
      root "dashboard#index"
      get "dashboard", to: "dashboard#index"
      resources :students
      resources :courses
      resources :enrollments
      resources :payments
    end
  end

  # Admin routes for development (accessible via /admin path)
  namespace :admin do
    root "dashboard#index"
    get "dashboard", to: "dashboard#index"
    resources :students
    resources :courses
    resources :enrollments
    resources :payments
  end

  # Payment webhooks
  namespace :api do
    namespace :v1 do
      post "phonepe/webhook", to: "payments#phonepe_webhook"
    end
  end

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check
end
