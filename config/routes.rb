# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  get 'dashboard/index'

  devise_for :users
  root to: "dashboard#index"

  resources :attdata
  resources :contracts
  resources :personnels
  resources :rateables
  resources :seasons
  resources :positions

end
