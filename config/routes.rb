Rails.application.routes.draw do
  # For health check
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "home#index"

  namespace :membership do
    resources :topics, only: [:index]
    resources :confirmation_questions, only: [:index]
    resources :confirmation_answers, only: [:create]
    post 'confirmation_answers/bulk_update', to: 'confirmation_answers#bulk_update'
    resources :questions
  end
  resources :questions
end
