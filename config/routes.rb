Rails.application.routes.draw do
  get 'jobs/index' => 'jobs#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "jobs#index"

  resources :jobs, only: [:index, :show]
  resources :employers
end
