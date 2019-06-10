Rails.application.routes.draw do
  get 'links/show'
  devise_for :users, controller: {
    sessions: 'users/sessions'
  }
  root to: 'days#index'
  resources :days, except: :index do
    resources :advices, only: :index
  end
end
