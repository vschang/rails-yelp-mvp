Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[index show new create]
  resources :restaurants do
    resources :reviews, only: %i[show new create]
  end
end
