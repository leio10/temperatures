Rails.application.routes.draw do
  namespace :api do
    resources :measurements, only: [:index, :create]
  end
end
