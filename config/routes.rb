Rails.application.routes.draw do

  root to: "home#index"
  get 'search', to:"home#search"
  
  resources :home, only: %i[index show]
  namespace :dashboard do
    get "home/index"
    resources :vacancies
  end

  devise_for :users
end
