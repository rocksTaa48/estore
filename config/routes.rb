Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  root "pages#index"
  resources :categories
  resources :items
  namespace :profile do
    resources :users, only: %i[show], param: :id
  end

end
