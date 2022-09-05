Rails.application.routes.draw do

  root to: "vacancies#index"

  namespace :dashboard do
    get "home/index"
    resources :vacancies, only: %i[ index show new create  ]
  end

  devise_for :users
end
