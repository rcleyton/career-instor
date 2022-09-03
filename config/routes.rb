Rails.application.routes.draw do

  root to: "vacancies#index"

  namespace :dashboard do
    get "home/index"
  end

  devise_for :users
end
