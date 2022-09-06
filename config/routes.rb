Rails.application.routes.draw do

  root to: "home#index"

  namespace :dashboard do
    get "home/index"
    resources :vacancies
  end

  devise_for :users
end
