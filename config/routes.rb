Rails.application.routes.draw do
  resources :site_configurations, only: [:new, :create]

  root "site_configurations#new"
end
