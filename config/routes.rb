Rails.application.routes.draw do

  root 'admins#index'

  resources :admins do
    resources :answers, only: [:new, :index, :create, :show]
  end
  
end
