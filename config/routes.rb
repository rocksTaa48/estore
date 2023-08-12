Rails.application.routes.draw do
  root "pages#index"
  resources :items
  resources :categories

end
