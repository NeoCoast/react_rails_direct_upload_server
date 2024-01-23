Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  post 'rails/active_storage/direct_uploads', to: 'overrides/direct_uploads#create'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts, only: %i[index create ]
    end
  end
end
