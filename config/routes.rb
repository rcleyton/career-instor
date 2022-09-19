Rails.application.routes.draw do

  root "vacancies#index"
  
  resources :vacancies, only: %i[index show]

  namespace :dashboard do
    get "home/index"
    resources :vacancies
  end

  devise_for :users
end
