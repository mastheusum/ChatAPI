Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "chat/send_content"
      get "chat/receive_content"
      get "chat/channels_list"

      post "session/create"
      delete "session/destroy"

      post "user/create"
      put "user/update"
      delete "user/destroy"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
