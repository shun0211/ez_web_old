Rails.application.routes.draw do
  # For health check
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "home#index"

  namespace :membership do
    resources :topics, only: [:index]
  end
end
