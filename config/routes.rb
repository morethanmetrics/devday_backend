Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # 2. Ensure you have defined root_url to *something* in your config/routes.rb.
  #  For example:
  #     root to: "home#index" # bin/rails generate controller Home index
  devise_scope :user do
    #root :to => "devise/sessions#new"
    authenticated :user do
      root 'devise/registrations#edit', as: :authenticated_root
      #root 'home#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :organizations, :only => [:index, :show]

  root :to => 'devise/sessions#new'
  #root to: "home#index"

end
