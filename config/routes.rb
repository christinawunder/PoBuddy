Rails.application.routes.draw do
  get 'links/show'
  devise_for :users
  root to: 'days#index'
  resources :days do
    resources :advices, only: :index
  end
end
