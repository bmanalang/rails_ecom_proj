Rails.application.routes.draw do

  get 'categories/index'

  resources :about, :categories, :cupcakes, only: [:index, :show]
  root to: 'cupcakes#index'

  get 'abouts', to: 'about#index', as: 'about_page'
  get 'search', to: 'search#index', as: 'search'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
