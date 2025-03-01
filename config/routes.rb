Rails.application.routes.draw do
  # Define resourceful routes for products (index and show)
  resources :products, only: [:index, :show]

  # Define a health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Set the root path to the products index page
  root "products#index"
end
