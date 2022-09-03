Rails.application.routes.draw do

  root to: "vacancies#index"

  devise_for :users
end
