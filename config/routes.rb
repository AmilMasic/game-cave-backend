Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :games
      resources :publishers do
        resources :games
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
