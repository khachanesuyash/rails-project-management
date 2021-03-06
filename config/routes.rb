Rails.application.routes.draw do

  namespace :task do
    resources :comments
  end
  resources :tasks do
    resources :subtasks
  end

  resources :projects do
    resources :tasks do
    end
  end



  resources :phases
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
